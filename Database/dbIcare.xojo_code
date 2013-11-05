#tag Class
Protected Class dbIcare
Inherits SQLiteDatabase
	#tag Method, Flags = &h0
		Sub BeginTransaction()
		  Self.SQLExecute("BEGIN TRANSACTION")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CancelTransaction()
		  Self.Rollback
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EndTransaction()
		  Self.Commit
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetInvoiceItemsForInvoice(invoiceNum As String) As RecordSet
		  Dim stmt As SQLitePreparedStatement = Self.Prepare("SELECT * FROM InvoiceItems INNER JOIN Products ON Products.Code = InvoiceItems.ProductCode WHERE InvoiceNo=?")
		  stmt.BindType(0, SQLitePreparedStatement.SQLITE_INTEGER)
		  stmt.Bind(0, invoiceNum)
		  
		  Dim rs As RecordSet = stmt.SQLSelect
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPayements() As RecordSet
		  Dim sql As String = "SELECT * FROM Payement ORDER BY ID DESC"
		  
		  Dim rs As RecordSet
		  rs = Self.SQLSelect(sql)
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getProjet() As RecordSet
		  Dim sql As String = "SELECT * FROM Projet"
		  
		  Dim rs As RecordSet
		  rs = Self.SQLSelect(sql)
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPromesseID(ID As String) As RecordSet
		  Dim stmt As SQLitePreparedStatement = Self.Prepare("SELECT * FROM Promesse WHERE ID=? ORDER BY ID " ) 
		  stmt.BindType(0, SQLitePreparedStatement.SQLITE_INTEGER)
		  stmt.Bind(0, ID)
		  
		  Dim rs As RecordSet = stmt.SQLSelect
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPromesseName(Name As String) As RecordSet
		  Dim stmt As SQLitePreparedStatement = Self.Prepare("SELECT * FROM Promesse WHERE Nom LIKE ? ORDER BY Nom ")
		  stmt.BindType(0, SQLitePreparedStatement.SQLITE_TEXT)
		  stmt.Bind(0, "%"+name+"%")
		  
		  Dim rs As RecordSet = stmt.SQLSelect
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getPromesses() As RecordSet
		  Dim sql As String = "SELECT * FROM Promesse ORDER BY ID DESC"
		  
		  Dim rs As RecordSet
		  rs = Self.SQLSelect(sql)
		  
		  Return rs
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function OpenDB() As dbIcare
		  
		  Dim dbFile As FolderItem
		  'dbFile = GetFolderItem("icare.sqlite")
		  
		  #if DebugBuild then
		    dbFile = GetFolderItem("").Parent.Child("icare.sqlite")
		  #else
		    dbFile = GetFolderItem("").Child("icare.sqlite")
		  #endif
		  
		  Dim db As New dbIcare
		  If dbFile.Exists Then
		    db.DatabaseFile = dbFile
		    If db.Connect Then
		      'MsgBox("db Connected")
		    else
		      MsgBox("Erreur: " + db.ErrorMessage)
		    End If
		  else
		    MsgBox("icare.sqlite not found")
		  End if
		  
		  Return db
		  
		  
		  
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="DatabaseFile"
			Visible=true
			Type="FolderItem"
			EditorType="FolderItem"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugMode"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EncryptionKey"
			Visible=true
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MultiUser"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ShortColumnNames"
			Visible=true
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ThreadYieldInterval"
			Visible=true
			Type="Integer"
			EditorType="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Visible=true
			Type="Double"
			EditorType="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
