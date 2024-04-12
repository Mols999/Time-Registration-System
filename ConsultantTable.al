table 50130 aConsultantTable
{
    Caption = 'ConsultantTable';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Consultant ID"; Integer)
        {
            Caption = 'Consultant ID';
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
        }
        field(4; Email; Text[100])
        {
            Caption = 'Email';
        }
        field(5; "Job Title"; Text[50])
        {
            Caption = 'Job Title';
        }
    }
    keys
    {
        key(PK; "Consultant ID")
        {
            Clustered = true;
        }
    }
}
