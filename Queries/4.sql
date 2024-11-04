-- List the names of antibodies with ‘Ig’ prefix stored in the AntibodyTable.

DECLARE
    antibody_name VARCHAR2(100);
    CURSOR antibody_cursor IS
        SELECT at.protein_data.Name
        FROM AntibodyTable at
        WHERE at.protein_data IS NOT NULL
        AND at.protein_data.Name LIKE 'Ig%';
BEGIN
    OPEN antibody_cursor;
    LOOP
        FETCH antibody_cursor INTO antibody_name;
        EXIT WHEN antibody_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Antibody Name: ' || antibody_name);
    END LOOP;
    CLOSE antibody_cursor;
END;
/
