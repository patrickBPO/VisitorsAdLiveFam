Imports System.Web.Optimization
Imports MySql.Data.MySqlClient
Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        If GetVStat() Then
            Application("ACloseAllRV") = True
        Else
            Application("ACloseAllRV") = False
        End If

        If GetFStat() Then
            Application("ACloseAllFD") = True
        Else
            Application("ACloseAllFD") = False
        End If
        'Application("ACloseAllRV") = False
        'Application("ACloseAllFD") = False
        ' Fires when the application is started
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)
    End Sub

    Public Shared Function GetFStat() As Boolean
        Dim OpInt As Int16
        Dim ClInt As Int16
        Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
        Dim MyCCmd As New MySqlCommand("select COUNT(*) as c_c_stat from family_stage where s_status = 1 ", MyConn)
        Dim MyOCmd As New MySqlCommand("select COUNT(*) as c_o_stat from family_stage", MyConn)

        MyConn.Open()
        Try
            Dim Urdr As MySqlDataReader = MyOCmd.ExecuteReader
            While Urdr.Read
                OpInt = Urdr("c_o_stat").ToString

            End While
            Urdr.Close()

            Dim Urdr1 As MySqlDataReader = MyCCmd.ExecuteReader

            While Urdr1.Read
                ClInt = Urdr1("c_c_stat").ToString

            End While
            Urdr1.Close()
            MyConn.Close()

        Catch ex As Exception
            Return False
            MyConn.Close()
        End Try

        If OpInt = ClInt Then
            Return True
        Else
            Return False
        End If
    End Function
    Public Shared Function GetVStat() As Boolean
        Dim OpInt As Int16
        Dim ClInt As Int16
        Dim MyConn As New MySqlConnection("server=web;user id=kolbe;password=K0lb3@xs4db;persistsecurityinfo=True;port=3308;database=dbkolbe")
        Dim MyCCmd As New MySqlCommand("select COUNT(*) as c_c_stat from vistor_stage where s_status = 1 ", MyConn)
        Dim MyOCmd As New MySqlCommand("select COUNT(*) as c_o_stat from vistor_stage", MyConn)

        MyConn.Open()
        Try
            Dim Urdr As MySqlDataReader = MyOCmd.ExecuteReader
            While Urdr.Read
                OpInt = Urdr("c_o_stat").ToString

            End While
            Urdr.Close()

            Dim Urdr1 As MySqlDataReader = MyCCmd.ExecuteReader

            While Urdr1.Read
                ClInt = Urdr1("c_c_stat").ToString

            End While
            Urdr1.Close()
            MyConn.Close()

        Catch ex As Exception
            Return False
            MyConn.Close()
        End Try

        If OpInt = ClInt Then
            Return True
        Else
            Return False
        End If
    End Function
End Class