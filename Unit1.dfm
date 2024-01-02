object Form1: TForm1
  Left = 315
  Top = 165
  Width = 585
  Height = 188
  AutoSize = True
  Caption = 'start'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 0
    Width = 38
    Height = 13
    Caption = #1096#1080#1088#1080#1085#1072
  end
  object Label2: TLabel
    Left = 272
    Top = 0
    Width = 37
    Height = 13
    Caption = #1074#1099#1089#1086#1090#1072
  end
  object Label3: TLabel
    Left = 0
    Top = 32
    Width = 47
    Height = 13
    Caption = #1082#1072#1088#1090#1080#1085#1082#1072
  end
  object Label4: TLabel
    Left = 0
    Top = 64
    Width = 68
    Height = 13
    Caption = #1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
  end
  object Label5: TLabel
    Left = 0
    Top = 96
    Width = 108
    Height = 13
    Caption = #1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1072#1088#1090#1080#1085#1086#1082
  end
  object Label6: TLabel
    Left = 456
    Top = 80
    Width = 48
    Height = 13
    Caption = #1085#1072#1079#1074#1072#1085#1080#1077
  end
  object Label7: TLabel
    Left = 312
    Top = 136
    Width = 3
    Height = 13
    Caption = ' '
  end
  object SpinEdit1: TSpinEdit
    Left = 272
    Top = 56
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 1200
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 128
    Top = 56
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 1
    Value = 1600
    OnChange = SpinEdit2Change
  end
  object SpinEdit3: TSpinEdit
    Left = 272
    Top = 24
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 32
    OnChange = SpinEdit3Change
  end
  object SpinEdit4: TSpinEdit
    Left = 128
    Top = 24
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 32
    OnChange = SpinEdit4Change
  end
  object SpinEdit5: TSpinEdit
    Left = 128
    Top = 88
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 50
    OnChange = SpinEdit5Change
  end
  object Button1: TButton
    Left = 208
    Top = 120
    Width = 75
    Height = 17
    Caption = 'run'
    TabOrder = 5
    OnClick = Button1Click
  end
  object SpinEdit6: TSpinEdit
    Left = 272
    Top = 88
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 6
    Value = 37
    OnChange = SpinEdit6Change
  end
  object ShellComboBox1: TShellComboBox
    Left = 8
    Top = 120
    Width = 161
    Height = 22
    Root = 'rfDesktop'
    UseShellImages = True
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object Button2: TButton
    Left = 456
    Top = 48
    Width = 75
    Height = 17
    Caption = 'full_save'
    TabOrder = 8
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 408
    Top = 24
    Width = 153
    Height = 17
    ItemHeight = 13
    TabOrder = 9
    Visible = False
    OnClick = ListBox1Click
  end
  object Edit1: TEdit
    Left = 456
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'image'
  end
  object Button3: TButton
    Left = 8
    Top = 144
    Width = 75
    Height = 17
    Caption = 'brouse'
    TabOrder = 11
    OnClick = Button3Click
  end
end
