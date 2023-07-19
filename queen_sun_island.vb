Public Class Nature's Palette

'Declare variables
Dim Color1 As String
Dim Color2 As String
Dim Color3 As String
Dim Color4 As String
Dim Color5 As String
Dim Color6 As String
Dim Color7 As String

'Create a form 
Public Sub Form_Load()

Form.Height = 600
Form.Width = 800

End Sub

'Set the colors
Sub SetColors()

Color1 = "Blue"
Color2 = "Green"
Color3 = "Red"
Color4 = "Purple"
Color5 = "Yellow"
Color6 = "Orange"
Color7 = "Brown"

End Sub

'Display the colors to the form 
Sub DisplayColors()

Dim Label1 As Label
Dim Label2 As Label
Dim Label3 As Label
Dim Label4 As Label
Dim Label5 As Label
Dim Label6 As Label
Dim Label7 As Label

Label1.Text = Color1
Label2.Text = Color2
Label3.Text = Color3
Label4.Text = Color4
Label5.Text = Color5
Label6.Text = Color6
Label7.Text = Color7

'Set the locations
Label1.Top = 10
Label1.Left = 10

Label2.Top = 10
Label2.Left = 120

Label3.Top = 10
Label3.Left = 330

Label4.Top = 10
Label4.Left = 450

Label5.Top = 10
Label5.Left = 560

Label6.Top = 10
Label6.Left = 670

Label7.Top = 10
Label7.Left = 780

'Add labels to form
Form.Controls.Add(Label1)
Form.Controls.Add(Label2)
Form.Controls.Add(Label3)
Form.Controls.Add(Label4)
Form.Controls.Add(Label5)
Form.Controls.Add(Label6)
Form.Controls.Add(Label7)

End Sub

'Draw a picture using the colors
Sub DrawPicture()

Dim PictureBox1 As PictureBox
PictureBox1.Height = 400
PictureBox1.Width = 400
PictureBox1.Top = 100
PictureBox1.Left = 100
Form.Controls.Add(PictureBox1)

Dim brush1 As Brush
Dim brush2 As Brush
Dim brush3 As Brush
Dim brush4 As Brush
Dim brush5 As Brush
Dim brush6 As Brush
Dim brush7 As Brush

brush1 = New SolidBrush(Color.FromName(Color1))
brush2 = New SolidBrush(Color.FromName(Color2))
brush3 = New SolidBrush(Color.FromName(Color3))
brush4 = New SolidBrush(Color.FromName(Color4))
brush5 = New SolidBrush(Color.FromName(Color5))
brush6 = New SolidBrush(Color.FromName(Color6))
brush7 = New SolidBrush(Color.FromName(Color7))

Dim g As Graphics
g = PictureBox1.CreateGraphics

g.FillRectangle(brush1, 0, 0, 100, 100)
g.FillRectangle(brush2, 100, 0, 100, 100)
g.FillRectangle(brush3, 200, 0, 100, 100)
g.FillRectangle(brush4, 300, 0, 100, 100)
g.FillRectangle(brush5, 0, 100, 100, 100)
g.FillRectangle(brush6, 100, 100, 100, 100)
g.FillRectangle(brush7, 200, 100, 100, 100)

End Sub

End Class