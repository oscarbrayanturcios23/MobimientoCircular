VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   7275
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9165
   LinkTopic       =   "Form1"
   ScaleHeight     =   7275
   ScaleWidth      =   9165
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   5
      Left            =   3000
      Top             =   3360
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   5
      Left            =   3000
      Top             =   2160
   End
   Begin VB.CommandButton Command2 
      Caption         =   "PAUSAR"
      Height          =   495
      Left            =   3600
      TabIndex        =   1
      Top             =   3360
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Caption         =   "INICIAR"
      Height          =   495
      Left            =   3600
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   0
      Top             =   2160
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H0000FFFF&
      BorderColor     =   &H00FF8080&
      FillColor       =   &H00FFFFFF&
      FillStyle       =   2  'Horizontal Line
      Height          =   1215
      Left            =   200
      Shape           =   2  'Oval
      Top             =   100
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Shape1.Left = 200 Then
Timer1.Enabled = True
ElseIf Shape1.Top = 5880 Then
Timer1.Enabled = True
ElseIf Shape1.Left = 7680 Then
Timer2.Enabled = True
ElseIf Shape1.Top = 100 Then
Timer2.Enabled = True
End If
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
Timer2.Enabled = False
End Sub

Private Sub Timer1_Timer()
x = Shape1.Top
x = x + 50
Shape1.Top = x
If Shape1.Top > 5880 Then
Shape1.Top = 5880

x = Shape1.Left
x = x + 50
Shape1.Left = x
If Shape1.Left > 7680 Then
Shape1.Left = 7680
Timer2.Enabled = True
Timer1.Enabled = False
End If
End If
End Sub

Private Sub Timer2_Timer()
x = Shape1.Top
x = x - 50
Shape1.Top = x
If Shape1.Top < 100 Then
Shape1.Top = 100

x = Shape1.Left
x = x - 50
Shape1.Left = x
If Shape1.Left < 200 Then
Shape1.Left = 200
Timer2.Enabled = False
Timer1.Enabled = True
End If
End If
End Sub
