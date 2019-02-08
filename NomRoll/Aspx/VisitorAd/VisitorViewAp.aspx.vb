Imports System.Globalization
Imports MySql.Data.Types
Imports DevExpress.Web
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.Data
Public Class VisitorViewAp
    Inherits System.Web.UI.Page
    Dim TotAprove As Int16
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not IsPostBack Then
        '    VisViewerGV.DataBind()
        '    VisViewerGV.DetailRows.ExpandRow(0)
        'End If
    End Sub

    Private Sub NominalRoll_Init(sender As Object, e As EventArgs) Handles Me.Init
        ' Determine the sections to render
        If Context.User.Identity.Name.Equals("admin@kolbe.bz") _
            Or Context.User.Identity.Name.Equals("fhower@kolbe.bz") _
            Or Context.User.Identity.Name.Equals("vadmin@kolbe.bz") Then
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
    End Sub

    Protected Sub ASPxGridView2_BeforePerformDataSelect(sender As Object, e As EventArgs)
        Session("inmate_sys_id") = (TryCast(sender, ASPxGridView)).GetMasterRowKeyValue()

    End Sub

    Protected Sub ASPxGridView2_ParseValue(sender As Object, e As ASPxParseValueEventArgs)
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub

End Class