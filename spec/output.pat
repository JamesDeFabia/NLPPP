###############################################
# FILE: output.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 11:28:08
# MODIFIED:
###############################################

@NODES _ROOT

@POST
"output.txt" << N("$raw");
G("file") << N("$raw");

@RULES
_xNIL <-
    _normal [s]	### (1)
    @@

@POST
"output.txt" << "<!-- DNT-Start -->";
G("file") << "<!-- DNT-Start -->";
"output.txt" << N("$raw");
G("file") << N("$raw");
"output.txt" << "<!-- DNT-End -->";
G("file") <<"<!-- DNT-End -->";

@RULES
_xNIL <-
    _noTrans [s]	### (1)
    @@