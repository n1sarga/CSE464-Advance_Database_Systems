-- Display the names and functions of structural proteins that are elastic.

DECLARE
    v_protein_name VARCHAR2(100);
    v_protein_function VARCHAR2(100);
BEGIN
    FOR protein_rec IN (
        SELECT s.protein_data.Name AS protein_name, s.function
        FROM StructuralProteinTable s
        WHERE s.structureType = 'Elastic'
    ) LOOP
        v_protein_name := protein_rec.protein_name;
        v_protein_function := protein_rec.function;

        DBMS_OUTPUT.PUT_LINE('Protein Name: ' || v_protein_name);
        DBMS_OUTPUT.PUT_LINE('Function: ' || v_protein_function);
    END LOOP;
END;
/
