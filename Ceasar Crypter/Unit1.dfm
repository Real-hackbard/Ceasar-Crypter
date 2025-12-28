object Form1: TForm1
  Left = 396
  Top = 333
  Caption = 'Ceasar Crypter'
  ClientHeight = 510
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 273
    Top = 53
    Width = 5
    Height = 399
    ExplicitTop = 57
    ExplicitHeight = 311
  end
  object Memo1: TMemo
    Left = 0
    Top = 53
    Width = 273
    Height = 399
    TabStop = False
    Align = alLeft
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'if Memo1.Text = '#39#39' then'
      '  begin'
      '    Beep;'
      '    ShowMessage('#39'No Data to encrypt !'#39');'
      '    Exit;'
      '  end;'
      ''
      '  Button3.Enabled := false;'
      '  Button4.Enabled := false;'
      '  Button6.Enabled := false;'
      '  Button2.Enabled := false;'
      ''
      '  Screen.Cursor := crHourGlass;'
      '  abort := false;'
      '  Memo2.Text := '#39#39';'
      '  chain := length(Memo1.text) + 2;'
      '  SetLength(TableChar, chain);'
      ''
      '    for u := 1 to chain - 1 do'
      '    begin'
      '      c := Memo1.text[u];'
      '      x_ascii := ord(c);'
      '      y_ascii := (x_ascii + StrToInt(Edit1.text)) mod 255;'
      ''
      '        while y_ascii < 0 do'
      '           begin'
      '                y_ascii := y_ascii + 255;'
      '           end;'
      ''
      '        if abort = true then Exit;'
      '    TableChar[u] := chr(y_ascii);'
      ''
      '    end;')
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    OnChange = Memo1Change
    ExplicitHeight = 398
  end
  object Memo2: TMemo
    Left = 278
    Top = 53
    Width = 425
    Height = 399
    TabStop = False
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 491
    Width = 703
    Height = 19
    Panels = <
      item
        Text = 'Lines :'
        Width = 45
      end
      item
        Text = '0'
        Width = 100
      end
      item
        Text = 'Crypt :'
        Width = 50
      end
      item
        Text = '0'
        Width = 100
      end
      item
        Width = 50
      end>
    ExplicitTop = 490
    ExplicitWidth = 699
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    ExplicitWidth = 699
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 196
      Height = 39
      Caption = 'Ceasar Crypter'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 452
    Width = 703
    Height = 39
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 451
    ExplicitWidth = 699
    DesignSize = (
      703
      39)
    object Label2: TLabel
      Left = 184
      Top = 15
      Width = 52
      Height = 13
      Caption = 'Password :'
    end
    object Button1: TButton
      Left = 89
      Top = 6
      Width = 81
      Height = 25
      Caption = 'Encrypt'
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Edit1: TEdit
      Left = 242
      Top = 12
      Width = 73
      Height = 21
      TabStop = False
      TabOrder = 1
      Text = '123'
      OnKeyPress = Edit1KeyPress
    end
    object Button2: TButton
      Left = 616
      Top = 6
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Decrypt'
      TabOrder = 2
      TabStop = False
      OnClick = Button2Click
      ExplicitLeft = 612
    end
    object Button3: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Text'
      TabOrder = 3
      TabStop = False
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 535
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      TabOrder = 4
      TabStop = False
      OnClick = Button4Click
      ExplicitLeft = 531
    end
    object Button5: TButton
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Abort'
      TabOrder = 5
      TabStop = False
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 409
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 6
      TabStop = False
      OnClick = Button6Click
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Textdocument (*.TXT)|*.txt|All Files (*.*)|*.*'
    Left = 200
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 120
    Top = 88
  end
end
