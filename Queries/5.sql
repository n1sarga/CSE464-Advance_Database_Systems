-- Find the total number of unique amino acids across all protein sequences in the ProteinTable.

DECLARE
    total_unique_acids NUMBER := 0;
BEGIN
    FOR protein_rec IN (SELECT sequence FROM ProteinTable) LOOP
        FOR amino_acid IN (SELECT COLUMN_VALUE FROM TABLE(protein_rec.sequence)) LOOP
            total_unique_acids := total_unique_acids + 1;
        END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Total unique amino acids: ' || total_unique_acids);
END;
/
