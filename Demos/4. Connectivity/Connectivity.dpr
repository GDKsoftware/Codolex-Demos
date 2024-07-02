program Connectivity;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, Connectivity.Rest.NobelPrizes, Connectivity.Rest.NobelPrizes.Interfaces, Connectivity.Rest.Space, Connectivity.Rest.Space.Interfaces;

begin
  try
    var NobelPrizes: INobelPrizes := TNobelPrizes.Create;

    // Call to REST API
    var NobelPrizeList := NobelPrizes.ListAll();

    // Via the 'old' way
    Writeln('Show results the ''old'' way');
    for var NobelPrize in NobelPrizeList.nobelPrizes.Value do
    begin
      var CategoryName:string := NobelPrize.category.Value.en;
      var Year:string := NobelPrize.awardYear;
      var LaureateNames := '';

      for var Laureate in NobelPrize.laureates.Value do
      begin
        if Laureate.fullName.HasValue then
        begin
          if not LaureateNames.IsEmpty then LaureateNames := LaureateNames + ', ';

          LaureateNames := LaureateNames + Laureate.fullName.Value.en;
        end;
      end;

      var NobelPrizeText := Format('%s (%s): %s', [CategoryName, Year, LaureateNames]);
      Writeln(NobelPrizeText);
    end;
    Writeln('---');

    // Now using Codolex
    Writeln('Now using Codolex');
    var NobelPrizeText := TNobelPrizes.ConvertListToText(NobelPrizeList);
    Writeln(NobelPrizeText);
    Writeln('---');


    // Print all the people in space
    Writeln('People in space:');
    var Space: ISpace := TSpace.Create;
    var PeopleInSpaceText := Space.ListPeopleInSpace();
    WriteLn(PeopleInSpaceText);

    ReadLn;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
