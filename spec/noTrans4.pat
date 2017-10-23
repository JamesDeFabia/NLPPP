###############################################
# FILE: tagNoTrans.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 11:27:02
# MODIFIED:
###############################################

@NODES _zonePara _zoneInformaltable

@PRE
<1,1> uppercase();
<1,1> lengthr(2,30);
@POST
AddConcept(N("$text"),G("caps"));
single();

@RULES
_noTrans <-
    _xALPHA
	@@
