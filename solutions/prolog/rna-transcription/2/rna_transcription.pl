helper_rna_transcription('C', 'G').
helper_rna_transcription('G', 'C').
helper_rna_transcription('T', 'A').
helper_rna_transcription('A', 'U').
rna_transcription(Dna, Rna):-
    string_chars(Dna, DnaL),
    maplist(helper_rna_transcription, DnaL, RnaL),
    string_chars(Rna, RnaL).