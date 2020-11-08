object frmEmployeeList: TfrmEmployeeList
  Left = 0
  Top = 0
  Caption = 'Employee List'
  ClientHeight = 606
  ClientWidth = 1002
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 1002
    Height = 503
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 40
    ExplicitWidth = 681
    ExplicitHeight = 345
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1000
      Height = 501
      Align = alClient
      DataSource = MyDataSource1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 1002
    Height = 62
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 549
    object btnCreate: TButton
      Left = 624
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Create'
      TabOrder = 0
      OnClick = btnCreateClick
    end
    object btnUpdate: TButton
      Left = 720
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 1
      OnClick = btnUpdateClick
    end
    object btnDelete: TButton
      Left = 816
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object btnClose: TButton
      Left = 904
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Close'
      TabOrder = 3
      OnClick = btnCloseClick
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1002
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 80
    ExplicitTop = 408
    ExplicitWidth = 185
    object Label1: TLabel
      Left = 16
      Top = 11
      Width = 37
      Height = 13
      Caption = 'Search:'
    end
    object edt_SearchKeyword: TEdit
      Left = 64
      Top = 8
      Width = 209
      Height = 21
      TabOrder = 0
      OnChange = edt_SearchKeywordChange
    end
    object btn_Search: TButton
      Left = 279
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Go'
      TabOrder = 1
      OnClick = btn_SearchClick
    end
  end
  object MyDataSource1: TMyDataSource
    DataSet = DM.QrySelect
    Left = 32
    Top = 560
  end
end
