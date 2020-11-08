program Employees;

uses
  Vcl.Forms,
  EmployeeListForm in 'EmployeeListForm.pas' {frmEmployeeList},
  EmployeeDetailsForm in 'EmployeeDetailsForm.pas' {frmEmployeeDetails},
  DataModule in 'DataModule.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmEmployeeList, frmEmployeeList);
  Application.CreateForm(TfrmEmployeeDetails, frmEmployeeDetails);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
