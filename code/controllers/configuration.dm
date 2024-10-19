/proc/pick_mode(mode_name)
	// I wish I didn't have to instance the game modes in order to look up
	// their information, but it is the only way (at least that I know of).
	for (var/game_mode in gamemode_cache)
		var/datum/game_mode/M = gamemode_cache[game_mode]
		if (M?.config_tag == mode_name)
			return M

/datum/configuration/proc/load_event(filename)
	var/event_info = file2text(filename)

	if (event_info)
		custom_event_msg = event_info
