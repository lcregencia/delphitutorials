unit EmployeeListForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, DBAccess, MyAccess;

type
  TfrmEmployeeList = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    btnCreate: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    Panel3: TPanel;
    edt_SearchKeyword: TEdit;
    Label1: TLabel;
    btn_Search: TButton;
    MyDataSource1: TMyDataSource;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCreateClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btn_SearchClick(Sender: TObject);
    procedure edt_SearchKeywordChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RefreshGrid;
  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation

{$R *.dfm}

uses DataModule, EmployeeDetailsForm;

procedure TfrmEmployeeList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmployeeList.btnCreateClick(Sender: TObject);
begin
  frmEmployeeDetails.Caption := 'Employee Details - Add';
  frmEmployeeDetails.showmodal;
  RefreshGrid;

end;

procedure TfrmEmployeeList.btnDeleteClick(Sender: TObject);
begin
if DBGrid1.Fields[0].Text = '' then
    begin
      MessageDlg('No records selected!', mtInformation, [mbOk], 0);
      exit;
    end;

  if MessageDlg('Are you sure you want to delete this record?',   mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        with DM.QryDelete do
           begin
             active := false;
             sql.Clear;
             sql.Add('Delete from Employees where ID = ' + DBGrid1.Fields[0].Text);
             execsql;
           end;
         MessageDlg('Record successfully deleted!', mtInformation, [mbOk], 0);
         RefreshGrid;
     end;
end;

procedure TfrmEmployeeList.btnUpdateClick(Sender: TObject);
begin
  frmEmployeeDetails.Caption := 'Employee Details - Update';
  frmEmployeeDetails.Hint := DBGrid1.Fields[0].Text; //there are several ways to store the selected ID but will use the Hint property of the form
  frmEmployeeDetails.showmodal;
  RefreshGrid;
end;

procedure TfrmEmployeeList.btn_SearchClick(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TfrmEmployeeList.edt_SearchKeywordChange(Sender: TObject);
begin
  RefreshGrid;
end;

procedure TfrmEmployeeList.FormShow(Sender: TObject);
begin
 RefreshGrid;
end;


procedure TfrmEmployeeList.RefreshGrid;
begin
//this is a custom procedure/sub routine
//I created this one since this particular code is going to be reuse several times across this form
//It is also best to identify areas where there are repeating codes and just create a function/procedure for it to simplify things


  with dm.QrySelect do
    begin
      active := false;
      sql.Clear;
      sql.Text := 'SELECT * FROM Employees WHERE last_name LIKE ' + quotedstr('%' + edt_SearchKeyword.Text +'%');
      active := true;
    end;

end;
end.
