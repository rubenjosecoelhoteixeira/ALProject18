table 50117 SalesInvoiceCueTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[250])
        {
            DataClassification = ToBeClassified;
        }
        field(2; SalesInvoiceOpen; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count ("Sales Header" where("Document Type" = Filter(Invoice), Status = Filter(Open)));
        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }
}