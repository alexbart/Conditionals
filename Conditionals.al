page 50103 Conditionals
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Conditionals';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input as required';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        level: Integer;
                    begin
                        GetSuggestion();
                    end;

                }
            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestions; Suggestions)
                {
                    ApplicationArea = All;
                    Editable = false;

                }
            }
        }
    }

    var
        Level: Text[20];
        Suggestions: Text[50];
        Difficulty: Integer;

    procedure GetSuggestion()

    begin
        Level := '';
        Suggestions := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestions := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestions := 'Attend Instructor-led sessions';
                end;
            9 .. 10:
                begin
                    Level := 'Master';
                    Suggestions := 'Attend instructor-led and self-study';
                end;
        end;
    end;

}