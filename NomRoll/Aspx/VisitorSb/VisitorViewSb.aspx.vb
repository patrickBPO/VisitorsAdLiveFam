Imports System.Globalization
Imports MySql.Data.Types
Imports DevExpress.Web
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.Data
Public Class VisitorViewSb
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not IsPostBack Then
        '    VisViewerGV.DataBind()
        '    VisViewerGV.DetailRows.ExpandRow(0)
        'End If
    End Sub

    Private Sub NominalRoll_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Not IsPostBack Then
            VisViewerGV.DataBind()
            VisViewerGV.DetailRows.ExpandRow(0)

        End If
    End Sub

    Protected Sub ASPxGridView2_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Dim sndr As ASPxGridView = TryCast(sender, ASPxGridView)
        'sndr = sender
        Session("inmate_sys_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
        'Select Case sndr.ID
        '    Case "ASPxGridView2"
        '        If Application("ACloseAllRV") = True Then
        '            sndr.Enabled = False
        '        Else
        '            sndr.Enabled = True
        '        End If
        '        Exit Select
        '    Case "ASPxGridView1"
        '        If Application("ACloseAllFD") = True Then
        '            sndr.Enabled = False
        '        Else
        '            sndr.Enabled = True
        '        End If

        '        Exit Select

        'End Select


    End Sub

    Protected Sub ASPxGridView2_ParseValue(sender As Object, e As ASPxParseValueEventArgs)
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub
End Class