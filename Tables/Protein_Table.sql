CREATE TABLE ProteinTable (
    protein_data ProteinType,
    sequence AminoAcidList,
    PRIMARY KEY (protein_data.ID)
) NESTED TABLE sequence STORE AS amino_acid_sequences;
/
