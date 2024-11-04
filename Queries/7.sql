-- Find and display proteins that do not have associated structures in the ‘StructuralProteinTable’.

DECLARE
    protein_id NUMBER;
    protein_name VARCHAR2(100);
    CURSOR protein_cursor IS
        SELECT pt.protein_data.ID, pt.protein_data.Name
        FROM ProteinTable pt
        WHERE pt.protein_data.ID NOT IN (SELECT st.protein_data.ID FROM StructuralProteinTable st);
BEGIN
    OPEN protein_cursor;
    LOOP
        FETCH protein_cursor INTO protein_id, protein_name;
        EXIT WHEN protein_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Protein ID: ' || protein_id || ', Name: ' || protein_name || ' has no associated structures.');
    END LOOP;
    CLOSE protein_cursor;
END;
/
