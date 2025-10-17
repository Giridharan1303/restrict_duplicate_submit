--------------------------------------------------------------------------------
-- Name: Sample Reporting
-- Copyright (c) 2012, 2025 Oracle and/or its affiliates.
-- Licensed under the Universal Permissive License v 1.0
-- as shown at https://oss.oracle.com/licenses/upl/
--------------------------------------------------------------------------------
prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>9703443526880323227
,p_default_application_id=>190464
,p_default_id_offset=>9713504779058772842
,p_default_owner=>'WKSP_GIRIDHARAN'
);
end;
/
 
prompt APPLICATION 190464 - Sample Reporting
--
-- Application Export:
--   Application:     190464
--   Name:            Sample Reporting
--   Date and Time:   01:46 Friday October 10, 2025
--   Exported By:     GIRICINNAIYAN@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 88828227217541816855
--   Manifest End
--   Version:         24.2.8
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/disable_and_submit_button
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(88828227217541816855)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'DISABLE_AND_SUBMIT_BUTTON'
,p_display_name=>'Restrict Duplicate Submit'
,p_category=>'EXECUTE'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render (',
'    p_dynamic_action IN apex_plugin.t_dynamic_action,',
'    p_plugin         IN apex_plugin.t_plugin',
') RETURN apex_plugin.t_dynamic_action_render_result IS',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'    -- Load JS library',
'    APEX_JAVASCRIPT.ADD_LIBRARY(',
'        p_name      => ''restrict_duplicate_submit_js'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => NULL,',
'        p_key       => ''restrict_duplicate_submit_js''',
'    );',
'',
'    -- Get attributes',
'    l_result.attribute_01 := p_dynamic_action.attribute_01; -- Button ID',
'    l_result.attribute_02 := p_dynamic_action.attribute_02; -- Disable time (in seconds)',
'',
'    -- Call function with both attributes',
'    l_result.javascript_function :=',
'        ''function(){ RestrictDuplicateSubmit("'' || p_dynamic_action.attribute_01 || ''",'' ||',
'        NVL(p_dynamic_action.attribute_02, ''5'') || ''); }'';',
'',
'    RETURN l_result;',
'END;',
''))
,p_api_version=>1
,p_render_function=>'render'
,p_standard_attributes=>'BUTTON:REGION:JAVASCRIPT_EXPRESSION:TRIGGERING_ELEMENT:EVENT_SOURCE:ONLOAD:INIT_JAVASCRIPT_CODE'
,p_substitute_attributes=>true
,p_version_scn=>15658045639996
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>47
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(88844200447127580030)
,p_plugin_id=>wwv_flow_imp.id(88828227217541816855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'request_name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(91714119539496886766)
,p_plugin_id=>wwv_flow_imp.id(88828227217541816855)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Disable time (seconds)'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(91710099763778434588)
,p_plugin_id=>wwv_flow_imp.id(88828227217541816855)
,p_name=>'INIT_JAVASCRIPT_CODE'
,p_is_required=>false
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2052657374726963744475706C69636174655375626D697428627574746F6E49642C2064697361626C655365636F6E647329207B0D0A202020206966202821627574746F6E496429207B0D0A2020202020202020636F6E736F6C652E';
wwv_flow_imp.g_varchar2_table(2) := '6572726F72282252657374726963744475706C69636174655375626D69743A20427574746F6E204944206E6F742070726F76696465642E22293B0D0A202020202020202072657475726E3B0D0A202020207D0D0A0D0A202020202F2F2044656661756C74';
wwv_flow_imp.g_varchar2_table(3) := '2064697361626C652074696D65203D2032207365636F6E6473206966206E6F742070726F76696465640D0A202020207661722064697361626C6554696D65203D202864697361626C655365636F6E6473202626202169734E614E2864697361626C655365';
wwv_flow_imp.g_varchar2_table(4) := '636F6E64732929203F2064697361626C655365636F6E6473202A2031303030203A20323030303B0D0A0D0A202020202F2F20456E7375726520627574746F6E2073746172747320656E61626C65640D0A202020202428222322202B20627574746F6E4964';
wwv_flow_imp.g_varchar2_table(5) := '292E70726F70282264697361626C6564222C2066616C7365293B0D0A0D0A202020202F2F2041747461636820636C69636B206576656E7420736166656C790D0A202020202428222322202B20627574746F6E4964292E6F66662822636C69636B2E726573';
wwv_flow_imp.g_varchar2_table(6) := '74726963745375626D697422292E6F6E2822636C69636B2E72657374726963745375626D6974222C2066756E6374696F6E20286529207B0D0A2020202020202020652E70726576656E7444656661756C7428293B0D0A0D0A20202020202020202F2F2044';
wwv_flow_imp.g_varchar2_table(7) := '697361626C6520627574746F6E20696D6D6564696174656C790D0A2020202020202020242874686973292E70726F70282264697361626C6564222C2074727565293B0D0A0D0A20202020202020202F2F205375626D697420706167650D0A202020202020';
wwv_flow_imp.g_varchar2_table(8) := '2020617065782E7375626D6974287B0D0A202020202020202020202020726571756573743A20627574746F6E49642C0D0A20202020202020202020202076616C69646174653A20747275650D0A20202020202020207D293B0D0A0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(9) := '2F2F2052652D656E61626C652061667465722058207365636F6E647320286F6E6C79206966207061676520646F65736EE28099742072656C6F6164290D0A202020202020202073657454696D656F75742866756E6374696F6E202829207B0D0A20202020';
wwv_flow_imp.g_varchar2_table(10) := '20202020202020202428222322202B20627574746F6E4964292E70726F70282264697361626C6564222C2066616C7365293B0D0A20202020202020207D2C2064697361626C6554696D65293B0D0A202020207D293B0D0A7D0D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(88835129228191942533)
,p_plugin_id=>wwv_flow_imp.id(88828227217541816855)
,p_file_name=>'restrict_duplicate_submit_js.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '66756E6374696F6E2052657374726963744475706C69636174655375626D697428742C65297B69662874297B76617220693D6526262169734E614E2865293F3165332A653A3265333B24282223222B74292E70726F70282264697361626C6564222C2131';
wwv_flow_imp.g_varchar2_table(2) := '292C24282223222B74292E6F66662822636C69636B2E72657374726963745375626D697422292E6F6E2822636C69636B2E72657374726963745375626D6974222C2866756E6374696F6E2865297B652E70726576656E7444656661756C7428292C242874';
wwv_flow_imp.g_varchar2_table(3) := '686973292E70726F70282264697361626C6564222C2130292C617065782E7375626D6974287B726571756573743A742C76616C69646174653A21307D292C73657454696D656F7574282866756E6374696F6E28297B24282223222B74292E70726F702822';
wwv_flow_imp.g_varchar2_table(4) := '64697361626C6564222C2131297D292C69297D29297D656C736520636F6E736F6C652E6572726F72282252657374726963744475706C69636174655375626D69743A20427574746F6E204944206E6F742070726F76696465642E22297D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(91714703842487610465)
,p_plugin_id=>wwv_flow_imp.id(88828227217541816855)
,p_file_name=>'restrict_duplicate_submit_js.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
