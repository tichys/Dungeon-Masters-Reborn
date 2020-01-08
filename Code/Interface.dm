//Please use mob or src (not usr) in these procs. This way they can be called in the same fashion as procs.
/mob/verb/wiki()
	set name = "wiki"
	set desc = "Visit the wiki."
	set hidden = 1
	if(alert("This will open the wiki in your browser. Are you sure?",,"Yes","No")=="No")
		return
	src << link("")
	return

/mob/verb/forum()
	set name = "forum"
	set desc = "Visit the forum."
	set hidden = 1
	if(alert("This will open the forum in your browser. Are you sure?",,"Yes","No")=="No")
		return
	src << link("")
	return

/mob/verb/rules()
	set name = "rules"
	set desc = "Show server rules."
	set hidden = 1
	if(alert("This will open the rules document in your browser. Are you sure?",,"Yes","No")=="No")
		return
	src << link("")
	return

/mob/verb/github()
	set name = "Join Discord"
	set desc = "Join the discord"
	set hidden = 0
	if(alert("This will open a discord invite in your browser. Are you sure?",,"Yes","No")=="No")
		return
	src << link("https://discord.gg/CDPRQuQ")
	return

/mob/verb/reportissue()
	set name = "report-issue"
	set desc = "Report an issue"
	set hidden = 1
	if(alert("This will open the Github in your browser. Are you sure?",,"Yes","No")=="No")
		return
	src << link("")
	return