page 50135 TimecardList
{
    ApplicationArea = All;
    Caption = 'Timecard';
    PageType = List;
    SourceTable = aTimecardTable;
    UsageCategory = Administration;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("	Consultant ID"; Rec."	Consultant ID")
                {
                    ApplicationArea = All;
                }
                field("Project ID"; Rec."Project ID")
                {
                    ApplicationArea = All;
                }
                field("Timecard ID"; Rec."Timecard ID")
                {
                    ApplicationArea = All;
                }
                field("Worked Hours"; Rec."Worked Hours")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    local procedure InsertWorkedHoursIntoProject()
    var
        TimecardRec: Record "aTimecardTable";
        ProjectRec: Record "aProjectTable";
    begin
        if TimecardRec.FindLast() then begin
            ProjectRec.Get(TimecardRec."Project ID");
            ProjectRec."Used Hours" += TimecardRec."Worked Hours";
            ProjectRec.Modify();
        end;
    end;


    trigger OnClosePage()
    var
        TimecardRec: Record "aTimecardTable";
        ProjectRec: Record "aProjectTable";
        TotalHours: Decimal;
        RemainingHours: Decimal;
    begin
        if TimecardRec.FindLast() then begin
            ProjectRec.Get(TimecardRec."Project ID");
            ProjectRec."Used Hours" += TimecardRec."Worked Hours";

            TotalHours := ProjectRec."Total Hours";
            RemainingHours := TotalHours - ProjectRec."Used Hours";
            ProjectRec."Remaining Hours" := RemainingHours;

            ProjectRec.Modify();
        end;
    end;
}