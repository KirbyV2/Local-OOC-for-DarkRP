local function LOOC(ply, args)
	local DoSay = function(text)
		if text == "" then return "" end
		--[[
                these are here just in case you want to use them
                local col = team.GetColor(ply:Team())
		local col2 = Color(255,255,255,255)
		if not ply:Alive() then
			col2 = Color(255,200,200,255)
			col = col2
		end
               ]]
		DarkRP.talkToRange(ply, DarkRP.getPhrase("looc").." "..ply:Nick(), text, 550)
	end
	return args, DoSay
end
DarkRP.defineChatCommand("looc", LOOC, 1.5) -- add this at line 210(if you want to keep it neat) of darkrp\gamemode\modules\chat\sv_chatcommands.lua