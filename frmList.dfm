object ListForm: TListForm
  Left = 231
  Top = 103
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Lista plik�w przeznaczonych do zmiany'
  ClientHeight = 453
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = EASTEUROPE_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblFolder: TLabel
    Left = 8
    Top = 384
    Width = 90
    Height = 13
    Caption = 'Wybrany folder:'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblInfo: TLabel
    Left = 8
    Top = 400
    Width = 580
    Height = 13
    Caption = 
      'Wszystkich pozycji na li�cie: 0. Wybrano do automatycznej zmiany' +
      ' nazwy: 0. Liczba pozycji, kt�re nie b�d� zmienione: 0.'
  end
  object lblMainInfo: TLabel
    Left = 8
    Top = 8
    Width = 673
    Height = 26
    AutoSize = False
    Caption = 
      'Poni�sza lista zawiera propozycje automatycznej zmiany nazw plik' +
      '�w w wybranym folderze. Odznaczone (nie b�d� zmieniane) zosta�y ' +
      'te po- zycje, kt�rych ID3Tag zawiera niepe�ne dane lub w przypad' +
      'ku, gdy zmiana spowodowa�aby zast�pienie istniej�cego pliku.'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object btnOK: TButton
    Left = 560
    Top = 424
    Width = 120
    Height = 25
    Hint = 
      'Rozpocznij zmian�#Klikni�cie rozpoczyna proces zmiany nazwy wszy' +
      'stkich znaznaczonych plik�w.'
    Caption = 'Rozpocznij zmian�'
    Default = True
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 480
    Top = 424
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Anuluj'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object fList: TCheckListBox
    Left = 8
    Top = 40
    Width = 673
    Height = 337
    OnClickCheck = fListClickCheck
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    Style = lbOwnerDrawFixed
    TabOrder = 0
    OnClick = fListClick
    OnDblClick = fListDblClick
    OnDrawItem = fListDrawItem
  end
  object pnlMode: TPanel
    Left = 275
    Top = 428
    Width = 41
    Height = 17
    Caption = 'Result'
    TabOrder = 3
    Visible = False
  end
  object pnlCount: TPanel
    Left = 323
    Top = 428
    Width = 41
    Height = 17
    Caption = '0'
    TabOrder = 4
    Visible = False
  end
  object btnSelectAll: TBitBtn
    Left = 112
    Top = 424
    Width = 24
    Height = 25
    Hint = 
      'Zaznacz wszystkie#Kliknij, aby zaznaczy� wszystkie pozycje na li' +
      '�cie.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = btnSelectAllClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFF7777FFFFFFFFFFFF7AA7FFFFFFFFFFFF7AA7FFFFFFFFFFFF7AA7FF
      FFFFFFFFFF7AA7FFFFFFF777777AA777777FF7AAAAAAAAAAAA7FF7AAAAAAAAAA
      AA7FF777777AA777777FFFFFFF7AA7FFFFFFFFFFFF7AA7FFFFFFFFFFFF7AA7FF
      FFFFFFFFFF7AA7FFFFFFFFFFFF7777FFFFFFFFFFFFFFFFFFFFFF}
  end
  object btnDeselectAll: TBitBtn
    Left = 140
    Top = 424
    Width = 24
    Height = 25
    Hint = 
      'Odznacz wszystkie#Kliknij, aby odznaczy� wszystkie pozycje na li' +
      '�cie.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = btnDeselectAllClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF77777777777777FF7AAAAAAAAAAAA7FF7AAAAAAAAAA
      AA7FF77777777777777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object btnChange: TBitBtn
    Left = 168
    Top = 424
    Width = 24
    Height = 25
    Hint = 
      'Odwr�� zaznaczenie#Zamienia wszystkie zaznaczone pozycje w nieza' +
      'znaczone i odwrotnie.'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = btnChangeClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
      FFFFFFFFF777777FFFFFFFFF7AAAAAA7FFFFFFF7AAA77AAA7FFFFF7AA77FF77A
      A7FFF7AA7FFFFFF7A7FFF7AA7FFFFFF7AA7FF7A7FFFFFFFF7A7FF7A7FFFFFFFF
      7A7FF7AA7FFFFFF7AA7FF7AA7FFFFFF7A7FFFF7AA77FF77AA7FFFFF7AAA77AAA
      7FFFFFFF7AAAAAA7FFFFFFFFF777777FFFFFFFFFFFFFFFFFFFFF}
  end
  object btnCloseAndEdit: TBitBtn
    Left = 8
    Top = 424
    Width = 97
    Height = 25
    Hint = 
      'Edytuj...#Kliknij, aby zamkn�� to okno i przej�� do edycji tag�w' +
      ' ID3Tagu zaznaczonej pozycji, na pierwszej zak�adce w oknie g��w' +
      'nym programu. Mo�esz r�wnie� dwuklikn�� na li�cie, aby osi�gn�� ' +
      'ten sam efekt.'
    Caption = 'Edytuj...'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnCloseAndEditClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000C40E0000C40E0000100000000000000004FE04008482
      8400C4C2C400FCFEFC0000000100000000000000000000000000DF013000DA00
      1800D300160077000000001C380000E818000012160000000000333333333333
      3333333333333333333333333333333333333333333333333333311113111131
      1113311113111131111331001310013100133122131221312213310013100131
      0013312213122131221331111311113111133111131111311113333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
end
