Imports System.Globalization
Imports MySql.Data.Types
Imports DevExpress.Web
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.Data
Imports MySql.Data.MySqlClient
Public Class VisitorView
    Inherits System.Web.UI.Page
    Dim TotAprove As Int16
    Dim VStageID As Int16
    Dim EInt As Boolean
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("ACloseAllRV") = True Then
            ChkAllRV.Checked = True
        Else
            ChkAllRV.Checked = False
        End If

        If Application("ACloseAllFD") = True Then
            ChkAllFV.Checked = True
        Else
            ChkAllFV.Checked = False
        End If
        'If Not IsPostBack Then
        '    VisViewerGV.DataBind()
        '    VisViewerGV.DetailRows.ExpandRow(0)
        'End If

    End Sub

    Private Sub NominalRoll_Init(sender As Object, e As EventArgs) Handles Me.Init
        ' Determine the sections to render
        If Context.User.Identity.Name.Equals("admin@kolbe.bz") _
            Or Context.User.Identity.Name.Equals("fhower@kolbe.bz") Then
            If Not IsPostBack Then
                VisViewerGV.DataBind()
                VisViewerGV.DetailRows.ExpandRow(0)

            End If
        Else
            Response.Redirect("~/Aspx/ErrorHandle/UnAuth")
        End If
        'If Not IsPostBack Then
        '    VisViewerGV.DataBind()
        '    VisViewerGV.DetailRows.ExpandRow(0)

        'End If
        'If IsPostBack Then
        '    VisViewerGV.FocusedRowIndex = 0
        'End If

    End Sub

    Protected Sub ASPxGridView2_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("inmate_sys_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        'Call FindThisChkVal()
        VStageID = Session("inmate_id")

    End Sub

    Protected Sub ASPxGridView2_ParseValue(sender As Object, e As ASPxParseValueEventArgs)
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub

    Protected Sub ChkThisRV_DataBound(sender As Object, e As EventArgs)
        Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
        sndr = sender
        EInt = False
        If IsCallback Then
            VStageID = VisViewerGV.GetRowValues(VisViewerGV.FocusedRowIndex, "inmate_id").ToString

            'VStageID = Session("inmate_id")
            Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
            Dim MyCmd As New MySqlCommand("select s_status from vistor_stage where inmate_sys_id = " & VStageID, MyConn)

            MyConn.Open()
            Try
                Dim Urdr As MySqlDataReader = MyCmd.ExecuteReader
                While Urdr.Read
                    EInt = Convert.ToBoolean(Urdr("s_status").ToString)

                End While
                Urdr.Close()
                MyConn.Close()

            Catch ex As Exception
                EInt = False
                MyConn.Close()
            End Try

            If EInt = False Then
                Session("LblRVStatus") = "OPEN"
                sndr.CheckState = CheckState.Unchecked
                sndr.Text = "CLOSE THIS"
            Else
                Session("LblRVStatus") = "CLOSED"
                sndr.CheckState = CheckState.Checked
                sndr.Text = "OPEN THIS"
            End If
        Else
            VStageID = VisViewerGV.GetRowValues(VisViewerGV.FocusedRowIndex, "inmate_id").ToString
            Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
            Dim MyUCmd As New MySqlCommand("update vistor_stage set s_status=" & sndr.Value &
                                           " where inmate_sys_id = " & VStageID, MyConn)
            Dim EInt As Boolean
           
            MyConn.Open()
            Try
                Dim Urdr As MySqlDataReader = MyUCmd.ExecuteReader
                'While Urdr.Read
                '    EInt = Convert.ToBoolean(Urdr("s_status").ToString)

                'End While
                Urdr.Close()
                MyConn.Close()

            Catch ex As Exception
                EInt = False
                MyConn.Close()
            End Try

            If sndr.CheckState = CheckState.Checked Then
                Session("LblRVStatus") = "CLOSED"
                sndr.Text = "OPEN THIS"
            Else
                Session("LblRVStatus") = "OPEN"
                sndr.Text = "CLOSE THIS"
            End If

        End If
    End Sub


    Protected Sub VisViewerGV_FocusedRowChanged(sender As Object, e As EventArgs) Handles VisViewerGV.FocusedRowChanged
        VStageID = VisViewerGV.GetRowValues(VisViewerGV.FocusedRowIndex, "inmate_id").ToString
        TryCast(sender, ASPxGridView).DetailRows.ExpandRow(VisViewerGV.FocusedRowIndex)
    End Sub

    Protected Sub VisViewerGV_DetailRowExpandedChanged(sender As Object, e As ASPxGridViewDetailRowEventArgs) Handles VisViewerGV.DetailRowExpandedChanged
        VisViewerGV.FocusedRowIndex = Convert.ToInt16(e.VisibleIndex.ToString)
    End Sub



    Protected Sub ChkThisRV_CheckedChanged(sender As Object, e As EventArgs)
        Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
        'Dim sndr As New ASPxCheckBox
        sndr = sender
        If Not IsCallback Then

            VStageID = VisViewerGV.GetRowValues(VisViewerGV.FocusedRowIndex, "inmate_id").ToString
            Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
            Dim MyUCmd As New MySqlCommand("update vistor_stage set s_status=" & sndr.Value &
                                       " where inmate_sys_id = " & VStageID, MyConn)
            Dim EInt As Boolean

            MyConn.Open()
        Try
            Dim Urdr As MySqlDataReader = MyUCmd.ExecuteReader
            'While Urdr.Read
            '    EInt = Convert.ToBoolean(Urdr("s_status").ToString)

            'End While
            Urdr.Close()
            MyConn.Close()

        Catch ex As Exception
            EInt = False
            MyConn.Close()
        End Try
            If sndr.CheckState = CheckState.Checked Then
                Session("LblRVStatus") = "CLOSED"
                sndr.Text = "OPEN THIS"
            Else
                Session("LblRVStatus") = "OPEN"
                sndr.Text = "CLOSE THIS"
            End If
            'Session("LblRVStatus") = Session("ChkThisRV")

        End If

    End Sub

    Protected Sub ChkAllRV_ValueChanged(sender As Object, e As EventArgs)
        Dim EInt As Boolean
        Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
        'Dim sndr As New ASPxCheckBox
        Application("ACloseAllRV") = sndr.Value
        'sndr = sender
        EInt = False
        'If Not IsCallback Then
        Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
        Dim MyUCmd As New MySqlCommand("update vistor_stage set s_status=" & sndr.Value, MyConn)

        MyConn.Open()
        Try
            Dim Urdr As MySqlDataReader = MyUCmd.ExecuteReader
            'While Urdr.Read
            '    EInt = Convert.ToBoolean(Urdr("s_status").ToString)

            'End While
            Urdr.Close()
            MyConn.Close()

        Catch ex As Exception
            EInt = False
            MyConn.Close()
        End Try
        If sndr.CheckState = CheckState.Checked Then
            sndr.Text = "All Visitors (CLOSED)"
        Else
            sndr.Text = "All Visitors (OPEN)"
        End If
        'End If
    End Sub

    Protected Sub ChkAllRV_Init(sender As Object, e As EventArgs) Handles ChkAllRV.Init
        Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
        'Dim sndr As ASPxCheckBox = DirectCast(sender, ASPxCheckBox)
        'sndr = sender

        If Application("ACloseAllRV") = True Then
                sndr.Checked = True
                sndr.Text = "All Visitors (CLOSED)"
            Else
                'sndr.Checked = False
                sndr.Text = "All Visitors (OPEN)"
            End If

        
    End Sub

    Protected Sub ChkAllFV_Init(sender As Object, e As EventArgs) Handles ChkAllFV.Init
        Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
        'sndr = sender
        If Application("ACloseAllFD") = True Then
            'sndr.Checked = True
            sndr.Text = "All Family (CLOSED)"
        Else
            'sndr.Checked = False
            sndr.Text = "All Family (OPEN)"
        End If

    End Sub

    Protected Sub ChkAllFV_ValueChanged(sender As Object, e As EventArgs) Handles ChkAllFV.ValueChanged
        Dim EInt As Boolean
        Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
        'Dim sndr As New ASPxCheckBox
        Application("ACloseAllFD") = sndr.Value
        'sndr = sender
        EInt = False

        Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
        Dim MyUCmd As New MySqlCommand("update family_stage set s_status=" & sndr.Value, MyConn)

        MyConn.Open()
        Try
            Dim Urdr As MySqlDataReader = MyUCmd.ExecuteReader
            'While Urdr.Read
            '    EInt = Convert.ToBoolean(Urdr("s_status").ToString)

            'End While
            Urdr.Close()
            MyConn.Close()

        Catch ex As Exception
            EInt = False
            MyConn.Close()
        End Try
        If sndr.CheckState = CheckState.Checked Then
            sndr.Text = "All Family (CLOSED)"
        Else
            sndr.Text = "All Family (OPEN)"
        End If

    End Sub



    'Protected Sub ChkAllRV_Load(sender As Object, e As EventArgs) Handles ChkAllRV.Load
    '    Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
    '    'sndr = sender
    '    If Application("ACloseAllRV") = True Then
    '        sndr.Checked = True
    '        sndr.Text = "All Visitors (CLOSED)"
    '    Else
    '        sndr.Checked = False
    '        sndr.Text = "All Visitors (OPEN)"
    '    End If

    'End Sub

    'Protected Sub ChkAllFV_Load(sender As Object, e As EventArgs) Handles ChkAllFV.Load
    '    Dim sndr As ASPxCheckBox = TryCast(sender, ASPxCheckBox)
    '    'sndr = sender
    '    If Application("ACloseAllFD") = True Then
    '        sndr.Checked = True
    '        sndr.Text = "All Family (CLOSED)"
    '    Else
    '        sndr.Checked = False
    '        sndr.Text = "All Family (OPEN)"
    '    End If

    'End Sub
End Class