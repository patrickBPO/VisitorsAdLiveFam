<%@ Page Title="Prison Control Interface" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisitorViewAp.aspx.vb" Inherits="NomRoll.VisitorViewAp" %>
<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AppName.aspx.vb" Inherits="WebDeploySite.AppName" %>--%>

    
    <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <div class="jumbotron">
            <h1 class="centered">Inmate Visitors Approval</h1>
        </div>
        <div class="row">
            <dx:ASPxGridView ID="VisViewerGV" runat="server" AutoGenerateColumns="False" DataSourceID="InmateVisitorViewDS" EnableTheming="True" KeyFieldName="inmate_id" Theme="BlackGlass" CssClass="centered">
                    <SettingsDetail ShowDetailRow="True" AllowOnlyOneMasterRowExpanded="True" />
                    <Templates>
                        <DetailRow>
                            <dx:ASPxLabel ID="ASPxLabel2" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Regular Visitors">
                            </dx:ASPxLabel>
                            <br />
                            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="VisitorsDetailDS" EnableTheming="True" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="PlasticBlue" KeyFieldName="visitor_id" OnParseValue="ASPxGridView2_ParseValue" Width="553px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <Settings ShowFooter="True" ShowGroupFooter="VisibleIfExpanded" />
                                <SettingsBehavior AllowFocusedRow="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="visitor_id" VisibleIndex="1" ReadOnly="True" Visible="False">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="inmate_sys_id" VisibleIndex="2" Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataCheckColumn FieldName="banned" VisibleIndex="9" Caption="Approved" ToolTip="Please check to approve the Visitor for final entry">
                                    </dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataTextColumn Caption="First Name" FieldName="f_name" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Middle Name" FieldName="m_name" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Last Name" FieldName="l_name" VisibleIndex="5">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="age" Visible="False" VisibleIndex="10">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="house_pbox" Visible="False" VisibleIndex="11">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="street" Visible="False" VisibleIndex="12">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="city" Visible="False" VisibleIndex="13">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="district_id" Visible="False" VisibleIndex="14">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="v_card_id" Visible="False" VisibleIndex="15">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="v_phone" Visible="False" VisibleIndex="16">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Sex" FieldName="sex" VisibleIndex="6">
                                        <PropertiesComboBox DataSourceID="GenderDS" TextField="par_desc" ValueField="par_num">
                                        </PropertiesComboBox>
                                        <CellStyle BackColor="#E7FCFE" ForeColor="#003399">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Relationship" FieldName="relation_id" VisibleIndex="7">
                                        <PropertiesComboBox DataSourceID="RelationDS" TextField="par_desc" ValueField="par_num">
                                        </PropertiesComboBox>
                                        <CellStyle BackColor="#E7FCFE" ForeColor="#003399" Font-Bold="True">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="country_id" VisibleIndex="8" Width="100px">
                                        <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                                        </PropertiesComboBox>
                                        <CellStyle BackColor="#E7FCFE" ForeColor="#003399">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                                <TotalSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="Total : {00}" FieldName="visitor_id" ShowInColumn="First Name" SummaryType="Count" />
                                </TotalSummary>
                                <GroupSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="Total : {00}" FieldName="visitor_id" ShowInColumn="First Name" SummaryType="Count" />
                                </GroupSummary>
                                <Styles>
                                    <FocusedRow BackColor="#006699" ForeColor="White">
                                    </FocusedRow>
                                    <Footer BackColor="#A6D2FF">
                                    </Footer>
                                </Styles>
                            </dx:ASPxGridView>
                            <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Family Day Visitors" Font-Bold="True" Font-Size="X-Large"></dx:ASPxLabel>
                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="FamilyDetailDS" EnableTheming="True" OnBeforePerformDataSelect="ASPxGridView2_BeforePerformDataSelect" Theme="Office2003Olive" KeyFieldName="visitor_id" OnParseValue="ASPxGridView2_ParseValue" Width="553px">
                                <SettingsEditing Mode="Batch">
                                    <BatchEditSettings EditMode="Row" />
                                </SettingsEditing>
                                <Settings ShowFooter="True" ShowGroupFooter="VisibleIfExpanded" />
                                <SettingsBehavior AllowFocusedRow="True" />
                                <Columns>
                                    <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                    </dx:GridViewCommandColumn>
                                    <dx:GridViewDataTextColumn FieldName="visitor_id" VisibleIndex="1" ReadOnly="True" Visible="False">
                                        <EditFormSettings Visible="False" />
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="inmate_sys_id" VisibleIndex="2" Visible="False">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataCheckColumn FieldName="banned" VisibleIndex="9" Caption="Approved" ToolTip="Please check to approve the Visitor for final entry">
                                    </dx:GridViewDataCheckColumn>
                                    <dx:GridViewDataTextColumn Caption="First Name" FieldName="f_name" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Middle Name" FieldName="m_name" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn Caption="Last Name" FieldName="l_name" VisibleIndex="5">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="age" Visible="False" VisibleIndex="10">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="house_pbox" Visible="False" VisibleIndex="11">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="street" Visible="False" VisibleIndex="12">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="city" Visible="False" VisibleIndex="13">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="district_id" Visible="False" VisibleIndex="14">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="v_card_id" Visible="False" VisibleIndex="15">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="v_phone" Visible="False" VisibleIndex="16">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Sex" FieldName="sex" VisibleIndex="6">
                                        <PropertiesComboBox DataSourceID="GenderDS" TextField="par_desc" ValueField="par_num">
                                        </PropertiesComboBox>
                                        <CellStyle BackColor="#E7FCFE" ForeColor="#003399">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Relationship" FieldName="relation_id" VisibleIndex="7">
                                        <PropertiesComboBox DataSourceID="RelationDS" TextField="par_desc" ValueField="par_num">
                                        </PropertiesComboBox>
                                        <CellStyle BackColor="#E7FCFE" ForeColor="#003399" Font-Bold="True">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                    <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="country_id" VisibleIndex="8" Width="100px">
                                        <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                                        </PropertiesComboBox>
                                        <CellStyle BackColor="#E7FCFE" ForeColor="#003399" Wrap="False">
                                        </CellStyle>
                                    </dx:GridViewDataComboBoxColumn>
                                </Columns>
                                <TotalSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="Total : {00}" FieldName="visitor_id" ShowInColumn="First Name" SummaryType="Count" />
                                </TotalSummary>
                                <GroupSummary>
                                    <dx:ASPxSummaryItem DisplayFormat="Total : {00}" FieldName="visitor_id" ShowInColumn="First Name" SummaryType="Count" />
                                </GroupSummary>
                                <Styles>
                                    <Footer BackColor="#A6D2FF">
                                    </Footer>
                                </Styles>
                            </dx:ASPxGridView>
                        </DetailRow>
                    </Templates>
                    <SettingsPager PageSize="20">
                    </SettingsPager>
                    <Settings ShowFooter="True" ShowGroupedColumns="True" ShowGroupFooter="VisibleAlways" ShowGroupPanel="True" />
                    <SettingsBehavior AllowFixedGroups="True" AllowFocusedRow="True" ProcessFocusedRowChangedOnServer="True" />
                    <SettingsDataSecurity AllowDelete="False" AllowInsert="False" />
                    <SettingsSearchPanel Visible="True" />
                    <Columns>
                        <dx:GridViewCommandColumn ShowEditButton="True" VisibleIndex="0">
                        </dx:GridViewCommandColumn>
                        <dx:GridViewDataTextColumn FieldName="inmate_id" ReadOnly="True" Visible="False" VisibleIndex="1">
                            <EditFormSettings Visible="False" />
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Inmate ID" FieldName="inmate_sys_id" VisibleIndex="2" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="First Name" FieldName="f_name" VisibleIndex="3" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Middle Name" FieldName="m_name" VisibleIndex="4" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Last Name" FieldName="l_name" VisibleIndex="5" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Sex" FieldName="sex" VisibleIndex="6" ReadOnly="True">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Admission Date" FieldName="admiss_dte" ReadOnly="True" VisibleIndex="9">
                        </dx:GridViewDataTextColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Location" FieldName="location_parent_id" VisibleIndex="7">
                            <PropertiesComboBox DataSourceID="LocationDS" TextField="tango" ValueField="location_parent_id">
                            </PropertiesComboBox>
                            <CellStyle BackColor="#A4E9FF" ForeColor="#0033CC">
                            </CellStyle>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Country" FieldName="country_id" VisibleIndex="10">
                            <PropertiesComboBox DataSourceID="CountryDS" TextField="c_name" ValueField="country_id">
                            </PropertiesComboBox>
                            <CellStyle BackColor="#A4E9FF" ForeColor="#0033CC">
                            </CellStyle>
                        </dx:GridViewDataComboBoxColumn>
                        <dx:GridViewDataComboBoxColumn Caption="Custody Status" FieldName="custody_status_id" ReadOnly="True" VisibleIndex="8">
                            <PropertiesComboBox DataSourceID="CStatusDS" TextField="par_desc" ValueField="par_num">
                            </PropertiesComboBox>
                        </dx:GridViewDataComboBoxColumn>
                    </Columns>
                    <GroupSummary>
                        <dx:ASPxSummaryItem DisplayFormat="Total : {00}" FieldName="location_parent_id" ShowInColumn="Location" ShowInGroupFooterColumn="Location" SummaryType="Count" Tag="Location" />
                    </GroupSummary>
                    <Styles>
                        <FocusedRow BackColor="#3399FF" ForeColor="White">
                        </FocusedRow>
                        <GroupFooter ForeColor="#0066FF">
                        </GroupFooter>
                    </Styles>
                    </dx:ASPxGridView>
            <asp:SqlDataSource ID="VisitorsDetailDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT visitor_id, inmate_sys_id, v_photo, banned, relation_id, f_name, m_name, l_name, dob, sex, age, house_pbox, street, city, district_id, country_id, v_card_id, v_phone FROM vistor_stage WHERE (inmate_sys_id = @PrmID)" DeleteCommand="DELETE FROM vistor_stage WHERE visitor_id = ?" InsertCommand="INSERT INTO vistor_stage (visitor_id, inmate_sys_id, v_photo, banned, relation_id, f_name, m_name, l_name, dob, sex, age, house_pbox, street, city, district_id, country_id, v_card_id, v_phone) VALUES (?, ?, ?, IF(?='True',-1,0), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE vistor_stage SET inmate_sys_id = ?, v_photo = ?, banned = IF(?='True',-1,0)  , relation_id = ?, f_name = ?, m_name = ?, l_name = ?, dob = ?, sex = ?, age = ?, house_pbox = ?, street = ?, city = ?, district_id = ?, country_id = ?, v_card_id = ?, v_phone = ? WHERE visitor_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="visitor_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:SessionParameter Name="visitor_id" SessionField="visitor_id" Type="Int32" />
                    <asp:SessionParameter Name="inmate_sys_id" SessionField="inmate_sys_id" Type="Int32" />
                    <asp:SessionParameter Name="v_photo" SessionField="v_photo" Type="Object" />
                    <asp:SessionParameter Name="banned" SessionField="banned" Type="Object" />
                    <asp:SessionParameter Name="relation_id" SessionField="relation_id" Type="Int32" />
                    <asp:SessionParameter Name="f_name" SessionField="f_name" Type="String" />
                    <asp:SessionParameter Name="m_name" SessionField="m_name" Type="String" />
                    <asp:SessionParameter Name="l_name" SessionField="l_name" Type="String" />
                    <asp:SessionParameter Name="dob" SessionField="dob" Type="DateTime" />
                    <asp:SessionParameter Name="sex" SessionField="sex" Type="Int32" />
                    <asp:SessionParameter Name="age" SessionField="age" Type="Object" />
                    <asp:SessionParameter Name="house_pbox" SessionField="house_pbox" Type="Int16" />
                    <asp:SessionParameter Name="street" SessionField="street" Type="String" />
                    <asp:SessionParameter Name="city" SessionField="city" Type="String" />
                    <asp:SessionParameter Name="district_id" SessionField="district_id" Type="Int32" />
                    <asp:SessionParameter Name="country_id" SessionField="country_id" Type="Int32" />
                    <asp:SessionParameter Name="v_card_id" SessionField="v_card_id" Type="String" />
                    <asp:SessionParameter Name="v_phone" SessionField="v_phone" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="prmID" SessionField="inmate_sys_id" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="inmate_sys_id" Type="Int32" />
                    <asp:Parameter Name="v_photo" Type="Object" />
                    <asp:Parameter Name="banned" Type="Object" />
                    <asp:Parameter Name="relation_id" Type="Int32" />
                    <asp:Parameter Name="f_name" Type="String" />
                    <asp:Parameter Name="m_name" Type="String" />
                    <asp:Parameter Name="l_name" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="sex" Type="Int32" />
                    <asp:Parameter Name="age" Type="Object" />
                    <asp:Parameter Name="house_pbox" Type="Int16" />
                    <asp:Parameter Name="street" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="district_id" Type="Int32" />
                    <asp:Parameter Name="country_id" Type="Int32" />
                    <asp:Parameter Name="v_card_id" Type="String" />
                    <asp:Parameter Name="v_phone" Type="String" />
                    <asp:Parameter Name="visitor_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="RelationDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 9) ORDER BY par_code, par_desc"></asp:SqlDataSource>

            <asp:SqlDataSource ID="CountryDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT country_id, c_name, c_abbr FROM country ORDER BY c_name"></asp:SqlDataSource>

            <asp:SqlDataSource ID="InmateVisitorViewDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT inmate_id, inmate_sys_id, f_name, m_name, l_name, sex, location_parent_id, DATE_FORMAT(admiss_dte, '%d-%b-%y') AS admiss_dte, country_id, custody_status_id FROM inmate WHERE (custody_status_id &lt;&gt; 3)" DeleteCommand="DELETE FROM inmate WHERE inmate_id = ?" InsertCommand="INSERT INTO inmate (inmate_id, inmate_sys_id, f_name, m_name, l_name, sex, location_parent_id, admiss_dte, country_id, custody_status_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE inmate SET inmate_sys_id = ?, f_name = ?, m_name = ?, l_name = ?, sex = ?, location_parent_id = ?, admiss_dte = ?, country_id = ?, custody_status_id = ? WHERE inmate_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="inmate_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="inmate_id" Type="Int32" />
                    <asp:Parameter Name="inmate_sys_id" Type="Int32" />
                    <asp:Parameter Name="f_name" Type="String" />
                    <asp:Parameter Name="m_name" Type="String" />
                    <asp:Parameter Name="l_name" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="location_parent_id" Type="Int32" />
                    <asp:Parameter Name="admiss_dte" Type="DateTime" />
                    <asp:Parameter Name="country_id" Type="Int32" />
                    <asp:Parameter Name="custody_status_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="inmate_sys_id" Type="Int32" />
                    <asp:Parameter Name="f_name" Type="String" />
                    <asp:Parameter Name="m_name" Type="String" />
                    <asp:Parameter Name="l_name" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="location_parent_id" Type="Int32" />
                    <asp:Parameter Name="admiss_dte" Type="DateTime" />
                    <asp:Parameter Name="country_id" Type="Int32" />
                    <asp:Parameter Name="custody_status_id" Type="Int32" />
                    <asp:Parameter Name="inmate_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="FamilyDetailDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT visitor_id, inmate_sys_id, v_photo, banned, relation_id, f_name, m_name, l_name, dob, sex, age, house_pbox, street, city, district_id, country_id, v_card_id, v_phone FROM family_stage WHERE (inmate_sys_id = @PrmID)" DeleteCommand="DELETE FROM family_stage WHERE visitor_id = ?" InsertCommand="INSERT INTO family_stage (visitor_id, inmate_sys_id, v_photo, banned, relation_id, f_name, m_name, l_name, dob, sex, age, house_pbox, street, city, district_id, country_id, v_card_id, v_phone) VALUES (?, ?, ?, IF(?='True',-1,0), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE family_stage SET inmate_sys_id = ?, v_photo = ?, banned = IF(?='True',-1,0)  , relation_id = ?, f_name = ?, m_name = ?, l_name = ?, dob = ?, sex = ?, age = ?, house_pbox = ?, street = ?, city = ?, district_id = ?, country_id = ?, v_card_id = ?, v_phone = ? WHERE visitor_id = ?">
                <DeleteParameters>
                    <asp:Parameter Name="visitor_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:SessionParameter Name="visitor_id" SessionField="visitor_id" Type="Int32" />
                    <asp:SessionParameter Name="inmate_sys_id" SessionField="inmate_sys_id" Type="Int32" />
                    <asp:SessionParameter Name="v_photo" SessionField="v_photo" Type="Object" />
                    <asp:SessionParameter Name="banned" SessionField="banned" Type="Object" />
                    <asp:SessionParameter Name="relation_id" SessionField="relation_id" Type="Int32" />
                    <asp:SessionParameter Name="f_name" SessionField="f_name" Type="String" />
                    <asp:SessionParameter Name="m_name" SessionField="m_name" Type="String" />
                    <asp:SessionParameter Name="l_name" SessionField="l_name" Type="String" />
                    <asp:SessionParameter Name="dob" SessionField="dob" Type="DateTime" />
                    <asp:SessionParameter Name="sex" SessionField="sex" Type="Int32" />
                    <asp:SessionParameter Name="age" SessionField="age" Type="Object" />
                    <asp:SessionParameter Name="house_pbox" SessionField="house_pbox" Type="Int16" />
                    <asp:SessionParameter Name="street" SessionField="street" Type="String" />
                    <asp:SessionParameter Name="city" SessionField="city" Type="String" />
                    <asp:SessionParameter Name="district_id" SessionField="district_id" Type="Int32" />
                    <asp:SessionParameter Name="country_id" SessionField="country_id" Type="Int32" />
                    <asp:SessionParameter Name="v_card_id" SessionField="v_card_id" Type="String" />
                    <asp:SessionParameter Name="v_phone" SessionField="v_phone" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="prmID" SessionField="inmate_sys_id" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="inmate_sys_id" Type="Int32" />
                    <asp:Parameter Name="v_photo" Type="Object" />
                    <asp:Parameter Name="banned" Type="Object" />
                    <asp:Parameter Name="relation_id" Type="Int32" />
                    <asp:Parameter Name="f_name" Type="String" />
                    <asp:Parameter Name="m_name" Type="String" />
                    <asp:Parameter Name="l_name" Type="String" />
                    <asp:Parameter Name="dob" Type="DateTime" />
                    <asp:Parameter Name="sex" Type="Int32" />
                    <asp:Parameter Name="age" Type="Object" />
                    <asp:Parameter Name="house_pbox" Type="Int16" />
                    <asp:Parameter Name="street" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="district_id" Type="Int32" />
                    <asp:Parameter Name="country_id" Type="Int32" />
                    <asp:Parameter Name="v_card_id" Type="String" />
                    <asp:Parameter Name="v_phone" Type="String" />
                    <asp:Parameter Name="visitor_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="EthnicDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 4) ORDER BY par_desc"></asp:SqlDataSource>
            <asp:SqlDataSource ID="GenderDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 14) ORDER BY par_desc"></asp:SqlDataSource>
            <asp:SqlDataSource ID="LocationDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT location_parent_id, tango FROM location_parent WHERE (move_type_det_id = 9) ORDER BY tango"></asp:SqlDataSource>
            <asp:SqlDataSource ID="CStatusDS" runat="server" ConnectionString="<%$ ConnectionStrings:dbkolbeConn %>" ProviderName="<%$ ConnectionStrings:dbkolbeConn.ProviderName %>" SelectCommand="SELECT par_num, par_desc FROM param WHERE (par_code = 6) ORDER BY par_desc"></asp:SqlDataSource>

        </div>
    </asp:Content>

