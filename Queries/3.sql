-- Calculate the average length of protein sequences in the ProteinTable.

DECLARE
    avg_sequence_length NUMBER;
BEGIN
    SELECT AVG(CARDINALITY(sequence)) INTO avg_sequence_length FROM ProteinTable;
    DBMS_OUTPUT.PUT_LINE('Average sequence length: ' || avg_sequence_length);
END;
/
