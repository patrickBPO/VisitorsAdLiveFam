Imports System.Globalization
Imports MySql.Data.Types
Public Class NominalRoll
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            NomRollGV.DataBind()
            NomRollGV.DetailRows.ExpandRow(0)
        End If
    End Sub

    Private Sub NominalRoll_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Not IsPostBack Then
            NomRollGV.DataBind()
            NomRollGV.DetailRows.ExpandRow(0)
        End If
    End Sub

    Protected Sub NomRollGV_ParseValue(sender As Object, e As DevExpress.Web.Data.ASPxParseValueEventArgs) Handles NomRollGV.ParseValue
        If e.Value <> Nothing Then
            e.Value = e.Value.ToString.ToUpper
        End If
    End Sub
End Class