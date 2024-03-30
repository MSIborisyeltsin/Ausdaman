scriptName GenericImitationScript extends ActiveMagicEffect

; Copyleft (C) 2019-2024 Volant127 (JI_n&C),
; All Rights Reserved. Permission to use in any form must be used in accordance with the GNU AGPL v.3.0

Shout property MonsterShout auto
Faction property PlayerWerewolfFaction auto
SPELL property SPELLCLEAR1 auto
WEAPON property WEAPONCLEAR2 auto
Ammo property MonsterAmmo auto
Spell property ImitationSpell auto
WEAPON property WEAPONCLEAR1 auto
Faction property MonsterFaction auto
Quest property CompanionsTrackingQuest auto
Armor property MonsterArmor auto
Race property ImitationRace auto
SPELL property SPELLCLEAR2 auto
Weapon property MonsterWeapon auto

function OnEffectFinish(Actor Target, Actor Caster)
	Game.EnableFastTravel(true)
	Game.SetBeastForm(false)
	game.GetPlayer().RemoveSpell(ImitationSpell)
	game.GetPlayer().UnEquipSpell(ImitationSpell, 0)
	game.GetPlayer().RemoveFromFaction(MonsterFaction)
	game.GetPlayer().RemoveItem(MonsterWeapon as form, 1, false, none)
	game.GetPlayer().UnEquipItem(MonsterWeapon as form, 1 as bool, false)
	game.GetPlayer().RemoveShout(MonsterShout)
	game.GetPlayer().UnEquipShout(MonsterShout)
	game.GetPlayer().RemoveItem(MonsterAmmo as form, 99, false, none)
	game.GetPlayer().UnEquipItem(MonsterAmmo as form, false, false)
	game.GetPlayer().RemoveItem(MonsterArmor as form, 1, false, none)
	game.GetPlayer().UnEquipItem(MonsterArmor as form, false, false)
	game.GetPlayer().AddSpell(SPELLCLEAR1, true)
	game.GetPlayer().EquipSpell(SPELLCLEAR1, 0)
	game.GetPlayer().AddSpell(SPELLCLEAR2, true)
	game.GetPlayer().EquipSpell(SPELLCLEAR2, 1)
	game.GetPlayer().AddItem(WEAPONCLEAR1 as form, 1, false)
	game.GetPlayer().EquipItem(WEAPONCLEAR1 as form, 0 as bool, false)
	game.GetPlayer().AddItem(WEAPONCLEAR2 as form, 1, false)
	game.GetPlayer().EquipItem(WEAPONCLEAR2 as form, 1 as bool, false)
	game.EnablePlayerControls(true, true, true, true, true, true, true, true, 0)
	game.SetPlayerReportCrime(true)
	game.GetPlayer().SetAttackActorOnSight(false)
	game.GetPlayer().RemoveFromFaction(PlayerWerewolfFaction)
	debug.Trace("WEREWOLF: Setting race " + (CompanionsTrackingQuest as companionshousekeepingscript).PlayerOriginalRace as string + " on " + game.GetPlayer() as string, 0)
	game.GetPlayer().SetRace((CompanionsTrackingQuest as companionshousekeepingscript).PlayerOriginalRace)
endFunction

function OnEffectStart(Actor Target, Actor Caster)
	if Target.GetActorBase().GetRace() != ImitationRace
		game.GetPlayer().UnequipAll()
		Target.SetRace(ImitationRace)
		Game.SetBeastForm(True)
    	Game.EnableFastTravel(False)
		; game.GetPlayer().SetHeadTracking(true)
		game.GetPlayer().AddSpell(SPELLCLEAR1, true)
		game.GetPlayer().EquipSpell(SPELLCLEAR1, 0)
		game.GetPlayer().AddSpell(SPELLCLEAR2, true)
		game.GetPlayer().EquipSpell(SPELLCLEAR2, 1)
		game.GetPlayer().AddItem(WEAPONCLEAR1 as form, 1, false)
		game.GetPlayer().EquipItem(WEAPONCLEAR1 as form, 0 as bool, false)
		game.GetPlayer().AddItem(WEAPONCLEAR2 as form, 1, false)
		game.GetPlayer().EquipItem(WEAPONCLEAR2 as form, 1 as bool, false)
		game.GetPlayer().EquipSpell(ImitationSpell, 0)
		game.GetPlayer().AddSpell(ImitationSpell, true)
		game.GetPlayer().EquipSpell(ImitationSpell, 0)
		game.GetPlayer().AddToFaction(MonsterFaction)
		game.GetPlayer().AddItem(MonsterWeapon as form, 1, false)
		game.GetPlayer().EquipItem(MonsterWeapon as form, 1 as bool, false)
		game.GetPlayer().AddItem(MonsterAmmo as form, 99, false)
		game.GetPlayer().EquipItem(MonsterAmmo as form, false, false)
		game.GetPlayer().AddItem(MonsterArmor as form, 1, false)
		game.GetPlayer().EquipItem(MonsterArmor as form, false, false)
		game.DisablePlayerControls(abMovement = false, abFighting = false, abCamSwitch = false, abMenu = false, abActivate = false, abJournalTabs = false, aiDisablePOVType = 1)
		game.SetPlayerReportCrime(false)
		game.GetPlayer().SetAttackActorOnSight(true)
		game.GetPlayer().AddToFaction(PlayerWerewolfFaction)
		game.GetPlayer().AddShout(MonsterShout)
		game.GetPlayer().EquipShout(MonsterShout)
	endIf
endFunction
