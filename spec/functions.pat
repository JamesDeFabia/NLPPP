###############################################
# FILE: functions.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 10/Oct/17 15:16:12
# MODIFIED:
###############################################

@DECL

AddConcept(L("word"),L("parent")) {

	L("con") = findconcept(L("parent"),L("word"));
	if (!L("con")) {
		makeconcept(L("parent"),L("word"));
	}
}

IsConcept(L("con list"),L("word")) {

	L("con") = findconcept(L("con list"),L("word"));
	return L("con");
}

CapsWithSuffix(L("word")) {
	if (strlength(L("word")) >=5) {
		while (L("i") < strlength(L("word"))) {
			L("c") = strpiece(L("word"),L("i"),L("i"));
			if (strisupper(L("c"))) {
				L("upper") = L("upper") + L("c");
				if (L("lower flag")) return 0;
			} else {
				L("lower flag") = 1;
				L("lower") = L("lower") + L("c");
			}
			L("i") = L("i") + 1;
		}
		if (strlength(L("upper")) >= 2 && 1 <= strlength(L("lower")) && strlength(L("lower")) <= 2) {
			"mixed.txt" << L("word") << "\n";
			AddConcept(L("word"),G("suffix"));
			return 1;
		}
	}
	return 0;
}


@@DECL

