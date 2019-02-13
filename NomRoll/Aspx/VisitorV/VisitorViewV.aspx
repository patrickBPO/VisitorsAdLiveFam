<%@ Page Title="Prison Control Interface" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisitorViewV.aspx.vb" Inherits="NomRoll.VisitorViewV" %>
<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AppName.aspx.vb" Inherits="WebDeploySite.AppName" %>--%>

    
    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
            <h1>Inmate Visitors Lookup
                <dx:ASPxLabel ID="ASPxLabel3" runat="server" Font-Bold="True" Font-Size="35pt" Font-Underline="False" ForeColor="#0066CC" Text="(Live)" Theme="PlasticBlue">
                </dx:ASPxLabel>
            </h1>
        </div>
            <dx:ASPxGridView ID="VisViewerGV" runat="server" AutoGenerateColumns="False" DataSourceID="InmateVisitorViewDS" EnableTheming="True" KeyFieldName="inmate_sys_id" Theme="BlackGlass">
                <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                <Templates>
                    <DetailRow>
                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Regular Visitors">
                        </dx:ASPxLabel>
                        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="VisitorsDetailDS" EnableTheming="True" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="PlasticBlue" Width="553px">
                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn Caption="First Name" FieldName="f_name" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Last Name" FieldName="l_name" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataCheckColumn FieldName="banned" VisibleIndex="7" Caption="Banned">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Sex" FieldName="sex" VisibleIndex="4">
                                    <PropertiesComboBox DataSourceID="GenderDS" TextField="par_desc" ValueField="par_num">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Relationship" FieldName="relation_id" VisibleIndex="5">
                                    <PropertiesComboBox DataSourceID="RelationDS" TextField="par_desc" ValueField="par_num">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn Caption="Middle Name" FieldName="m_name" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Country" VisibleIndex="6" Width="100px">
                                    <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                        </dx:ASPxGridView>
                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Family Day Visitors">
                        </dx:ASPxLabel>
                        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" DataSourceID="FamilyDetailDS" EnableTheming="True" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="Office2003Olive" Width="553px">
                            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                            <Columns>
                                <dx:GridViewCommandColumn VisibleIndex="0">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn Caption="First Name" FieldName="f_name" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn Caption="Last Name" FieldName="l_name" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataCheckColumn FieldName="banned" VisibleIndex="7" Caption="Banned">
                                </dx:GridViewDataCheckColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Sex" FieldName="sex" VisibleIndex="4">
                                    <PropertiesComboBox DataSourceID="GenderDS" TextField="par_desc" ValueField="par_num">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Relationship" FieldName="relation_id" VisibleIndex="5">
                                    <PropertiesComboBox DataSourceID="RelationDS" TextField="par_desc" ValueField="par_num">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                                <dx:GridViewDataTextColumn Caption="Middle Name" FieldName="m_name" VisibleIndex="2">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="country_id" VisibleIndex="6" Width="100px">
                                    <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                                    </PropertiesComboBox>
                                </dx:GridViewDataComboBoxColumn>
                            </Columns>
                        </dx:ASPxGridView>
                    </DetailRow>
                </Templates>
                <SettingsBehavior AllowFocusedRow="True" ProcessFocusedRowChangedOnServer="True" />
                <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                <SettingsSearchPanel Visible="True" />
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="inmate_id" ReadOnly="True" Visible="False" VisibleIndex="0">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Inmate ID" FieldName="inmate_sys_id" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="First Name" FieldName="f_name" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Middle Name" FieldName="m_name" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Last Name" FieldName="l_name" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Sex" FieldName="sex" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataComboBoxColumn Caption="Location" FieldName="location_parent_id" VisibleIndex="6">
                        <PropertiesComboBox DataSourceID="LocationDS" TextField="tango" ValueField="location_parent_id">
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn Caption="Custody Status" FieldName="custody_status_id" VisibleIndex="7">
                        <PropertiesComboBox DataSourceID="CStatusDS" TextField="par_desc" ValueField="par_num">
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="country_id" VisibleIndex="9">
                        <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                        </PropertiesComboBox>
                    </dx:GridViewDataComboBoxColumn>
                    <dx:GridViewDataDateColumn Caption="Admission Date" FieldName="admiss_dte" VisibleIndex="8">
                        <PropertiesDateEdit DisplayFormatString="dd-MM-yyyy">
                        </PropertiesDateEdit>
                    </dx:GridViewDataDateColumn>
                </Columns>
                <Styles>
                    <FocusedRow BackColor="#0066CC" ForeColor="White" HorizontalAlign="Left">
                    </FocusedRow>
                </Styles>
                </dx:ASPxGridView>
        <div class="row">

            <asp:SqlDataSource ID="VisitorsDetailDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT f_name, m_name, l_name, sex, relation_id, country_id, banned FROM vistor WHERE (inmate_sys_id = @PrmID)">
                <SelectParameters>
                    <asp:SessionParameter Name="PrmID" SessionField="inmate_sys_id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="RelationDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 9) ORDER BY par_code, par_desc"></asp:SqlDataSource>

            <asp:SqlDataSource ID="FamilyDetailDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT f_name, m_name, l_name, sex, relation_id, country_id, banned FROM family WHERE (inmate_sys_id = @PrmID)">
                <SelectParameters>
                    <asp:SessionParameter Name="PrmID" SessionField="inmate_sys_id" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="CountryDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT country_id, c_name, c_abbr FROM country ORDER BY c_name"></asp:SqlDataSource>

            <asp:SqlDataSource ID="InmateVisitorViewDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT inmate_id, inmate_sys_id, f_name, m_name, l_name, sex, location_parent_id, DATE_FORMAT(admiss_dte, '%d-%b-%y') AS admiss_dte, country_id, custody_status_id FROM inmate WHERE (custody_status_id &lt;&gt; 3) ORDER BY l_name"></asp:SqlDataSource>

            <asp:SqlDataSource ID="EthnicDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 4) ORDER BY par_desc"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GenderDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 14) ORDER BY par_desc"></asp:SqlDataSource>
            <asp:SqlDataSource ID="LocationDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT location_parent_id, tango FROM location_parent WHERE (move_type_det_id = 9) ORDER BY tango"></asp:SqlDataSource>
            <asp:SqlDataSource ID="CStatusDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 6) ORDER BY par_desc"></asp:SqlDataSource>

        </div>
    </asp:Content>

