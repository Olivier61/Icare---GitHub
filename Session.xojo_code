#tag Class
Protected Class Session
Inherits WebSession
	#tag Event
		Sub Open()
		  'Make sure we can get to the database on disk
		  'Dim source As FolderItem
		  'source = GetFolderItem("Icare.sqlite")
		  '
		  'Session.db.DatabaseFile  = source
		  '
		  'If not Session.db.Connect Then
		  'MsgBox("Erreur: " + Session.db.ErrorMessage)
		  'End If
		  
		  Dim dbsql As dbIcare = dbIcare.OpenDB
		  
		  
		  If dbsql <> Nil Then
		    db = dbsql
		  End If
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub loadHTML(viewer As WebHTMLViewer, filename As String)
		  Dim File As FolderItem
		  
		  
		  #if DebugBuild then
		    File = GetFolderItem("").Parent.Child(filename)
		  #else
		    File = GetFolderItem("").Child(filename)
		  #endif
		  
		  
		  viewer.Visible = False
		  
		  if File <> Nil and File.Exists then
		    dim t As TextInputStream
		    t = TextInputStream.Open(File)
		    viewer.LoadPage(t.ReadAll)
		    viewer.Visible = True
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function loadHTMLbody(filename As String) As String
		  Dim File As FolderItem
		  
		  
		  #if DebugBuild then
		    File = GetFolderItem("").Parent.Child(filename)
		  #else
		    File = GetFolderItem("").Child(filename)
		  #endif
		  
		  Dim t As TextInputStream
		  DIm txt As String
		  
		  if File <> Nil and File.Exists then
		    t = TextInputStream.Open(File)
		    txt = t.ReadAll
		  end if
		  
		  Return txt
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub sendMailPaym(pNom As String, pMontant As String, pMail As String)
		  Dim msg As New EmailMessage
		  Dim txt As String
		  Dim rsP As RecordSet
		  
		  rsP = Session.db.getProjet
		  
		  txt = trim(loadHTMLbody("mailpaye.txt"))
		  
		  txt = ReplaceAll(txt,"%nom%",trim(pNom))
		  txt = ReplaceAll(txt,"%montant%",trim(pMontant))
		  
		  
		  msg.AddRecipient (trim(pMail))
		  msg.subject = "La vie d'Icare - Merci pour votre don"
		  'msg.BodyHTML = txt
		  msg.BodyPlainText = txt
		  App.mailServer.Messages.Append  msg
		  App.mailServer.SendMail
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub sendMailProm(pNom As String, pMontant As String, pAnonyme As Boolean, pID As Integer, pMail As String)
		  Dim msg As New EmailMessage
		  Dim txt As String
		  Dim rsP As RecordSet
		  
		  rsP = Session.db.getProjet
		  
		  txt = trim(loadHTMLbody("mailmerci.txt"))
		  
		  txt = ReplaceAll(txt,"%nom%",trim(pNom))
		  txt = ReplaceAll(txt,"%montant%",trim(pMontant))
		  txt = ReplaceAll(txt,"%iban%",trim(rsP.Field("IBAN").StringValue))
		  txt = ReplaceAll(txt,"%bic%",trim(rsP.Field("BIC").StringValue))
		  txt = ReplaceAll(txt,"%beneficiaire%",trim(rsP.Field("Beneficiaire").StringValue))
		  txt = ReplaceAll(txt,"%communication%",trim(rsP.Field("CommPrefix").StringValue) + "-" + str(pID))
		  
		  ' ---> changer à partir Projet, ajouter Expediteur dans Projet puis  msg.FromAddress = "Cie Hetre Urbain <olivier.colard@gmail.com>"
		  msg.AddRecipient (trim(pMail))
		  msg.subject = "La vie d'Icare - Merci pour votre promesse de don"
		  msg.BodyPlainText = txt
		  App.mailServer.Messages.Append  msg
		  App.mailServer.SendMail
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub sendMailRappel(pNom As String, pMontant As String,  pID As String, pMail As String, pDate As String, pBenef As String, pIBAN As String, pBIC As String, pComm As String)
		  Dim msg As New EmailMessage
		  Dim txt As String
		  
		  if trim(pMail) = "" then
		    
		    #if DebugBuild then
		      pMail = "olivier@gate61.com"
		    #else
		      return
		    #endif
		    
		  end if
		  
		  
		  
		  txt = trim(loadHTMLbody("mailrappel.txt"))
		  
		  txt = ReplaceAll(txt,"%nom%",trim(pNom))
		  txt = ReplaceAll(txt,"%date%",trim(pDate))
		  txt = ReplaceAll(txt,"%montant%",trim(pMontant))
		  txt = ReplaceAll(txt,"%iban%",trim(pIBAN))
		  txt = ReplaceAll(txt,"%bic%",trim(pBIC))
		  txt = ReplaceAll(txt,"%beneficiaire%",trim(pBenef))
		  txt = ReplaceAll(txt,"%communication%",trim(pComm))
		  
		  
		  msg.AddRecipient (trim(pMail))
		  msg.subject = "La vie d'Icare - Votre promesse de don"
		  msg.BodyPlainText = txt
		  App.mailServer.Messages.Append  msg
		  App.mailServer.SendMail
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		db As dbIcare
	#tag EndProperty

	#tag Property, Flags = &h0
		sAdmin As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		sID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		sUpdated As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		totBudget As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		totPromesse As Integer
	#tag EndProperty


	#tag Constant, Name = ErrorDialogCancel, Type = String, Dynamic = True, Default = \"Do Not Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogMessage, Type = String, Dynamic = True, Default = \"This application has encountered an error and cannot continue.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogQuestion, Type = String, Dynamic = True, Default = \"Please describe what you were doing right before the error occurred:", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorDialogSubmit, Type = String, Dynamic = True, Default = \"Send", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYou, Type = String, Dynamic = True, Default = \"Thank You", Scope = Public
	#tag EndConstant

	#tag Constant, Name = ErrorThankYouMessage, Type = String, Dynamic = True, Default = \"Your feedback helps us make improvements.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptInstructions, Type = String, Dynamic = True, Default = \"To turn Javascript on\x2C please refer to your browser settings window.", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NoJavascriptMessage, Type = String, Dynamic = True, Default = \"Javascript must be enabled to access this page.", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ActiveConnectionCount"
			Visible=true
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BrowserVersion"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GMTOffset"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HashTag"
			Visible=true
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeaderCount"
			Visible=true
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageCode"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageRightToLeft"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PageCount"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Protocol"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sAdmin"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sID"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StatusMessage"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="sUpdated"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Timeout"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="totBudget"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="totPromesse"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_Expiration"
			Group="Behavior"
			InitialValue="-1"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
