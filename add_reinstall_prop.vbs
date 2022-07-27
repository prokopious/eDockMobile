set objArgs = WScript.Arguments
set o_installer = CreateObject("WindowsInstaller.Installer")
set o_database = o_Installer.OpenDatabase(objArgs(0), 1)
s_SQL1 = "INSERT INTO Property (Property, Value) Values( 'REINSTALLMODE', 'amus')"
s_SQL2 = "UPDATE Dialog SET Dialog.Attributes = '0' WHERE Dialog.Dialog='FilesInUse'"
set o_MSIView = o_DataBase.OpenView( s_SQL1)
o_MSIView.Execute
o_DataBase.Commit
set o_MSIView = o_DataBase.OpenView( s_SQL2)
o_MSIView.Execute
o_DataBase.Commit



