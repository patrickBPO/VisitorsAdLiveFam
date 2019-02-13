Imports System.Globalization
Imports MySql.Data.Types
Imports DevExpress.Web
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.Data
Imports MySql.Data.MySqlClient
Public Class VisitorViewSb
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Dim tstArray() As String
        'If Not IsPostBack Then
        '    VisViewerGV.DataBind()
        '    VisViewerGV.DetailRows.ExpandRow(0)
        'End If

        'Session("SHostName") = Request.UserHostName
        'tstArray = Split(Net.Dns.GetHostEntry(Request.UserHostName).HostName, ".", 2)
        'For i As Integer = 0 To 0
        '    Session("SHostEntry") = tstArray(i)
        'Next
        'Session("SHostEntry") = Split(Net.Dns.GetHostEntry(Request.UserHostName).HostName, ".", 2)

        'Session("SHostIP") = Request.UserHostAddress
        'Response.Write("HostIP: " & Server.HtmlEncode("" & Session("SHostIP")) & "<br/>")
        'Response.Write("HostEntry: " & Server.HtmlEncode("" & Session("SHostEntry")) & "<br/>")

        'Response.Write("First Asp.net Line<br/>")
    End Sub

    Private Sub NominalRoll_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Not IsPostBack Then
            VisViewerGV.DataBind()
            VisViewerGV.DetailRows.ExpandRow(0)

        End If
    End Sub

    Protected Sub ASPxGridView2_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Dim sndr As ASPxGridView = TryCast(sender, ASPxGridView)
        'Dim txt As String
        'sndr = sender
        Session("inmate_sys_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        'txt = sndr.GetRowValues(VisViewerGV.FocusedRowIndex, "f_name")
        Select Case sndr.ID
            Case "ASPxGridView2"
                If Application("ACloseAllRV") = True Then
                    sndr.Enabled = False
                Else
                    sndr.Enabled = True
                End If
                Exit Select
            Case "ASPxGridView1"
                If Application("ACloseAllFD") = True Then
                    sndr.Enabled = False
                Else
                    sndr.Enabled = True
                End If

                Exit Select

        End Select


    End Sub

    Protected Sub ASPxGridView2_ParseValue(sender As Object, e As ASPxParseValueEventArgs)
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub

    Protected Sub ASPxGridView2_RowUpdated(sender As Object, e As ASPxDataUpdatedEventArgs)


        'Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
        'Dim MyUCmd As New MySqlCommand("update vistor_stage set s_status=" & sndr.Value &
        '                               " where inmate_sys_id = " & VStageID, MyConn)
        'Dim EInt As Boolean

        'MyConn.Open()
        'Try
        '    Dim Urdr As MySqlDataReader = MyUCmd.ExecuteReader
        '    'While Urdr.Read
        '    '    EInt = Convert.ToBoolean(Urdr("s_status").ToString)

        '    'End While
        '    Urdr.Close()
        '    MyConn.Close()

        'Catch ex As Exception
        '    EInt = False
        '    MyConn.Close()
        'End Try
    End Sub

    Protected Sub ASPxGridView2_RowInserted(sender As Object, e As ASPxDataInsertedEventArgs)

    End Sub

    Protected Sub ASPxGridView2_RowUpdating(sender As Object, e As ASPxDataUpdatingEventArgs)
        '--->> Below can be used for User Auditing Purposes(when more comprehesive info needed) <<-----
        'Dim sndr As ASPxGridView = TryCast(sender, ASPxGridView)
        'Dim tst As String
        'Dim tstArray() As String

        'Session("inmate_sys_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        'tst = sndr.GetRowValues(sndr.FocusedRowIndex, "f_name") '--Works...add rest for Auditing

        'Session("SUser") = System.Web.HttpContext.Current.User.Identity.Name '-- User Id
        'Session("SAction") = "UPDATE"

        'tstArray = Split(Net.Dns.GetHostEntry(Request.UserHostName).HostName, ".", 2) '-- Split Fully Qualified DNS Entry
        'For i As Integer = 0 To 0
        '    Session("SHostEntry") = tstArray(i) '-- Client Computer Name
        'Next


        '--->> Below can be the Insert for User Auditing Purposes(when more comprehesive info needed) <<-----
        'INSERT INTO vistor_au (visitor_id, inmate_sys_id, v_photo, banned, relation_id, 
        'f_name, m_name, l_name, dob, sex, age, house_pbox, street, city, district_id, country_id, v_card_id, v_phone, au_user, au_action) 
        'VALUES(?, ?, ?, If(?='True',-1,0), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
    End Sub

    Protected Sub VisViewerGV_FocusedRowChanged(sender As Object, e As EventArgs) Handles VisViewerGV.FocusedRowChanged
        TryCast(sender, ASPxGridView).DetailRows.ExpandRow(VisViewerGV.FocusedRowIndex)
    End Sub

    Protected Sub VisViewerGV_DetailRowExpandedChanged(sender As Object, e As ASPxGridViewDetailRowEventArgs) Handles VisViewerGV.DetailRowExpandedChanged
        VisViewerGV.FocusedRowIndex = Convert.ToInt16(e.VisibleIndex.ToString)
    End Sub
End Class