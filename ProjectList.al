page 50134 ProjectList
{
    ApplicationArea = All;
    Caption = 'Project';
    PageType = List;
    SourceTable = aProjectTable;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Project ID"; Rec."Project ID")
                {
                    ApplicationArea = All;
                }
                field("Project Name"; Rec."Project Name")
                {
                    ApplicationArea = All;
                }
                field("Remaining Hours"; Rec."Remaining Hours")
                {
                    ApplicationArea = All;
                }
                field("Total Hours"; Rec."Total Hours")
                {
                    ApplicationArea = All;
                }
                field("Used Hours"; Rec."Used Hours")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
}
