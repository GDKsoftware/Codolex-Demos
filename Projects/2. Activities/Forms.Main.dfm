object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Activities demo'
  ClientHeight = 513
  ClientWidth = 559
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pngUtils: TGroupBox
    Left = 8
    Top = 255
    Width = 265
    Height = 241
    Caption = 'Utilities'
    TabOrder = 0
    object btnShowHomeDir: TButton
      Left = 24
      Top = 31
      Width = 209
      Height = 25
      Caption = 'Show home directory'
      TabOrder = 0
      OnClick = btnShowHomeDirClick
    end
    object edPath: TEdit
      Left = 24
      Top = 80
      Width = 209
      Height = 23
      TabOrder = 1
      Text = '\\hostname\path'
    end
    object btnValidatePath: TButton
      Left = 24
      Top = 109
      Width = 209
      Height = 25
      Caption = 'Validate UNC path'
      TabOrder = 2
      OnClick = btnValidatePathClick
    end
  end
  object pnlFileOperations: TGroupBox
    Left = 279
    Top = 8
    Width = 250
    Height = 241
    Caption = 'File operations'
    TabOrder = 1
    object btnCreateFile: TButton
      Left = 16
      Top = 31
      Width = 209
      Height = 25
      Caption = 'Create an empty file'
      TabOrder = 0
      OnClick = btnCreateFileClick
    end
    object mmText: TMemo
      Left = 16
      Top = 96
      Width = 209
      Height = 89
      Lines.Strings = (
        'This is a memo.'
        'With multiple lines.')
      TabOrder = 1
    end
    object btnSaveToFile: TButton
      Left = 16
      Top = 191
      Width = 209
      Height = 25
      Caption = 'Save memo to file'
      TabOrder = 2
      OnClick = btnSaveToFileClick
    end
  end
  object pnlHashing: TGroupBox
    Left = 279
    Top = 255
    Width = 250
    Height = 241
    Caption = 'Hashing'
    TabOrder = 2
    object btnGetFileHash: TButton
      Left = 24
      Top = 31
      Width = 209
      Height = 25
      Caption = 'Get file hash'
      TabOrder = 0
      OnClick = btnGetFileHashClick
    end
    object edFileHash: TEdit
      Left = 24
      Top = 80
      Width = 209
      Height = 23
      TabOrder = 1
    end
    object btnCompareFileHash: TButton
      Left = 24
      Top = 109
      Width = 209
      Height = 25
      Caption = 'Compare file hash'
      TabOrder = 2
      OnClick = btnCompareFileHashClick
    end
  end
  object pngVariables: TGroupBox
    Left = 8
    Top = 8
    Width = 265
    Height = 241
    Caption = 'Variables'
    TabOrder = 3
    object btnCreateVariable: TButton
      Left = 24
      Top = 31
      Width = 209
      Height = 25
      Caption = 'Create variable'
      TabOrder = 0
      OnClick = btnCreateVariableClick
    end
    object btnAddToList: TButton
      Left = 24
      Top = 109
      Width = 209
      Height = 25
      Caption = 'Add to list'
      TabOrder = 1
      OnClick = btnAddToListClick
    end
    object edAddToList: TEdit
      Left = 24
      Top = 80
      Width = 209
      Height = 23
      TabOrder = 2
    end
  end
end
