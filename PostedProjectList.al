page 50142 PostedProjectList
{
    ApplicationArea = All;
    Caption = 'Posted Projects';
    PageType = List;
    SourceTable = PostedProjects;
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
                field("Assigned Consultants"; Rec."Assigned Consultants")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
