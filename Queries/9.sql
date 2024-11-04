-- Count and display the number of structural proteins with a structure type of 'Fibrous'.

DECLARE 
    v_fibrous_count NUMBER; 
BEGIN 
    SELECT COUNT(*) INTO v_fibrous_count FROM StructuralProteinTable WHERE structureType = 'Fibrous';
    DBMS_OUTPUT.PUT_LINE('Number of Fibrous Structural Proteins: ' || v_fibrous_count); 
END; 
/
