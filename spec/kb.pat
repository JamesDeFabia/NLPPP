###############################################
# FILE: kb.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 15:14:49
# MODIFIED:
###############################################

@CODE

G("notrans") = findconcept(findroot(),"notrans");
if (!G("notrans"))
	G("notrans") = makeconcept(findroot(), "notrans");
else
	rmchildren(G("notrans"));
	
G("caps") = findconcept(findroot(),"caps");
if (!G("caps"))
	G("caps") = makeconcept(findroot(), "caps");
	
G("suffix") = findconcept(findroot(),"suffix");
if (!G("suffix"))
	G("suffix") = makeconcept(findroot(), "suffix");
		
G("superf") = findconcept(findroot(),"superf");
if (!G("superf"))
	G("superf") = makeconcept(findroot(), "superf");
	
G("file") = openfile("C:\\jim\\LR_Mods\\" + G("$inputname"));
	
@@CODE