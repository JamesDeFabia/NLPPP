###############################################
# FILE: noTransPara.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 11:27:02
# MODIFIED:
###############################################

@NODES _zonePara _zoneInformaltable

#@POST
#if (N("$text",2) == " ")
#	AddConcept(G("$inputname"),G("superf"));
#single();

@RULES
_noTrans <-
    _emphasisBeg [s]	### (1)
    _xWILD [s]			### (2)
    _emphasisEnd [s]	### (3)
    @@

@RULES	
_noTrans <-
    \_ [s]		### (1)
    \_ [s]		### (1)
    _xALPHA [s]	### (3)
    \_ [s]		### (1)
    \_ [s]		### (1)
    @@