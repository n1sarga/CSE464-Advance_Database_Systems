-- Retrieve the enzyme ID, name, and activity of enzymes with an activity related to 'Oxidoreductase'.

DECLARE 
CURSOR oxidoreductase_enzymes_cursor IS 
    SELECT proteinID, proteinName, activity 
    FROM EnzymeTable 
    WHERE enzymeclass = 'Oxidoreductase'; 
    v_enzyme_id EnzymeTable.proteinID%TYPE; 
    v_enzyme_name EnzymeTable.proteinName%TYPE; 
    v_enzyme_class EnzymeTable.enzymeClass%TYPE; 
BEGIN 
    OPENoxidoreductase_enzymes_cursor; 
LOOP 
    FETCH oxidoreductase_enzymes_cursor INTO v_enzyme_id, v_enzyme_name, v_enzyme_class; 
    EXIT WHEN oxidoreductase_enzymes_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Enzyme ID: ' || v_enzyme_id || ', Name: ' || v_enzyme_name || ', Class: ' || v_enzyme_class); 
    ENDLOOP; 
    CLOSE oxidoreductase_enzymes_cursor; 
END; 
/
