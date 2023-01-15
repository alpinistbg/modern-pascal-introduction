{$mode objfpc}{$H+}{$J-}
unit AnotherUnit;
interface

uses
  Classes;

{ Типът (клас) "TComponent" е дефиниран в unit Classes.
  Поради тази причина трябва да използваме uses Classes по-горе. }
procedure DoSomethingWithComponent(var C: TComponent);

implementation

uses SysUtils;

procedure DoSomethingWithComponent(var C: TComponent);
begin
  { Процедурата FreeAndNil е дефинирана в unit SysUtils.
    Тъй като го използваме само в реализацията а не в интерфейсната част, 
    достатъчно е да използваме use SysUtils в секция "implementation". }
  FreeAndNil(C);
end;

end.
