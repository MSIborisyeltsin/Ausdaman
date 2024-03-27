{Copyleft (C) 2019-2024 Volant127 (JI_n&C),
All Rights Reserved. Permission to use in any form must be used in accordance with the GNU AGPL v.3.0}
scriptName GenericImitation extends AMagicEffect

; props
shout property MonsterShout auto
faction property PlayerWerewolfFaction auto
spell property SPELLCLEAR1 auto
weapon property WEAPONCLEAR2 auto
ammo property MonsterAmmo auto
spell property ImitationSpell auto
weapon property WEAPONCLEAR1 auto
faction property MonsterFaction auto
quest property CompanionsTrackingQuest auto
armor property MonsterArmor auto
race property ImitationRace auto
spell property SPELLCLEAR2 auto
weapon property MonsterWeapon auto

function OnEffectFinish(Actor Target, Actor Caster)
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
	game.GetPlayer().SetRace((CompanionsTrackingQuest as companionshousekeepingscript).PlayerOriginalRace)
endFunction

function OnEffectStart(Actor Target, Actor Caster)
	if Target.GetActorBase().GetRace() != ImitationRace
		game.GetPlayer().UnequipAll()
		Target.SetRace(PolymorphRace)
		game.GetPlayer().SetHeadTracking(false)
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
		game.DisablePlayerControls(false, false, false, false, false, true, false, false, 0)
		game.SetPlayerReportCrime(false)
		game.GetPlayer().SetAttackActorOnSight(true)
		game.GetPlayer().AddToFaction(PlayerWerewolfFaction)
		game.GetPlayer().AddShout(MonsterShout)
		game.GetPlayer().EquipShout(MonsterShout)
	endIf
endFunction
