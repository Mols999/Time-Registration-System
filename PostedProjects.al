table 50141 PostedProjects
{
    Caption = 'Posted Projects';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Project ID"; Integer)
        {
            Caption = 'Project ID';
        }
        field(2; "Project Name"; Text[100])
        {
            Caption = 'Project Name';
        }
        field(3; "Total Hours"; Decimal)
        {
            Caption = 'Total Hours';
        }
        field(4; "Remaining Hours"; Decimal)
        {
            Caption = 'Remaining Hours';
        }
        field(5; "Used Hours"; Decimal)
        {
            Caption = 'Used Hours';
        }
        field(6; "Assigned Consultants"; Text[250])
        {
            Caption = 'Assigned Consultants';
        }
    }
    keys
    {
        key(PK; "Project ID")
        {
            Clustered = true;
        }
    }
}
