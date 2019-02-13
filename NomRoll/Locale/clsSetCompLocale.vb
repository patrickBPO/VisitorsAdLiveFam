Imports NomRoll.GlobalVar
Imports Microsoft.Win32
Imports System
Public Class clsSetCompLocale
    Public Function GetLocale() As Boolean
        glbHWID = MakeHWID()
        If Not GetRegKyVal(glbCPU, glbCompNme) Then
            Return False
        Else
            Return True
        End If
    End Function
    Public Function SetLocale(ByVal intLoc As Integer, ByVal strLoc As String) As Boolean
        glbHWID = MakeHWID()
        If Not CreateRegKyVal(glbCPU, glbHWID, intLoc, strLoc) Then
            Return False
        Else
            Return True
        End If
    End Function
    Friend Function MakeHWID() As String
        Dim hw As New clsComputerInfo

        Dim hdd As String
        Dim cpu As String
        Dim mb As String
        Dim mac As String

        cpu = hw.GetProcessorId()
        glbCPU = cpu
        hdd = hw.GetVolumeSerial("C")
        mb = hw.GetMotherBoardID()
        mac = hw.GetMACAddress()
        'MsgBox(cpu & "=cpu   " & hdd & "=hdd   " & mb & "=mb   " & mac & "=mac")

        Dim hwidid As String = UCase(hw.getMD5Hash(cpu & hdd & mb & mac)) ' MessageBox.Show(Strings.UCase(hwid))


        MakeHWID = hwidid

    End Function

    '{-- Attempt to find existing Registry Key Based on the CPU ID 
    '    When Application Resides on web server then Machine name of network client needs to be passed --}
    Friend Function GetRegKyVal(ByVal cpuId As String, ByVal CompNme As String) As Boolean

        Dim SubKyName As String
        Dim KyValName As String
        Dim kyVal As String
        Dim locValNme As String
        Dim intlocValNme As String
        Dim regVersion As Microsoft.Win32.RegistryKey
        Dim regKey As Microsoft.Win32.RegistryKey
        'Dim integ As Integer

        'Dim getVal As String

        'SubKyName = "HKEY_CURRENT_USER\Software\Reg\" & cpuId
        SubKyName = "HKEY_CLASSES_ROOT\Software\Movement"
        KyValName = cpuId & "Val"
        kyVal = cpuId
        locValNme = "LocID"
        intlocValNme = "LocNme"

        Try
            regVersion =
                RegistryKey.OpenRemoteBaseKey(RegistryHive.ClassesRoot, CompNme).OpenSubKey("Software\Movement", True)
            'Microsoft.Win32.Registry.ClassesRoot.OpenSubKey("Software\Movement", True)
            If regVersion Is Nothing Then
                Return False
            Else
                ' - Routine to Update values
                regKey = RegistryKey.OpenRemoteBaseKey(RegistryHive.ClassesRoot, CompNme).OpenSubKey("Software\Movement", True)
                'regKey = Registry.ClassesRoot.OpenSubKey("Software\Movement\", True)
                If regKey Is Nothing Then
                    Return False
                Else

                    'My.Computer.Registry.GetValue(SubKyName, KyValName, kyVal)
                    regKey = RegistryKey.OpenRemoteBaseKey(RegistryHive.ClassesRoot, CompNme).OpenSubKey("Software\Movement", True)
                    glbLocID = regKey.GetValue(locValNme)
                    'glbLocID = My.Computer.Registry.GetValue(SubKyName, locValNme, True)
                    'MsgBox("Location->" & glbLocID)
                    If glbLocID = -1 Then
                        Return False
                    Else

                        regKey = RegistryKey.OpenRemoteBaseKey(RegistryHive.ClassesRoot, CompNme).OpenSubKey("Software\Movement", True)
                        glbLocNme = regKey.GetValue(intlocValNme)
                        'glbLocNme = My.Computer.Registry.GetValue(SubKyName, intlocValNme, True)
                        'MsgBox("Location->" & glbLocNme)

                        If glbLocNme Is Nothing Then
                            Return False
                        Else
                            Return True
                        End If
                    End If

                    regKey.Close()
                End If

                regVersion.Close()
            End If
        Catch
            Return False
        End Try

    End Function

    '{-- Create Registry Key Based on the CPU ID and Add a SubKey with 
    '    a value based on the created Composite Hardware ID
    Friend Function CreateRegKyVal(ByVal cpuId As String,
                                    ByVal hwidId As String,
                                   ByVal intlocVal As Integer,
                                   ByVal locNmeVal As String,
                                   ByVal CompNme As String
                                    ) As Boolean
        Dim SubKyName As String
        Dim KyValName As String
        Dim kyVal As String
        Dim locValNme As String
        Dim intlocValNme As String
        Dim regVersion As Microsoft.Win32.RegistryKey
        Dim regKey As Microsoft.Win32.RegistryKey
        Dim client As RegistryKey
        'Dim integ As Integer

        'Dim getVal As String

        'SubKyName = "HKEY_CURRENT_USER\Software\Reg\" & cpuId
        SubKyName = "HKEY_CLASSES_ROOT\Software\Movement"
        KyValName = cpuId & "Val"
        kyVal = cpuId
        locValNme = "LocID"
        intlocValNme = "LocNme"

        Try
            regVersion =
                RegistryKey.OpenRemoteBaseKey(RegistryHive.ClassesRoot, CompNme).OpenSubKey("Software\Movement", True)
            'Registry.ClassesRoot.OpenSubKey("Software\Movement", True)
            If regVersion Is Nothing Then

                My.Computer.Registry.ClassesRoot.CreateSubKey("Software\Movement")
                My.Computer.Registry.SetValue(SubKyName, KyValName, kyVal)
                My.Computer.Registry.SetValue(SubKyName, locValNme, intlocVal)
                My.Computer.Registry.SetValue(SubKyName, intlocValNme, locNmeVal)
                Return True
                'regVersion.Close()
            Else
                ' - Routine to Update values
                regKey = Registry.ClassesRoot.OpenSubKey("Software\Movement\", True)
                If regKey Is Nothing Then
                    'regVersion.CreateSubKey(hwidId)
                    My.Computer.Registry.ClassesRoot.CreateSubKey("Software\Movement\")
                    My.Computer.Registry.SetValue(SubKyName, KyValName, kyVal)
                    My.Computer.Registry.SetValue(SubKyName, locValNme, intlocVal)
                    My.Computer.Registry.SetValue(SubKyName, intlocValNme, locNmeVal)
                Else
                    ' 1. Delete SubKey
                    My.Computer.Registry.ClassesRoot.DeleteSubKey("Software\Movement\", True)
                    ' 2 Recreate SubKey
                    My.Computer.Registry.ClassesRoot.CreateSubKey("Software\Movement\")
                    My.Computer.Registry.SetValue(SubKyName, KyValName, kyVal)
                    My.Computer.Registry.SetValue(SubKyName, locValNme, intlocVal)
                    My.Computer.Registry.SetValue(SubKyName, intlocValNme, locNmeVal)
                    'integ = My.Computer.Registry.ClassesRoot.GetValue(SubKyName, paidValNme, Nothing)
                    'MsgBox("PaidVal->" & integ)
                    regKey.Close()
                End If

                regVersion.Close()
            End If
            'getVal = My.Computer.Registry.GetValue(SubKyName, atimeValNme, "NONE")
            'MsgBox(getVal)
            CreateRegKyVal = True
        Catch
            CreateRegKyVal = False
        End Try

    End Function

End Class
