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
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>1271849481896960
,p_default_application_id=>154
,p_default_id_offset=>0
,p_default_owner=>'XX_APEX'
);
end;
/
 
prompt APPLICATION 154 - Azure BLOB Test
--
-- Application Export:
--   Application:     154
--   Name:            Azure BLOB Test
--   Date and Time:   13:49 Thursday October 12, 2023
--   Exported By:     SIMON.JOYCE@DUBAIAEROSPACE.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 10832620716589903
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     248347347243656
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/region_type/com_v1_simonj_azure_get_pdf2
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(10832620716589903)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.V1.SIMONJ.AZURE.GET_PDF2'
,p_display_name=>'Azure - Get PDF'
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_render_function=>'azure_api_pkg.get_pdf'
,p_standard_attributes=>'SOURCE_LOCATION:AJAX_ITEMS_TO_SUBMIT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(10834928251802962)
,p_plugin_id=>wwv_flow_imp.id(10832620716589903)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Azure SAS URL'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the Azure SAS URL'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(10836173440816753)
,p_plugin_id=>wwv_flow_imp.id(10832620716589903)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Azure Filename'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'&P7_FILENAME.'
,p_help_text=>'Enter the filename to be viewed'
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(10832926744589924)
,p_plugin_id=>wwv_flow_imp.id(10832620716589903)
,p_name=>'SOURCE_LOCATION'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
