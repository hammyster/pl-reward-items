--[[ Configurations of Commands ]]--

--Configurations Reward Player
REWARD_SWITCH = 0 -- 1 = Comando ativado /; 0 = Desativado;
REWARD_COMMAND = "/comando_bonus" -- Comando que será utilizado para pegar o bônus;
REWARD_INVENTORY = 0 -- 1 = Precisa estar com inventário vázio /; 0 = Não precisa estar com o inventário vázio;
REWARD_COUNTS = 1 -- Vezes que o player pode usar o comando na conta;

--Class Classe que vai receber o bônus, 0 - SM | 1 - BK | 2 - ELF | 3 - MG
--ItemSection = Sessão do item no Item(kor)
--ItemIndex = Index do item no Item(kor)
--Padrão configurado com 2 itens por classe, mas pode colocar quantas quiser!

REWARD_ITEMS = { {Class = 0, ItemSection = 1, ItemIndex = 0, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 0, ItemSection = 6, ItemIndex = 1, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 1, ItemSection = 1, ItemIndex = 0, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 1, ItemSection = 6, ItemIndex = 1, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 2, ItemSection = 1, ItemIndex = 0, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 2, ItemSection = 6, ItemIndex = 1, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 3, ItemSection = 1, ItemIndex = 0, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1},
{Class = 3, ItemSection = 6, ItemIndex = 1, Level = 15, Luck = 1, Skill = 0, Option = 7, Exc1 = 1, Exc2 = 1, Exc3 = 1, Exc4 = 1, Exc5 = 1, Exc6 = 1} }

-----------------------------------------------------
-- Coded by /hammyster! Command reward in lua;
-- https://github.com/hammyster
-- Copyright © hammy 2019
-----------------------------------------------------
