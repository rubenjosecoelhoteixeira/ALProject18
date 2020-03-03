page 50118 SalesInvoiceCuePage
{
    PageType = CardPart;
    SourceTable = SalesInvoiceCueTable;

    layout
    {
        area(Content)
        {
            cuegroup(SalesCueContainer)
            {
                Caption = 'Sales Invoice';
                field(SalesCue; SalesInvoiceOpen)
                {
                    Caption = 'Open';
                    DrillDownPageId = "Sales Invoice List";
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        Reset();
        if not get then begin
            Init;
            Insert;
        end;
    end;
}