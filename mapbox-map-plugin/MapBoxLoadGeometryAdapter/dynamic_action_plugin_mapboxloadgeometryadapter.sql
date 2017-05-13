set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>999999
,p_default_application_id=>100
,p_default_owner=>'PLAYGROUND'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/mapboxloadgeometryadapter
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(8966021210298693)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'MAPBOXLOADGEOMETRYADAPTER'
,p_display_name=>'MapBoxLoadGeometryAdapter'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_render_function=>'ax_plg_mapbox.mapbox_loadgeom_adapter_render'
,p_ajax_function=>'ax_plg_mapbox.mapbox_loadgeom_adapter_ajax'
,p_standard_attributes=>'ITEM:BUTTON:REGION:JQUERY_SELECTOR:ONLOAD:STOP_EXECUTION_ON_ERROR:WAIT_FOR_RESULT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://apex.oracle.com/pls/apex/f?p=101959:6:'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(8966781050347202)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Map region static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(8967680774359718)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Apex item with column id'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_default_value=>'rowid'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(8970076550015077)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Geometry style JSON object'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'{}'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(8971517793099712)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Zoom to geometry'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(9001523938246166)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Geometry table owner'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_text_case=>'UPPER'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(9002279978247305)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Geometry table name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_text_case=>'UPPER'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(9004173469252868)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Geometry column name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(9016814466190877)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Table column id'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(9021969760633533)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Column is already geojson format'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A0A202A205B6372656174656420627920697361626F6C6963207361626F6C69632E6976616E40676D61696C2E636F6D5D0A202A2F0A2866756E6374696F6E28242C207829207B0A20202020766172206F7074696F6E73203D207B0A202020202020';
wwv_flow_api.g_varchar2_table(2) := '20206D6170526567696F6E4964203A206E756C6C2C0A2020202020202020617065784974656D202020203A206E756C6C2C0A20202020202020207374796C65202020202020203A206E756C6C2C0A20202020202020207A6F6F6D546F2020202020203A20';
wwv_flow_api.g_varchar2_table(3) := '66616C73650A202020207D3B0A0A202020202F2A2A0A20202020202A205B784465627567202D20505249564154452066756E6374696F6E20666F722064656275675D0A20202020202A2040706172616D2020737472696E6720202066756E6374696F6E4E';
wwv_flow_api.g_varchar2_table(4) := '616D65202063616C6C65722066756E6374696F6E0A20202020202A2040706172616D2020617272617920202020706172616D73202020202020202063616C6C657220617267756D656E74730A20202020202A2F0A2020202076617220784465627567203D';
wwv_flow_api.g_varchar2_table(5) := '2066756E6374696F6E2866756E6374696F6E4E616D652C20706172616D73297B0A2020202020202020782E646562756728746869732E6A734E616D65207C7C2022202D2022207C7C2066756E6374696F6E4E616D652C20706172616D732C207468697329';
wwv_flow_api.g_varchar2_table(6) := '3B0A202020207D3B0A0A202020202F2A2A0A20202020202A205B747269676765724576656E7420202020202D20505249564154452068616E646C657220666E202D20747269676765722061706578206576656E74735D0A20202020202A2040706172616D';
wwv_flow_api.g_varchar2_table(7) := '20537472696E6720657674202D2061706578206576656E74206E616D6520746F20747269676765720A20202020202A2F0A2020202076617220747269676765724576656E74203D2066756E6374696F6E286576742C206576744461746129207B0A202020';
wwv_flow_api.g_varchar2_table(8) := '20202020207844656275672E63616C6C28746869732C20617267756D656E74732E63616C6C65652E6E616D652C20617267756D656E7473293B0A2020202020202020746869732E636F6E7461696E65722E74726967676572286576742C205B6576744461';
wwv_flow_api.g_varchar2_table(9) := '74615D293B0A2020202020202020242874686973292E7472696767657228657674202B20222E22202B20746869732E617065786E616D652C205B657674446174615D293B0A202020207D3B0A0A20202020617065782E706C7567696E732E6D6170626F78';
wwv_flow_api.g_varchar2_table(10) := '2E4D6170426F784C6F616447656F6D6574727941646170746572203D2066756E6374696F6E286F70747329207B0A2020202020202020746869732E726567696F6E202020203D206E756C6C3B0A2020202020202020746869732E617065786E616D652020';
wwv_flow_api.g_varchar2_table(11) := '3D20224D4150424F584C4F414447454F4D4554525941444150544552223B0A2020202020202020746869732E6D6170426F784D6170203D206E756C6C3B0A2020202020202020746869732E6A734E616D65202020203D2022617065782E706C7567696E73';
wwv_flow_api.g_varchar2_table(12) := '2E4D6170426F784C6F616447656F6D6574727941646170746572223B0A2020202020202020746869732E246974656D73202020203D207B0A202020202020202020202020617065784974656D203A206E756C6C0A20202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(13) := '2020746869732E696E6974203D2066756E6374696F6E2829207B0A0A20202020202020202020202069662028242E6973506C61696E4F626A656374286F7074696F6E732929207B0A20202020202020202020202020202020746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(14) := '203D20242E657874656E6428747275652C207B7D2C20746869732E6F7074696F6E732C206F7074696F6E732C206F707473293B0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020207468726F7720746869732E';
wwv_flow_api.g_varchar2_table(15) := '6A734E616D65202B20223A20496E76616C6964206F7074696F6E73207061737365642E223B0A2020202020202020202020207D0A0A20202020202020202020202069662028746869732E6F7074696F6E732E6D6170526567696F6E4964203D3D3D206E75';
wwv_flow_api.g_varchar2_table(16) := '6C6C29207B0A202020202020202020202020202020207468726F7720746869732E6A734E616D65202B20223A206D6170526567696F6E49642069732072657175697265642E223B0A2020202020202020202020207D0A0A20202020202020202020202074';
wwv_flow_api.g_varchar2_table(17) := '6869732E726567696F6E203D202428222322202B20746869732E6F7074696F6E732E6D6170526567696F6E4964293B0A0A20202020202020202020202069662028746869732E726567696F6E2E6C656E67746820213D3D203129207B0A20202020202020';
wwv_flow_api.g_varchar2_table(18) := '2020202020202020207468726F7720746869732E6A734E616D65202B20223A20496E76616C696420726567696F6E2073656C6563746F722E223B0A2020202020202020202020207D0A0A202020202020202020202020746869732E6D6170426F784D6170';
wwv_flow_api.g_varchar2_table(19) := '203D20746869732E726567696F6E2E6461746128226D6170626F78526567696F6E22293B0A0A20202020202020202020202069662028747970656F6628746869732E6D6170426F784D61702920213D3D20226F626A6563742229207B0A20202020202020';
wwv_flow_api.g_varchar2_table(20) := '2020202020202020207468726F7720746869732E6A734E616D65202B20223A2043616E277420616363657373206D6170626F78526567696F6E20726567696F6E20646174612E223B0A2020202020202020202020207D0A0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(21) := '746869732E246974656D732E617065784974656D203D202428222322202B20746869732E6F7074696F6E732E617065784974656D293B0A202020202020202020202020746869732E246974656D732E617065784974656D2E6461746128224D6170426F78';
wwv_flow_api.g_varchar2_table(22) := '4C6F616447656F6D6574727941646170746572222C2074686973293B0A0A20202020202020202020202072657475726E20746869733B0A20202020202020207D0A202020202020202072657475726E20746869732E696E697428293B0A202020207D3B0A';
wwv_flow_api.g_varchar2_table(23) := '0A20202020617065782E706C7567696E732E6D6170626F782E4D6170426F784C6F616447656F6D65747279416461707465722E70726F746F74797065203D207B0A0A20202020202020202F2A2A0A2020202020202020202A205B6C6F616446726F6D416A';
wwv_flow_api.g_varchar2_table(24) := '6178206C6F61642067656F6D7472792066726F6D20616A61785D0A2020202020202020202A2040706172616D20204F626A65637420696456616C20756E69717565206964656E74696669657220666F722067656F6D657472792066657463680A20202020';
wwv_flow_api.g_varchar2_table(25) := '20202020202A204072657475726E20746869730A2020202020202020202A2F0A20202020202020206C6F616446726F6D416A61783A2066756E6374696F6E206C6F616446726F6D416A617828696456616C29207B0A202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(26) := '207175657279537472696E67203D207B0A20202020202020202020202020202020705F666C6F775F69642020202020203A202428272370466C6F77496427292E76616C28292C0A20202020202020202020202020202020705F666C6F775F737465705F69';
wwv_flow_api.g_varchar2_table(27) := '64203A202428272370466C6F7753746570496427292E76616C28292C0A20202020202020202020202020202020705F696E7374616E636520202020203A202428272370496E7374616E636527292E76616C28292C0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(28) := '20705F646562756720202020202020203A202428272370646562756727292E76616C28292C0A202020202020202020202020202020207830312020202020202020202020203A20696456616C207C7C20746869732E246974656D732E617065784974656D';
wwv_flow_api.g_varchar2_table(29) := '2E76616C28292C0A20202020202020202020202020202020705F726571756573742020202020203A2027504C5547494E3D27202B20746869732E6F7074696F6E732E616A61784964656E7469666965720A2020202020202020202020207D3B0A0A202020';
wwv_flow_api.g_varchar2_table(30) := '2020202020202020207844656275672E63616C6C28746869732C20617267756D656E74732E63616C6C65652E6E616D652C20617267756D656E7473293B0A0A202020202020202020202020242E616A6178287B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(31) := '7479706520202020203A2027504F5354272C0A2020202020202020202020202020202075726C2020202020203A20277777765F666C6F772E73686F77272C0A202020202020202020202020202020206461746120202020203A207175657279537472696E';
wwv_flow_api.g_varchar2_table(32) := '672C0A202020202020202020202020202020206461746554797065203A20276170706C69636174696F6E2F6A736F6E272C0A202020202020202020202020202020206173796E63202020203A20747275652C0A2020202020202020202020202020202073';
wwv_flow_api.g_varchar2_table(33) := '75636365737320203A2066756E6374696F6E286461746129207B0A2020202020202020202020202020202020202020782E64656275672827416A61782067657420646174612072657175657374207375636365737366756C27293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(34) := '202020202020202020202020782E6465627567282767656F6A736F6E203A2027207C7C2064617461293B0A2020202020202020202020202020202020202020746869732E6C6F616447656F6D657472792864617461293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(35) := '202020207D2E62696E642874686973290A2020202020202020202020207D293B0A0A20202020202020202020202072657475726E20746869733B0A20202020202020207D2C0A0A20202020202020202F2A2A0A2020202020202020202A205B6C6F616447';
wwv_flow_api.g_varchar2_table(36) := '656F6D65747279206465736372697074696F6E5D0A2020202020202020202A2040706172616D20206F626A65637420202064617461202067656F6A736F6E0A2020202020202020202A2040706172616D20206F626A6563742020207374796C65206A736F';
wwv_flow_api.g_varchar2_table(37) := '6E207374796C6520636F6E6669670A2020202020202020202A204072657475726E20746869730A2020202020202020202A2F0A20202020202020206C6F616447656F6D657472793A2066756E6374696F6E206C6F616447656F6D6574727928646174612C';
wwv_flow_api.g_varchar2_table(38) := '207374796C6529207B0A2020202020202020202020207661722067656F4A736F6E3B0A2020202020202020202020207844656275672E63616C6C28746869732C20617267756D656E74732E63616C6C65652E6E616D652C20617267756D656E7473293B0A';
wwv_flow_api.g_varchar2_table(39) := '202020202020202020202020696620286461746129207B0A2020202020202020202020202020202069662028242E6973506C61696E4F626A656374286461746129203D3D3D2066616C736529207B0A202020202020202020202020202020202020202067';
wwv_flow_api.g_varchar2_table(40) := '656F4A736F6E203D20242E70617273654A534F4E2864617461293B0A202020202020202020202020202020207D0A0A2020202020202020202020202020202069662028746869732E6F7074696F6E732E7374796C6520262620242E6973456D7074794F62';
wwv_flow_api.g_varchar2_table(41) := '6A65637428746869732E6F7074696F6E732E7374796C6529203D3D3D2066616C736529207B0A202020202020202020202020202020202020202067656F4A736F6E2E70726F70657274696573203D207374796C65207C7C20746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(42) := '2E7374796C653B0A202020202020202020202020202020207D0A0A20202020202020202020202020202020746869732E6D6170426F784D61702E73657447656F4A534F4E2867656F4A736F6E2C20746869732E6F7074696F6E732E7A6F6F6D546F293B0A';
wwv_flow_api.g_varchar2_table(43) := '2020202020202020202020207D0A0A20202020202020202020202072657475726E20746869733B0A20202020202020207D0A202020207D3B0A0A7D2928617065782E6A51756572792C2061706578293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(12001454221341710)
,p_plugin_id=>wwv_flow_api.id(8966021210298693)
,p_file_name=>'mapbox.load.geometry.adapter.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
