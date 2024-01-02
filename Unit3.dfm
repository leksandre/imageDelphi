object Form3: TForm3
  Left = 510
  Top = 132
  Width = 165
  Height = 302
  Caption = 'brouse'
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
  object ShellTreeView2: TShellTreeView
    Left = 0
    Top = 0
    Width = 157
    Height = 275
    ObjectTypes = [otFolders, otHidden]
    Root = 'rfMyComputer'
    UseShellImages = True
    Align = alClient
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 0
    OnClick = ShellTreeView2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 153
    Height = 33
    Align = alCustom
    Caption = 'sensored'
    TabOrder = 1
  end
end
