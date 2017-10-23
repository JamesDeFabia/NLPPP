###############################################
# FILE: tagNoTrans.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 11:27:02
# MODIFIED:
###############################################

@NODES _zonePara _zoneInformaltable

@POST
if (IsConcept(G("notrans"),N("$text")))
	single();
else if (CapsWithSuffix(N("$text")))
	single();

@RULES
_noTrans <-
    _xALPHA
	@@