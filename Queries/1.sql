-- Count the total number of proteins stored in the ProteinTable.

DECLARE
    total_proteins NUMBER;
BEGIN
    SELECT COUNT(*) INTO total_proteins FROM ProteinTable;
    DBMS_OUTPUT.PUT_LINE('Total number of proteins: ' || total_proteins);
END;
/
