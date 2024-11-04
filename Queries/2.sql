-- Retrieve the names of all enzymes stored in the EnzymeTable.

DECLARE
    enzyme_name VARCHAR2(100);
    CURSOR enzyme_cursor IS
        SELECT et.protein_data.Name
        FROM EnzymeTable et
        WHERE et.protein_data.ID IS NOT NULL;
BEGIN
    OPEN enzyme_cursor;
    LOOP
        FETCH enzyme_cursor INTO enzyme_name;
        EXIT WHEN enzyme_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Enzyme Name: ' || enzyme_name);
    END LOOP;
    CLOSE enzyme_cursor;
END;
/
