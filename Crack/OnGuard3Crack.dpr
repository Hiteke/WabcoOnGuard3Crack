library OnGuard3Crack;

uses
  FMX.Controls,
  HookIntfs in 'HookIntfs.pas',
  HookUtils in 'HookUtils.pas';

{$R *.res}

var
  Fmx_Controls_TControl_SetEnabled_Next: procedure(Self: TControl; Value: Boolean);
  ControlName: String;

procedure Fmx_Controls_TControl_SetEnabled_Hook(Self: TControl; Value: Boolean);
begin
if Self <> nil then
begin
ControlName := Self.Name + '@' + Self.ToString;
if (ControlName = 'btnChangePin@TCornerButton ''''')
or (ControlName = 'btnChangePin2@TCornerButton ''''')
or (ControlName = 'btnOk@TCornerButton ''OK''')
or (ControlName = 'pnlPin2@TPanel') then
  Value := TRUE;
end;
  Fmx_Controls_TControl_SetEnabled_Next(Self, Value);
end;

begin
  HookProc('fmx250.bpl', '@Fmx@Controls@TControl@SetEnabled$qqrxo',
    @Fmx_Controls_TControl_SetEnabled_Hook,
    @Fmx_Controls_TControl_SetEnabled_Next);
end.
