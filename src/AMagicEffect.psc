{Copyleft (C) 2019-2024 Volant127 (JI_n&C),
All Rights Reserved. Permission to use in any form must be used in accordance with the GNU AGPL v.3.0}
scriptName AMagicEffect hidden

function OnCellLoad()
endFunction

function OnTriggerLeave(ObjectReference akActionRef)
endFunction

function OnObjectUnequipped(Form akBaseObject, ObjectReference akReference)
endFunction

function OnCellAttach()
endFunction

function RegisterForSingleLOSLost(Actor akViewer, ObjectReference akTarget) native

function OnAnimationEventUnregistered(ObjectReference akSource, string asEventName)
endFunction

function RegisterForSingleUpdate(float afInterval) native

function OnTrapHitStop(ObjectReference akTarget)
endFunction

function OnDeath(Actor akKiller)
endFunction

function OnSpellCast(Form akSpell)
endFunction

function OnTranslationFailed()
endFunction

function OnEquipped(Actor akActor)
endFunction

function OnAttachedToCell()
endFunction

function OnEffectStart(Actor akTarget, Actor akCaster)
endFunction

function OnOpen(ObjectReference akActionRef)
endFunction

function UnregisterForUpdate() native

function OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
endFunction

function UnregisterForLOS(Actor akViewer, ObjectReference akTarget) native

function RemoveAllInventoryEventFilters() native

function RegisterForSingleLOSGain(Actor akViewer, ObjectReference akTarget) native

function OnLoad()
endFunction

function UnregisterForAnimationEvent(ObjectReference akSender, string asEventName) native

function OnRaceSwitchComplete()
endFunction

function OnLocationChange(Location akOldLoc, Location akNewLoc)
endFunction

function OnCombatStateChanged(Actor akTarget, int aeCombatState)
endFunction

Actor function GetTargetActor() native

function OnActivate(ObjectReference akActionRef)
endFunction

function OnSleepStart(float afSleepStartTime, float afDesiredSleepEndTime)
endFunction

function OnLockStateChanged()
endFunction

function UnregisterForSleep() native

function OnUpdate()
endFunction

function AddInventoryEventFilter(Form akFilter) native

function OnTriggerEnter(ObjectReference akActionRef)
endFunction

function OnUnload()
endFunction

function OnPackageStart(Package akNewPackage)
endFunction

function OnTrackedStatsEvent(string arStatName, int aiStatValue)
endFunction

function Dispel() native

function RegisterForTrackedStatsEvent() native

function UnregisterForTrackedStatsEvent() native

function RegisterForSleep() native

function OnUpdateGameTime()
endFunction

bool function RegisterForAnimationEvent(ObjectReference akSender, string asEventName) native

function OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, bool abBashAttack, bool abHitBlocked)
endFunction

function OnTrapHit(ObjectReference akTarget, float afXVel, float afYVel, float afZVel, float afXPos, float afYPos, float afZPos, int aeMaterial, bool abInitialHit, int aeMotionType)
endFunction

function OnMagicEffectApply(ObjectReference akCaster, MagicEffect akEffect)
endFunction

function onEndState()
endFunction

function onBeginState()
endFunction

function OnDying(Actor akKiller)
endFunction

function StopObjectProfiling() native

function OnUnequipped(Actor akActor)
endFunction

function OnSell(Actor akSeller)
endFunction

function OnRead()
endFunction

function OnPackageEnd(Package akOldPackage)
endFunction

function OnPackageChange(Package akOldPackage)
endFunction

function OnWardHit(ObjectReference akCaster, Spell akSpell, int aiStatus)
endFunction

function OnGetUp(ObjectReference akFurniture)
endFunction

function OnSit(ObjectReference akFurniture)
endFunction

function OnTrigger(ObjectReference akActionRef)
endFunction

function OnClose(ObjectReference akActionRef)
endFunction

function OnTrapHitStart(ObjectReference akTarget, float afXVel, float afYVel, float afZVel, float afXPos, float afYPos, float afZPos, int aeMaterial, bool abInitialHit, int aeMotionType)
endFunction

function OnObjectEquipped(Form akBaseObject, ObjectReference akReference)
endFunction

function OnEffectFinish(Actor akTarget, Actor akCaster)
endFunction

function UnregisterForUpdateGameTime() native

function RegisterForLOS(Actor akViewer, ObjectReference akTarget) native

function OnGrab()
endFunction

function OnReset()
endFunction

function OnTranslationComplete()
endFunction

function OnDestructionStageChanged(int aiOldStage, int aiCurrentStage)
endFunction

function RegisterForUpdate(float afInterval) native

function OnRelease()
endFunction

function RemoveInventoryEventFilter(Form akFilter) native

MagicEffect function GetBaseObject() native

function OnDetachedFromCell()
endFunction

function RegisterForSingleUpdateGameTime(float afInterval) native

function OnLostLOS(Actor akViewer, ObjectReference akTarget)
endFunction

Actor function GetCasterActor() native

function OnCellDetach()
endFunction

function RegisterForUpdateGameTime(float afInterval) native

function OnAnimationEvent(ObjectReference akSource, string asEventName)
endFunction

function OnGainLOS(Actor akViewer, ObjectReference akTarget)
endFunction

function OnItemRemoved(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
endFunction

function OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
endFunction

function StartObjectProfiling() native

function OnSleepStop(bool abInterrupted)
endFunction
