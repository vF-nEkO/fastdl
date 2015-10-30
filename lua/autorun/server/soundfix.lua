--[[

	Copyright 2012 Michael Harris

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.


]]--	
	if !string.find( game.GetMap(),"tornado") then return end hook.Add("InitPostEntity","GMSC_MAPBUSTR",function()
		local _hwy,_hwy14,_ntfl,_vilg = string.find( game.GetMap(),"highway_final"),string.find( game.GetMap(),"highway_2014"),string.find( game.GetMap(),"nightfall"),string.find( game.GetMap(),"village_final")
		local V_hwy,V_hwy14,V_ntfl,V_vilg = {Vector(9925, 6333, 138),Vector(-4635, 589, 163),Vector(-11369, 5927, 109)},{Vector(-2866, 5334, 65),Vector(-4942, 4111, 75),Vector(13785, -3659, 509)},{Vector(-2866, 5334, 65),Vector(-4942, 4111, 75),Vector(13785, -3659, 509)},{Vector(1652, -1309, 91),Vector(6168, -5978, 116),Vector(-13179, 10567, 1292)}
		local V_NULL	
		
			// Sloppy code is sloppy, no time to make this look nice. :3
			if !IsValid(ents.FindByName( "f1_sound" )[1]) then return end
			if !IsValid(ents.FindByName( "f3_sound" )[1]) then return end
			if !IsValid(ents.FindByName( "f5_sound" )[1]) then return end
			ents.FindByName( "f1_sound" )[1]:Fire("playsound") ents.FindByName( "f1_sound" )[1]:Fire("stopsound")
			for _,f3 in pairs(ents.FindByName( "f3_sound" )) do f3:Fire("playsound") f3:Fire("stopsound") end
			for _,f5 in pairs(ents.FindByName( "f5_sound" )) do f5:Fire("playsound") f5:Fire("stopsound") end
		

		for _,spnz in pairs(ents.GetAll()) do if spnz:GetClass() == "info_player_start" then spnz:Remove() end end
		if _hwy then V_NULL = V_hwy; elseif _hwy14 then V_NULL = V_hwy14; elseif _ntfl then V_NULL = V_ntfl; elseif _vilg then V_NULL = V_vilg; else V_NULL = {Vector(666,666,666)}; end
		for _,v in pairs(V_NULL) do local psnZ = ents.Create("info_player_start");psnZ:SetPos(v)psnZ:Spawn()end
		
		
		
		
	
	end)
	
	