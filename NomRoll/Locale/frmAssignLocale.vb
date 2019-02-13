Imports System.ComponentModel
Imports NomRoll.GlobalVar
Public Class frmAssignLocale
    Dim dSetLoc As New clsSetCompLocale
    Private Sub btnOk_Click(sender As Object, e As EventArgs) Handles btnOk.Click
        Dim resp = MsgBox("The machine will be assigned to the following location [" & cboLoc.Text & "]", vbYesNo, "Confirm Computer Location")
        If resp = MsgBoxResult.Yes Then
            If Not dSetLoc.SetLocale(cboLoc.SelectedValue, cboLoc.Text) Then
                glbErrMesg = ErrorMes(6, "F")
                MsgBox(glbErrMesg, vbCritical, "Location Assignment Failed")
                cboLoc.Select()
            Else
                glbLocNme = cboLoc.Text
                'MovementSystem.Show()
                frmLogin.Show()
                Me.Close()
            End If
        Else
            cboLoc.Select()
        End If
    End Sub

    Private Sub frmAssignLocale_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DataSet1.location_parent' table. You can move, or remove it, as needed.
        Me.Location_parentTableAdapter.Fill(Me.DataSet1.location_parent)
        If dSetLoc.GetLocale() Then
            'MovementSystem.Show()
            frmLogin.Show()
            Me.Close()
        End If
    End Sub
End Class