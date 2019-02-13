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

    Protected Sub VisViewerGV_FocusedRowChanged(sender As Object, e As EventArgs) Handles VisViewerGV.FocusedRowChanged
        TryCast(sender, ASPxGridView).DetailRows.ExpandRow(VisViewerGV.FocusedRowIndex)
    End Sub

    Protected Sub VisViewerGV_DetailRowExpandedChanged(sender As Object, e As ASPxGridViewDetailRowEventArgs) Handles VisViewerGV.DetailRowExpandedChanged
        VisViewerGV.FocusedRowIndex = Convert.ToInt16(e.VisibleIndex.ToString)
    End Sub
End Class