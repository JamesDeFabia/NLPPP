###############################################
# FILE: splice.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 16:14:47
# MODIFIED:
###############################################

@NODES _ROOT

@POST
splice(1,1);

@RULES
_xNIL <-
    _xWILD [one match=(_zoneInformaltable _zonePara)]	### (1)
    @@
