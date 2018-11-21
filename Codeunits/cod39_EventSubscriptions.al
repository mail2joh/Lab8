codeunit 50139 EventSubscriptions
// CSD1.00 - 2018-01-01 - D. E. Veloper
// Chapter 7 - Lab 2-1
{
    [EventSubscriber(ObjectType::Codeunit, 212, 'OnBeforeResLedgEntryInsert', '', true, true)]
    local procedure PostResJnlLineOnBeforeResLedgEntryInsert(var ResLedgerEntry: Record "Res. Ledger Entry"; ResJournalLine: Record "Res. Journal Line");
    var
        c: Codeunit "Res. Jnl.-Post Line";
    begin
        ResLedgerEntry."CSD Seminar No." := ResJournalLine."CSD Seminar No.";
        ResLedgerEntry."CSD Seminar Registration No." := ResJournalLine."CSD Seminar Registration No.";
    end;
    /*
        [EventSubscriber(ObjectType::Page, page::Navigate, 'OnAfterNavigateFindRecords', '', true, true)]

        local procedure ExtendNavigateOnAfterNavigateFindRecordsvar (DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text);
        var
            SeminarLedgerEntry: record "CSD Seminar Ledger Entry";
            PostedSeminarRegHeader: record "CSD Posted Seminar Reg. Header";
            DocNoOfRecords: Integer;
            NextEntryNo: Integer;
        begin
            if PostedSeminarRegHeader.ReadPermission then begin
                PostedSeminarRegHeader.Reset;
                PostedSeminarRegHeader.SetFilter("No.", DocNoFilter);
                PostedSeminarRegHeader.SetFilter("Posting Date",
                PostingDateFilter);
                DocNoOfRecords := PostedSeminarRegHeader.Count;

                With DocumentEntry do begin
                    if DocNoOfRecords = 0 then
                        exit;
                    if FindLast then
                        NextEntryNo := "Entry No." + 1
                    else
                        NextEntryNo := 1;
                    Init;
                    "Entry No." := NextEntryNo;
                    "Table ID" := Database::"CSD Posted Seminar Reg. Header";
                    "Document Type" := 0;
                    "Table Name" := COPYSTR(PostedSeminarRegHeader.
                    TableCaption, 1, MAXSTRLEN("Table Name"));
                    "No. of Records" := DocNoOfRecords;
                    Insert;
                end;
            end;
        end;

        [EventSubscriber(ObjectType::Page, page::Navigate, 'OnAfterNavigateShowRecords', '', true, true)]
        local procedure ExtendNavigateOnAfterNavigateShowRecords(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text; ItemTrackingSearch: Boolean);
        var
            SeminarLedgerEntry: record "CSD Seminar Ledger Entry";
            PostedSeminarRegHeader: record "CSD Posted Seminar Reg. Header";
        begin
            case TableID of
                Database::"CSD Posted Seminar Reg. Header":
                    begin
                        PostedSeminarRegHeader.SetFilter("No.", DocNoFilter);
                        PostedSeminarRegHeader.SetFilter("Posting Date",
                        PostingDateFilter);
                        Page.Run(0, PostedSeminarRegHeader);
                    end;
                Database::"CSD Seminar Ledger Entry":
                    begin
                        SeminarLedgerEntry.SetFilter("Document No.",
                        DocNoFilter);
                        SeminarLedgerEntry.SetFilter("Posting Date",
                        PostingDateFilter);
                        Page.Run(0, SeminarLedgerEntry);
                    end;
            end;

        end;
        */
}
