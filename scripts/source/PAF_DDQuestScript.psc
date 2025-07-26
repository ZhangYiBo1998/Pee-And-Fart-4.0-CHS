Scriptname PAF_DDQuestScript extends Quest

Form DD

function InitDDQuest()

	DD = none;Game.GetFormFromFile(0x0000f624, "Devious Devices - Integration.esm")

endFunction

string function GetDDVersion()	
	
	;return (Game.GetFormFromFile(0x0000f624, "Devious Devices - Integration.esm") as zadLibs).GetVersion()	
	return "not installed"
	
endFunction

bool function HasArmbinder(Actor a_actor)
	if (DD != none)
		;return (DD as zadLibs).GetWornDevice(a_actor, (DD as zadLibs).zad_DeviousArmbinder) != none
	endif
	return false	
endFunction

bool function IsAnalPlugged(Actor a_actor)
	if (DD != none)		
		;return (DD as zadLibs).GetWornDevice(a_actor, (DD as zadLibs).zad_DeviousPlugAnal) != none		
	endif
	return false
endFunction

bool function IsGagged(Actor a_actor)	
	if (DD != none)
		;Armor gag = (DD as zadLibs).GetWornDevice(a_actor, (DD as zadLibs).zad_DeviousGag)	
		;if (gag != none)			
		;	return true
		;endif
	endif
	return false
endFunction

bool function HasDeviousBelt(Actor a_actor)
	if (DD != none)
		;Armor belt = (DD as zadLibs).GetWornDevice(a_actor, (DD as zadLibs).zad_DeviousBelt)
		;if (belt != none)
		;	return true
		;endif
	endif
	return false
endFunction