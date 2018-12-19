<%@ Page Title="Prison Control Interface" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NominalRoll.aspx.vb" Inherits="NomRoll.NominalRoll" %>
<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AppName.aspx.vb" Inherits="WebDeploySite.AppName" %>--%>

    
    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
            <h1>Nominal Roll Interface<asp:Table ID="Table1" runat="server" Width="314px">
                </asp:Table>
            </h1>
        </div>
        <div class="row">

            <dx:ASPxGridView ID="NomRollGV" runat="server" DataSourceID="NominalRollDS" AutoGenerateColumns="False" KeyFieldName="nominal_role_id" Theme="BlackGlass" KeyboardSupport="True" Width="1200px">
                <SettingsAdaptivity AdaptivityMode="HideDataCells">
                </SettingsAdaptivity>
                <SettingsEditing Mode="PopupEditForm">
                </SettingsEditing>
                <Settings ShowGroupPanel="True" HorizontalScrollBarMode="Visible" />
                <SettingsPopup>
                    <EditForm Modal="True" />
                </SettingsPopup>
                <SettingsSearchPanel Visible="True" />
                <EditFormLayoutProperties ColCount="3">
                    <Items>
                        <dx:GridViewColumnLayoutItem ColumnName="ID">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="LAST NAME">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="FIRST NAME">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="BIRTH DATE">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="ADMISSION DATE">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="CONVICTED DATE">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="STATUS">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="LOCATION">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="COUNTRY">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OCCUPATION">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="EDUCATION LEVEL">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="RELIGION">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="ETHNICITY">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="DISTRICT">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="GENDER">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="CONVICTED">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="UN-CONVICTED">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 1">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 2">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 3">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 4">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 5">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 6">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 7">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 8">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 9">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 10">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 11">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 12">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="OFFENSE 13">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 1">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 2">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 3">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 4">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 5">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 6">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 7">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 8">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 9">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 10">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 11">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 12">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 13">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 14">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 15">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 16">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 17">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="SENTENCE 18">
                        </dx:GridViewColumnLayoutItem>
                        <dx:GridViewColumnLayoutItem ColumnName="BAIL">
                        </dx:GridViewColumnLayoutItem>
                        <dx:EditModeCommandLayoutItem HorizontalAlign="Right">
                        </dx:EditModeCommandLayoutItem>
                    </Items>
                    <SettingsItems Width="300px" />
                </EditFormLayoutProperties>
                <Columns>
                    <dx:GridViewCommandColumn ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0" FixedStyle="Left" Width="45px">
                        <CellStyle BackColor="#660033">
                        </CellStyle>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="nominal_role_id" ReadOnly="True" VisibleIndex="1" Visible="False">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ID" VisibleIndex="2" FixedStyle="Left" Width="45px">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LAST NAME" VisibleIndex="3" FixedStyle="Left">
                        <PropertiesTextEdit Width="100px">
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FIRST NAME" VisibleIndex="4" FixedStyle="Left">
                        <PropertiesTextEdit>
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesTextEdit>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OCCUPATION" VisibleIndex="11" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION LEVEL" VisibleIndex="12" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="RELIGION" VisibleIndex="13" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DISTRICT" VisibleIndex="15" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CONVICTED" VisibleIndex="17" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="UN-CONVICTED" VisibleIndex="18" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 1" VisibleIndex="19" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 2" VisibleIndex="20" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 3" VisibleIndex="21" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 4" VisibleIndex="22" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 5" VisibleIndex="23" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 6" VisibleIndex="24" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 7" VisibleIndex="25" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 8" VisibleIndex="26" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 9" VisibleIndex="27" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 10" VisibleIndex="28" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 11" VisibleIndex="29" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 12" VisibleIndex="30" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OFFENSE 13" VisibleIndex="31" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 1" VisibleIndex="32" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 2" VisibleIndex="33" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 3" VisibleIndex="34" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 4" VisibleIndex="35" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 5" VisibleIndex="36" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 6" VisibleIndex="37" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 7" VisibleIndex="38" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 8" VisibleIndex="39" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 9" VisibleIndex="40" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 10" VisibleIndex="41" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 11" VisibleIndex="42" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 12" VisibleIndex="43" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 13" VisibleIndex="44" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 14" VisibleIndex="45" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 15" VisibleIndex="46" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 16" VisibleIndex="47" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 17" VisibleIndex="48" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SENTENCE 18" VisibleIndex="49" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="BAIL" VisibleIndex="50" AdaptivePriority="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="BIRTH DATE" VisibleIndex="5" FixedStyle="Left" Width="75px">
                        <PropertiesDateEdit DisplayFormatString="" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                        </PropertiesDateEdit>
                        <HeaderStyle Font-Size="Smaller" />
                        <CellStyle Font-Size="Smaller">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="ADMISSION DATE" VisibleIndex="6" FixedStyle="Left" Width="75px">
                        <PropertiesDateEdit DisplayFormatString="" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesDateEdit>
                        <HeaderStyle Font-Size="Smaller" />
                        <CellStyle Font-Size="Smaller">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="CONVICTED DATE" VisibleIndex="7" FixedStyle="Left" Width="75px">
                        <PropertiesDateEdit DisplayFormatString="" EditFormat="Custom" EditFormatString="yyyy-M-dd">
                        </PropertiesDateEdit>
                        <HeaderStyle Font-Size="Smaller" />
                        <CellStyle Font-Size="Smaller">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="COUNTRY" VisibleIndex="10" AdaptivePriority="1">
                        <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn AdaptivePriority="1" FieldName="ETHNICITY" ShowInCustomizationForm="True" VisibleIndex="14">
                        <PropertiesComboBox DataSourceID="EthnicDS" TextField="par_desc" ValueField="par_num">
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn AdaptivePriority="1" FieldName="GENDER" ShowInCustomizationForm="True" VisibleIndex="16">
                        <PropertiesComboBox DataSourceID="GenderDS" TextField="par_desc" ValueField="par_num">
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="LOCATION" FixedStyle="Left" ShowInCustomizationForm="True" VisibleIndex="9">
                        <PropertiesComboBox DataSourceID="LocationDS" TextField="tango" ValueField="location_parent_id">
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn FieldName="STATUS" FixedStyle="Left" ShowInCustomizationForm="True" VisibleIndex="8">
                        <PropertiesComboBox DataSourceID="CStatusDS" TextField="par_desc" ValueField="par_num">
                            <ValidationSettings>
                                <RequiredField IsRequired="True" />
                            </ValidationSettings>
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                </Columns>
                <Styles>
                    <FixedColumn BackColor="#66CDFF">
                    </FixedColumn>
                </Styles>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="NominalRollDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" DeleteCommand="DELETE FROM `nominal_role` WHERE `nominal_role_id` = ?" InsertCommand="INSERT INTO `nominal_role` (`nominal_role_id`, `ID`, `LAST NAME`, `FIRST NAME`, `BIRTH DATE`, `ADMISSION DATE`, `CONVICTED DATE`, `STATUS`, `LOCATION`, `COUNTRY`, `OCCUPATION`, `EDUCATION LEVEL`, `RELIGION`, `ETHNICITY`, `DISTRICT`, `GENDER`, `CONVICTED`, `UN-CONVICTED`, `OFFENSE 1`, `OFFENSE 2`, `OFFENSE 3`, `OFFENSE 4`, `OFFENSE 5`, `OFFENSE 6`, `OFFENSE 7`, `OFFENSE 8`, `OFFENSE 9`, `OFFENSE 10`, `OFFENSE 11`, `OFFENSE 12`, `OFFENSE 13`, `SENTENCE 1`, `SENTENCE 2`, `SENTENCE 3`, `SENTENCE 4`, `SENTENCE 5`, `SENTENCE 6`, `SENTENCE 7`, `SENTENCE 8`, `SENTENCE 9`, `SENTENCE 10`, `SENTENCE 11`, `SENTENCE 12`, `SENTENCE 13`, `SENTENCE 14`, `SENTENCE 15`, `SENTENCE 16`, `SENTENCE 17`, `SENTENCE 18`, `BAIL`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT nominal_role_id, ID, `LAST NAME`, `FIRST NAME`, DATE_FORMAT(`BIRTH DATE`, '%Y-%m-%d') AS `BIRTH DATE`, DATE_FORMAT(`ADMISSION DATE`, '%Y-%m-%d') AS `ADMISSION DATE`, DATE_FORMAT(`CONVICTED DATE`, '%Y-%m-%d') AS `CONVICTED DATE`, STATUS, LOCATION, COUNTRY, OCCUPATION, `EDUCATION LEVEL`, RELIGION, ETHNICITY, DISTRICT, GENDER, CONVICTED, `UN-CONVICTED`, `OFFENSE 1`, `OFFENSE 2`, `OFFENSE 3`, `OFFENSE 4`, `OFFENSE 5`, `OFFENSE 6`, `OFFENSE 7`, `OFFENSE 8`, `OFFENSE 9`, `OFFENSE 10`, `OFFENSE 11`, `OFFENSE 12`, `OFFENSE 13`, `SENTENCE 1`, `SENTENCE 2`, `SENTENCE 3`, `SENTENCE 4`, `SENTENCE 5`, `SENTENCE 6`, `SENTENCE 7`, `SENTENCE 8`, `SENTENCE 9`, `SENTENCE 10`, `SENTENCE 11`, `SENTENCE 12`, `SENTENCE 13`, `SENTENCE 14`, `SENTENCE 15`, `SENTENCE 16`, `SENTENCE 17`, `SENTENCE 18`, BAIL FROM nominal_role" UpdateCommand="UPDATE `nominal_role` SET `ID` = ?, `LAST NAME` = ?, `FIRST NAME` = ?, `BIRTH DATE` = ? , `ADMISSION DATE` =  ?, `CONVICTED DATE` =  ?, `STATUS` = ?, `LOCATION` = ?, `COUNTRY` = ?, `OCCUPATION` = ?, `EDUCATION LEVEL` = ?, `RELIGION` = ?, `ETHNICITY` = ?, `DISTRICT` = ?, `GENDER` = ?, `CONVICTED` = ?, `UN-CONVICTED` = ?, `OFFENSE 1` = ?, `OFFENSE 2` = ?, `OFFENSE 3` = ?, `OFFENSE 4` = ?, `OFFENSE 5` = ?, `OFFENSE 6` = ?, `OFFENSE 7` = ?, `OFFENSE 8` = ?, `OFFENSE 9` = ?, `OFFENSE 10` = ?, `OFFENSE 11` = ?, `OFFENSE 12` = ?, `OFFENSE 13` = ?, `SENTENCE 1` = ?, `SENTENCE 2` = ?, `SENTENCE 3` = ?, `SENTENCE 4` = ?, `SENTENCE 5` = ?, `SENTENCE 6` = ?, `SENTENCE 7` = ?, `SENTENCE 8` = ?, `SENTENCE 9` = ?, `SENTENCE 10` = ?, `SENTENCE 11` = ?, `SENTENCE 12` = ?, `SENTENCE 13` = ?, `SENTENCE 14` = ?, `SENTENCE 15` = ?, `SENTENCE 16` = ?, `SENTENCE 17` = ?, `SENTENCE 18` = ?, `BAIL` = ? WHERE `nominal_role_id` = ?">
                <DeleteParameters>
                    <asp:Parameter Name="nominal_role_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nominal_role_id" Type="Int32" />
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="LAST NAME" Type="String" />
                    <asp:Parameter Name="FIRST NAME" Type="String" />
                    <asp:Parameter Name="BIRTH DATE" Type="DateTime" />
                    <asp:Parameter Name="ADMISSION DATE" Type="DateTime" />
                    <asp:Parameter Name="CONVICTED DATE" Type="DateTime" />
                    <asp:Parameter Name="STATUS" Type="String" />
                    <asp:Parameter Name="LOCATION" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="OCCUPATION" Type="String" />
                    <asp:Parameter Name="EDUCATION_LEVEL" Type="String" />
                    <asp:Parameter Name="RELIGION" Type="String" />
                    <asp:Parameter Name="ETHNICITY" Type="String" />
                    <asp:Parameter Name="DISTRICT" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="CONVICTED" Type="String" />
                    <asp:Parameter Name="UN-CONVICTED" Type="String" />
                    <asp:Parameter Name="OFFENSE 1" Type="String" />
                    <asp:Parameter Name="OFFENSE 2" Type="String" />
                    <asp:Parameter Name="OFFENSE 3" Type="String" />
                    <asp:Parameter Name="OFFENSE 4" Type="String" />
                    <asp:Parameter Name="OFFENSE 5" Type="String" />
                    <asp:Parameter Name="OFFENSE 6" Type="String" />
                    <asp:Parameter Name="OFFENSE 7" Type="String" />
                    <asp:Parameter Name="OFFENSE 8" Type="String" />
                    <asp:Parameter Name="OFFENSE 9" Type="String" />
                    <asp:Parameter Name="OFFENSE 10" Type="String" />
                    <asp:Parameter Name="OFFENSE 11" Type="String" />
                    <asp:Parameter Name="OFFENSE 12" Type="String" />
                    <asp:Parameter Name="OFFENSE 13" Type="String" />
                    <asp:Parameter Name="SENTENCE 1" Type="String" />
                    <asp:Parameter Name="SENTENCE 2" Type="String" />
                    <asp:Parameter Name="SENTENCE 3" Type="String" />
                    <asp:Parameter Name="SENTENCE 4" Type="String" />
                    <asp:Parameter Name="SENTENCE 5" Type="String" />
                    <asp:Parameter Name="SENTENCE 6" Type="String" />
                    <asp:Parameter Name="SENTENCE 7" Type="String" />
                    <asp:Parameter Name="SENTENCE 8" Type="String" />
                    <asp:Parameter Name="SENTENCE 9" Type="String" />
                    <asp:Parameter Name="SENTENCE 10" Type="String" />
                    <asp:Parameter Name="SENTENCE 11" Type="String" />
                    <asp:Parameter Name="SENTENCE 12" Type="String" />
                    <asp:Parameter Name="SENTENCE 13" Type="String" />
                    <asp:Parameter Name="SENTENCE 14" Type="String" />
                    <asp:Parameter Name="SENTENCE 15" Type="String" />
                    <asp:Parameter Name="SENTENCE 16" Type="String" />
                    <asp:Parameter Name="SENTENCE 17" Type="String" />
                    <asp:Parameter Name="SENTENCE 18" Type="String" />
                    <asp:Parameter Name="BAIL" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID" Type="String" />
                    <asp:Parameter Name="LAST NAME" Type="String" />
                    <asp:Parameter Name="FIRST NAME" Type="String" />
                    <asp:Parameter Name="BIRTH DATE" Type="DateTime" />
                    <asp:Parameter Name="ADMISSION DATE" Type="DateTime" />
                    <asp:Parameter Name="CONVICTED DATE" Type="DateTime" />
                    <asp:Parameter Name="STATUS" Type="String" />
                    <asp:Parameter Name="LOCATION" Type="String" />
                    <asp:Parameter Name="COUNTRY" Type="String" />
                    <asp:Parameter Name="OCCUPATION" Type="String" />
                    <asp:Parameter Name="EDUCATION_LEVEL" Type="String" />
                    <asp:Parameter Name="RELIGION" Type="String" />
                    <asp:Parameter Name="ETHNICITY" Type="String" />
                    <asp:Parameter Name="DISTRICT" Type="String" />
                    <asp:Parameter Name="GENDER" Type="String" />
                    <asp:Parameter Name="CONVICTED" Type="String" />
                    <asp:Parameter Name="UN-CONVICTED" Type="String" />
                    <asp:Parameter Name="OFFENSE 1" Type="String" />
                    <asp:Parameter Name="OFFENSE 2" Type="String" />
                    <asp:Parameter Name="OFFENSE 3" Type="String" />
                    <asp:Parameter Name="OFFENSE 4" Type="String" />
                    <asp:Parameter Name="OFFENSE 5" Type="String" />
                    <asp:Parameter Name="OFFENSE 6" Type="String" />
                    <asp:Parameter Name="OFFENSE 7" Type="String" />
                    <asp:Parameter Name="OFFENSE 8" Type="String" />
                    <asp:Parameter Name="OFFENSE 9" Type="String" />
                    <asp:Parameter Name="OFFENSE 10" Type="String" />
                    <asp:Parameter Name="OFFENSE 11" Type="String" />
                    <asp:Parameter Name="OFFENSE 12" Type="String" />
                    <asp:Parameter Name="OFFENSE 13" Type="String" />
                    <asp:Parameter Name="SENTENCE 1" Type="String" />
                    <asp:Parameter Name="SENTENCE 2" Type="String" />
                    <asp:Parameter Name="SENTENCE 3" Type="String" />
                    <asp:Parameter Name="SENTENCE 4" Type="String" />
                    <asp:Parameter Name="SENTENCE 5" Type="String" />
                    <asp:Parameter Name="SENTENCE 6" Type="String" />
                    <asp:Parameter Name="SENTENCE 7" Type="String" />
                    <asp:Parameter Name="SENTENCE 8" Type="String" />
                    <asp:Parameter Name="SENTENCE 9" Type="String" />
                    <asp:Parameter Name="SENTENCE 10" Type="String" />
                    <asp:Parameter Name="SENTENCE 11" Type="String" />
                    <asp:Parameter Name="SENTENCE 12" Type="String" />
                    <asp:Parameter Name="SENTENCE 13" Type="String" />
                    <asp:Parameter Name="SENTENCE 14" Type="String" />
                    <asp:Parameter Name="SENTENCE 15" Type="String" />
                    <asp:Parameter Name="SENTENCE 16" Type="String" />
                    <asp:Parameter Name="SENTENCE 17" Type="String" />
                    <asp:Parameter Name="SENTENCE 18" Type="String" />
                    <asp:Parameter Name="BAIL" Type="String" />
                    <asp:SessionParameter Name="nominal_role_id" SessionField="nominal_role_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="CountryDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT country_id, c_name, c_abbr FROM country ORDER BY c_name"></asp:SqlDataSource>

            <asp:SqlDataSource ID="EthnicDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 4) ORDER BY par_desc"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GenderDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 14) ORDER BY par_desc"></asp:SqlDataSource>
            <asp:SqlDataSource ID="LocationDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT location_parent_id, tango FROM location_parent WHERE (move_type_det_id = 9) ORDER BY tango"></asp:SqlDataSource>
            <asp:SqlDataSource ID="CStatusDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 6) ORDER BY par_desc"></asp:SqlDataSource>

        </div>
    </asp:Content>

