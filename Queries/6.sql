-- List all proteins whose names start with ‘Hemo’.

DECLARE
    protein_name VARCHAR2(100);
    CURSOR protein_cursor IS
        SELECT pt.protein_data.Name
        FROM ProteinTable pt
        WHERE pt.protein_data.Name LIKE 'Hemo%';
BEGIN
    OPEN protein_cursor;
    LOOP
        FETCH protein_cursor INTO protein_name;
        EXIT WHEN protein_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Protein Name: ' || protein_name);
    END LOOP;
    CLOSE protein_cursor;
END;
/
