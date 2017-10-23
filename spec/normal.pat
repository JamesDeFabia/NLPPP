###############################################
# FILE: normal.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 14:28:20
# MODIFIED:
###############################################

@NODES _ROOT

@RULES
_normal <-
    _xWILD [fail=(_noTrans)]	### (1)
    @@
