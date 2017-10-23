###############################################
# FILE: zones.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 15:36:24
# MODIFIED:
###############################################

@NODES _ROOT

@POST
pnrename(N(3),"_zoneVariables");

@RULES
_xNIL <-
    _zoneTitle [s]			### (1)
    _xWHITE [star]			### (2)
    _zonePara [s]			### (3)
    _xWHITE [star]			### (4)
    _zoneInformaltable [s]	### (5)
    @@