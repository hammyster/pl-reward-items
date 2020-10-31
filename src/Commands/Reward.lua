--[[ Configurations Reward Player ]]--
Reward = {}

function Reward.GetReward(aIndex, Arguments)
	if REWARD_SWITCH == 0
	then
		return
	end
	
	if DataBase.GetValue(TABLE_REWARD_PLAYER, COLUMN_REWARD_PLAYER, WHERE_REWARD_PLAYER, UserGetAccountID(aIndex)) >= REWARD_COUNTS
	then
		SendMessage(string.format("[Sistema] Você já utilizou seu bônus!"), aIndex, 1)
		return
	end
	
	if REWARD_INVENTORY == 1
	then
		for i = 12, MAX_INVENTORY_RANGE do
			if InventoryIsItem(aIndex, i) ~= 0
			then
				SendMessage(string.format("[Sistema] Seu inventário precisa estar vazio!"), aIndex, 1)
				return
			end
		end
	end
	
	for i, key in ipairs(REWARD_ITEMS) do 
		if REWARD_ITEMS[i].Class == UserGetClass(aIndex)
		then
			local exc = 0
				
			if REWARD_ITEMS[i].Exc1 ~= 0
			then
				exc = exc + 1
			end
			if REWARD_ITEMS[i].Exc2 ~= 0
			then
				exc = exc + 2
			end
			if REWARD_ITEMS[i].Exc3 ~= 0
			then
				exc = exc + 4
			end
			if REWARD_ITEMS[i].Exc4 ~= 0
			then
				exc = exc + 8
			end
			if REWARD_ITEMS[i].Exc5 ~= 0
			then
				exc = exc + 16
			end
			if REWARD_ITEMS[i].Exc6 ~= 0
			then
				exc = exc + 32
			end
			
			if REWARD_INVENTORY == 1
			then
				ItemSerialCreate(aIndex,236, 0, 0, GET_ITEM(REWARD_ITEMS[i].ItemSection, REWARD_ITEMS[i].ItemIndex), REWARD_ITEMS[i].Level, 255, REWARD_ITEMS[i].Luck, REWARD_ITEMS[i].Skill, REWARD_ITEMS[i].Option, exc)
			else
				ItemSerialCreate(aIndex, UserGetMapNumber(aIndex), UserGetX(aIndex) + 1, UserGetY(aIndex), GET_ITEM(REWARD_ITEMS[i].ItemSection, REWARD_ITEMS[i].ItemIndex), REWARD_ITEMS[i].Level, 255, REWARD_ITEMS[i].Luck, REWARD_ITEMS[i].Skill, REWARD_ITEMS[i].Option, exc)
			end
		end
	end
	
	if REWARD_INVENTORY == 1
	then
		SendMessage(string.format("[Sistema] Sua recompensa foi colocado no inventário!"), aIndex, 1)
	else
		SendMessage(string.format("[Sistema] Pegue sua recompensa no chão!"), aIndex, 1)
	end
	
	DataBase.SetAddValue(TABLE_REWARD_PLAYER, COLUMN_REWARD_PLAYER, 1, WHERE_REWARD_PLAYER, UserGetAccountID(aIndex))
end

Commands.Register(REWARD_COMMAND, Reward.GetReward)

return Reward

-- Coded by /hammyster! Command reward in lua;
-- https://github.com/hammyster
-- Copyright © hammy 2019
-- Licensed under a MIT license
-- Read the terms of the license here
-- https://github.com/Roshly/AyyHook-Loader/blob/master/LICENSE
-----------------------------------------------------