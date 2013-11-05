#tag Class
Protected Class App
Inherits WebApplication
	#tag Event
		Sub Open()
		  mailServer = New SMTPSecureSocket
		  mailServer.Address = "smtp.gmail.com"
		  mailServer.Port = 465
		  mailServer.Username = "olivier.colard@gmail.com"
		  mailServer.Password = "Sema@1409"
		  mailServer.ConnectionType = SMTPSecureSocket.SSLv23
		  mailServer.Secure = True
		  
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h0
		mailServer As SMTPSecureSocket
	#tag EndProperty


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
