table 50132 aTimecardTable
{
    Caption = 'TimecardTable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Timecard ID"; Integer)
        {
            Caption = 'Timecard ID';
        }
        field(2; "	Consultant ID"; Integer)
        {
            Caption = '	Consultant ID';
        }
        field(3; "Project ID"; Integer)
        {
            Caption = 'Project ID';
        }
        field(4; "Worked Hours"; Decimal)
        {
            Caption = 'Worked Hours';
        }
    }
    keys
    {
        key(PK; "Timecard ID")
        {
            Clustered = true;
        }
    }
}
