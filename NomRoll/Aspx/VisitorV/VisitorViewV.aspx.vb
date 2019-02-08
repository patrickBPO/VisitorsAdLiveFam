Imports System.Globalization
Imports MySql.Data.Types
Imports DevExpress.Web
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.Data
Public Class VisitorViewV
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
        Session("inmate_sys_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()
    End Sub
End Class