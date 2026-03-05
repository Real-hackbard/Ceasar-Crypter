object Form1: TForm1
  Left = 424
  Top = 195
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Caesar procedure'
  ClientHeight = 214
  ClientWidth = 501
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object lblShift: TLabel
    Left = 14
    Top = 11
    Width = 172
    Height = 18
    Alignment = taRightJustify
    Caption = 'Displacement distance:'
  end
  object lblPlain: TLabel
    Left = 110
    Top = 116
    Width = 75
    Height = 18
    Alignment = taRightJustify
    Caption = 'Plain text:'
  end
  object lblCipher: TLabel
    Left = 102
    Top = 164
    Width = 84
    Height = 18
    Alignment = taRightJustify
    Caption = 'Ciphertext:'
  end
  object Label1: TLabel
    Left = 192
    Top = 56
    Width = 123
    Height = 18
    Caption = 'Only lower case,'
  end
  object Label2: TLabel
    Left = 192
    Top = 80
    Width = 158
    Height = 18
    Caption = 'No special characters'
  end
  object edtShift: TEdit
    Left = 192
    Top = 8
    Width = 33
    Height = 26
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '3'
  end
  object edtPlain: TEdit
    Left = 192
    Top = 112
    Width = 145
    Height = 26
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'github'
  end
  object edtCipher: TEdit
    Left = 192
    Top = 160
    Width = 145
    Height = 26
    TabStop = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnEncode: TButton
    Left = 352
    Top = 112
    Width = 137
    Height = 25
    Caption = 'Encrypt'
    TabOrder = 3
    TabStop = False
    OnClick = Encode
  end
  object btnDecode: TButton
    Left = 352
    Top = 160
    Width = 137
    Height = 25
    Caption = 'Decipher'
    TabOrder = 4
    TabStop = False
    OnClick = Decode
  end
end
