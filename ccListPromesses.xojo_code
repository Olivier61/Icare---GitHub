#tag WebPage
Begin WebContainer ccListPromesses
   Compatibility   =   ""
   Cursor          =   0
   Enabled         =   True
   Height          =   718
   HelpTag         =   ""
   HorizontalCenter=   0
   Index           =   -2147483648
   Left            =   0
   LockBottom      =   True
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   LockVertical    =   False
   Style           =   "None"
   TabOrder        =   0
   Top             =   0
   VerticalCenter  =   0
   Visible         =   True
   Width           =   1180
   ZIndex          =   1
   _HorizontalPercent=   0.0
   _IsEmbedded     =   False
   _Locked         =   False
   _NeedsRendering =   True
   _OfficialControl=   False
   _OpenEventFired =   False
   _ShownEventFired=   False
   _VerticalPercent=   0.0
   Begin WebListBox lbProm
      AlternateRowColor=   &cEDF3FE00
      ColumnCount     =   7
      ColumnWidths    =   "50,200,80,200,80,100,80"
      Cursor          =   0
      Enabled         =   True
      HasHeading      =   True
      Height          =   544
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      InitialValue    =   "No	Nom	Montant	Mail	Anonyme	Date	Paye"
      Left            =   108
      ListIndex       =   -1
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      MinimumRowHeight=   22
      Multiline       =   False
      PrimaryRowColor =   &cFFFFFF00
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      Top             =   105
      VerticalCenter  =   0
      Visible         =   True
      Width           =   964
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebLabel lCherche
      Cursor          =   1
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   108
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   0
      Text            =   "Recherche par:"
      Top             =   57
      VerticalCenter  =   0
      Visible         =   True
      Width           =   111
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebRadioGroup rgCherche
      ColumnCount     =   1
      Cursor          =   1
      Enabled         =   True
      Height          =   44
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      InitialValue    =   "`No Promesse`,`True`,``,`True`,`True`\n`Nom`,`True`,``,`False`,`True`"
      Left            =   220
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   2
      Scope           =   0
      Style           =   "0"
      TabOrder        =   1
      Top             =   47
      VerticalCenter  =   0
      Visible         =   True
      Width           =   114
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebTextField txtCherche
      AutoCapitalize  =   True
      AutoComplete    =   True
      AutoCorrect     =   True
      Cursor          =   0
      Enabled         =   True
      HasFocusRing    =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   360
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   2
      Text            =   ""
      Top             =   57
      Type            =   0
      VerticalCenter  =   0
      Visible         =   True
      Width           =   239
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebButton bCherche
      Caption         =   "Recherche"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   623
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   3
      Top             =   57
      VerticalCenter  =   0
      Visible         =   True
      Width           =   100
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin WebButton bPaye
      Caption         =   "Enregistrer Payement pour Promesse (double-click)"
      Cursor          =   0
      Enabled         =   True
      Height          =   22
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   381
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   0
      Style           =   "0"
      TabOrder        =   4
      Top             =   676
      VerticalCenter  =   0
      Visible         =   True
      Width           =   418
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _VerticalPercent=   0.0
   End
   Begin dialogPayment dialogPayment1
      Cursor          =   0
      Enabled         =   True
      Height          =   357
      HelpTag         =   ""
      HorizontalCenter=   0
      Index           =   -2147483648
      Left            =   140
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MinHeight       =   0
      MinWidth        =   0
      Resizable       =   True
      Scope           =   0
      Style           =   "0"
      TabOrder        =   -1
      TabPanelIndex   =   0
      Title           =   "Sans_titre"
      Top             =   140
      Type            =   3
      VerticalCenter  =   0
      Visible         =   True
      Width           =   630
      ZIndex          =   1
      _HorizontalPercent=   0.0
      _IsEmbedded     =   False
      _Locked         =   False
      _NeedsRendering =   True
      _OfficialControl=   False
      _OpenEventFired =   False
      _ShownEventFired=   False
      _VerticalPercent=   0.0
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Shown()
		  
		  Dim rs As RecordSet
		  
		  rs = Session.db.getPromesses
		  
		  listProm(rs)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub listProm(rs As RecordSet)
		  lbProm.ListIndex = -1
		  lbProm.DeleteAllRows
		  
		  lbProm.ColumnStyle(2) = style_textAlignRight
		  lbProm.ColumnStyle(6) = style_textAlignRight
		  
		  Dim id, nom, montant, paye, mail, anonyme, date As string
		  
		  If rs <> Nil Then
		    For i As Integer = 1 To rs.RecordCount
		      
		      id = str(rs.Field("ID").StringValue)
		      nom = str(rs.Field("Nom").StringValue)
		      montant = str(rs.Field("Montant").StringValue) + " €  "
		      mail = str(rs.Field("Mail").StringValue)
		      if rs.Field("Anonyme").BooleanValue then
		        anonyme = "oui"
		      else
		        anonyme = ""
		      end if
		      if rs.Field("Date").DateValue <> Nil then
		        date = str(rs.Field("Date").DateValue.AbbreviatedDate)
		      else
		        date = ""
		      end if
		      paye = str(rs.Field("MontantPaye").StringValue) + " €  "
		      
		      
		      lbProm.AddRow(id, nom, montant, mail, anonyme, date, paye)
		      
		      rs.MoveNext
		    Next
		    rs.Close
		    
		    bCherche.Enabled = True
		    bPaye.Enabled = True
		    rgCherche.Enabled = True
		    txtCherche.Enabled = True
		  else
		    bCherche.Enabled = False
		    bPaye.Enabled = False
		    rgCherche.Enabled = False
		    txtCherche.Enabled = False
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub recPayment()
		  If lbProm.ListIndex > -1 Then
		    
		    Session.sID = pID
		    dialogPayment1.Init
		    dialogPayment1.Show
		  else
		    Session.sID = ""
		    
		  End If
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		pID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events lbProm
	#tag Event
		Sub DoubleClick(X As Integer, Y As Integer, Details As REALbasic.MouseEvent)
		  recPayment
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  if lbProm.ListIndex > -1 Then
		    pID = lbProm.Cell(lbProm.ListIndex, 0)
		  else
		    pID = ""
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rgCherche
	#tag Event
		Sub KeyPressed(Details As REALbasic.KeyEvent)
		  'Dim p As Pair
		  'p = Me.SelectedCell
		  '
		  'Select Case p.Left
		  'Case 0
		  'txtCherche.Type = WebTextField.TypeNumber
		  'Case 1
		  'txtCherche.Type = WebTextField.TypeNormal
		  'End Select
		  '
		  '
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bCherche
	#tag Event
		Sub Action()
		  Dim rs As RecordSet
		  
		  If len(trim(txtCherche.Text)) > 0 then
		    Dim p As Pair
		    p = rgCherche.SelectedCell
		    
		    Select Case p.Left
		    Case 0
		      rs = Session.db.getPromesseID(txtCherche.Text)
		    Case 1
		      rs = Session.db.getPromesseName(txtCherche.Text)
		    end Select
		  else
		    rs = Session.db.getPromesses
		    
		  end if
		  
		  listProm(rs)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events bPaye
	#tag Event
		Sub Action()
		  recPayment
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Cursor"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Auto"
			"1 - Standard Pointer"
			"2 - Finger Pointer"
			"3 - IBeam"
			"4 - Wait"
			"5 - Help"
			"6 - Arrow All Directions"
			"7 - Arrow North"
			"8 - Arrow South"
			"9 - Arrow East"
			"10 - Arrow West"
			"11 - Arrow North East"
			"12 - Arrow North West"
			"13 - Arrow South East"
			"14 - Arrow South West"
			"15 - Splitter East West"
			"16 - Splitter North South"
			"17 - Progress"
			"18 - No Drop"
			"19 - Not Allowed"
			"20 - Vertical IBeam"
			"21 - Crosshair"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HorizontalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="pID"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollbarsVisible"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabOrder"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="VerticalCenter"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ZIndex"
		Group="Behavior"
		InitialValue="1"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_HorizontalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_IsEmbedded"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_Locked"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_NeedsRendering"
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OfficialControl"
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_OpenEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ShownEventFired"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="_VerticalPercent"
		Group="Behavior"
		Type="Double"
	#tag EndViewProperty
#tag EndViewBehavior
