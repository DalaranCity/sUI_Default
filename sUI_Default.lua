-- This file is loaded from "sUI Default.toc"
-- http://wow.gamepedia.com/Category:Console_variables

function sUI_Default (channel, password, frameId, hasVoice)
  -- General
  SetCVar("alwaysCompareItems", 0)
  SetCVar("autoLootDefault", 1)
  SetCVar("lootUnderMouse", 1)

  -- Unit frames
  SetCVar("showTargetOfTarget", 1)

  -- Combat related
  SetCVar("floatingCombatTextCombatDamage", 1)
  SetCVar("floatingCombatTextCombatHealing", 1)
  SetCVar("enableFloatingCombatText", 0)

  -- Nameplates
  SetCVar("nameplateMaxDistance", 40)
  SetCVar("nameplateOtherTopInset", -1)
  SetCVar("nameplateOtherBottomInset", -1)

  -- Action bars
  SetCVar("alwaysShowActionBars", 1)
  SetCVar("lockActionBars", 1)
  SetCVar("countdownForCooldowns", 1)

  -- Raid / Party
  SetCVar("raidFramesDisplayClassColor", 1)
  SetCVar("raidFramesDisplayOnlyDispellableDebuffs", 0)
  SetCVar("raidOptionKeepGroupsTogether", 1)
  SetCVar("useCompactPartyFrames", 1)
  SetCVar("raidOptionDisplayMainTankAndAssist", 1)
  SetCVar("raidOptionShowBorders", 0)

  -- Chat related
  SetCVar("chatBubbles", 1)
  SetCVar("chatBubblesParty", 0)
  SetCVar("colorChatNamesByClass", 1)
  SetCVar("guildMemberNotify", 0)
  SetCVar("whisperMode", "inline")

  -- Chat filter
  SetCVar("profanityFilter", 0)
  SetCVar("spamFilter", 1)

  -- Social
  SetCVar("showToastFriendRequest", 1)

  -- Camera view
  SetCVar("cameraSmoothStyle", 0)

  -- Quests
  SetCVar("ShowQuestUnitCircles", 1)

  -- Miscs
  SetCVar("overrideArchive", 0)
  SetCVar("screenshotQuality", 10)

  -- print channel message
  DEFAULT_CHAT_FRAME:AddMessage("sUI_Default loaded!", 40/255, 255/255, 140/255);
end

local frame = CreateFrame("Frame");
frame:RegisterEvent("PLAYER_ENTERING_WORLD");

function frame:OnEvent (event)
  sUI_Default(name, nil, nil, 1);
end

frame:SetScript("OnEvent", frame.OnEvent);
