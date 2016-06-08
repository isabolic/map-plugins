--------------------------------------------------------
--  DDL for Package APEX_PLUGIN_PKG
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "PLAYGROUND"."APEX_PLUGIN_PKG" 
as
function f_is_playground return boolean;

function MAPBOX_MAP_RENDER (
    p_region              in apex_plugin.t_region,
    p_plugin              in apex_plugin.t_plugin,
    p_is_printer_friendly in boolean )
    return apex_plugin.t_region_render_result;  

function MAPBOX_ZOOM_TO_ADAPTER_RENDER (
    p_dynamic_action      in apex_plugin.t_dynamic_action,
    p_plugin              in apex_plugin.t_plugin)
    return apex_plugin.t_dynamic_action_render_result;

function MAPBOX_INCLUDE (
    p_item                in apex_plugin.t_page_item,
    p_plugin              in apex_plugin.t_plugin,
    p_value               in varchar2,
    p_is_readonly         in boolean,
    p_is_printer_friendly in boolean )
    return apex_plugin.t_page_item_render_result;
end apex_plugin_pkg;

/
