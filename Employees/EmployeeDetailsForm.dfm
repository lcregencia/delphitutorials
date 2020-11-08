object frmEmployeeDetails: TfrmEmployeeDetails
  Left = 0
  Top = 0
  Caption = 'Employee Details'
  ClientHeight = 328
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 270
    Align = alClient
    TabOrder = 0
    ExplicitTop = -6
    ExplicitHeight = 374
    object Label1: TLabel
      Left = 32
      Top = 43
      Width = 64
      Height = 13
      Caption = 'Employee ID:'
    end
    object Label2: TLabel
      Left = 32
      Top = 83
      Width = 51
      Height = 13
      Caption = 'Firstname:'
    end
    object Label3: TLabel
      Left = 32
      Top = 123
      Width = 50
      Height = 13
      Caption = 'Lastname:'
    end
    object Label4: TLabel
      Left = 32
      Top = 164
      Width = 70
      Height = 13
      Caption = 'Email Address:'
    end
    object edtEmployeeID: TEdit
      Left = 138
      Top = 40
      Width = 135
      Height = 24
      Color = 13424867
      ReadOnly = True
      TabOrder = 0
    end
    object edtEmployeeFirstname: TEdit
      Left = 138
      Top = 80
      Width = 303
      Height = 24
      TabOrder = 1
    end
    object edtEmployeeLastname: TEdit
      Left = 138
      Top = 120
      Width = 303
      Height = 24
      TabOrder = 2
    end
    object edtEmployeeEmail: TEdit
      Left = 138
      Top = 161
      Width = 303
      Height = 24
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 270
    Width = 481
    Height = 58
    Align = alBottom
    TabOrder = 1
    object btnSave: TButton
      Left = 280
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnCancel: TButton
      Left = 384
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
    end
  end
end
