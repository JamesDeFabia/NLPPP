###############################################
# FILE: noTransTitle.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 11:27:02
# MODIFIED:
###############################################

@NODES _ROOT

@POST
if (N("title")) {
	AddConcept(N("title"),G("notrans"));
}
single();

@RULES
_noTrans <-
    _zoneTitle	### (1)
    @@
	
@RULES
_noTrans <-
    _zoneProgramListing	### (1)
    @@
	
_noTrans <-
    _zoneVariables	### (1)
    @@
