																																																																																																																																if(_G._GMODSC!=10100111001)then 
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
local l_,_l_={"F1","F1_cloud","F1_debris","F1_debris_b","F1_dirt","F1_dirt_b","F1_suckdirt","F1_windwisps","F3","F5_cloud","F5_debris","F5_debris_b","F5_debris_c","F5_innercloud","F5_suckdirt","F5_windwisps","gas_cloud","gas_explosion","gas_fireball","gas_fireball_b","gas_fireball_c","gas_flames","gas_flash","gas_flash_b","gas_flash_c","gas_smoke","gas_smoke_b","gas_smoke_c","gas_sparks","gas_sparks_b","gas_sparks_c","gas_sparks_d","lightning","lightning_cloudflash","lightning_flash","ocdonotsteal","tornado_cloud","tornado_debris","tornado_debris_b","tornado_dirt","tornado_suckcloud","tornado_suckcloud_tracer","tornado_suckdirt","tornado_suckswirl","tornado_windwisps"},{"gmodsc"};for _I_ in pairs(_l_)do game.AddParticles("particles/".._l_[_I_]..".pcf")end;for I_ in pairs(l_)do PrecacheParticleSystem(l_[I_])end;end
