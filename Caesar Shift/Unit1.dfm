object Form1: TForm1
  Left = 341
  Top = 200
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Caesar Shift'
  ClientHeight = 230
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 44
    Height = 16
    Caption = 'Word :'
  end
  object Label2: TLabel
    Left = 208
    Top = 68
    Width = 115
    Height = 16
    Caption = '.......................'
  end
  object Label3: TLabel
    Left = 208
    Top = 108
    Width = 115
    Height = 16
    Caption = '.......................'
  end
  object Label4: TLabel
    Left = 440
    Top = 108
    Width = 40
    Height = 16
    Caption = 'gegen'
  end
  object Label5: TLabel
    Left = 208
    Top = 148
    Width = 115
    Height = 16
    Caption = '.......................'
  end
  object Label6: TLabel
    Left = 208
    Top = 188
    Width = 115
    Height = 16
    Caption = '.......................'
  end
  object Edit1: TEdit
    Left = 80
    Top = 20
    Width = 121
    Height = 24
    TabStop = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 153
    Height = 25
    Caption = 'Turn around'
    TabOrder = 1
    TabStop = False
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 104
    Width = 153
    Height = 25
    Caption = 'Swap letters'
    TabOrder = 2
    TabStop = False
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 384
    Top = 104
    Width = 49
    Height = 24
    TabStop = False
    TabOrder = 3
    Text = 'a'
  end
  object Edit3: TEdit
    Left = 496
    Top = 104
    Width = 49
    Height = 24
    TabStop = False
    TabOrder = 4
    Text = 'i'
  end
  object Button3: TButton
    Left = 24
    Top = 144
    Width = 153
    Height = 25
    Caption = 'Capital letters'
    TabOrder = 5
    TabStop = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 24
    Top = 184
    Width = 153
    Height = 25
    Caption = 'Caesar Shift'
    TabOrder = 6
    TabStop = False
    OnClick = Button4Click
  end
end
