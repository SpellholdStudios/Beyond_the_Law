// D file for Cromwell and Cespenar to upgrade Items

// Cromwell

EXTEND_BOTTOM ~WSMITH01~ 58
IF ~PartyHasItem("KovaDag2") XPGT("Kova", 999999)~ THEN REPLY ~Can you improve Navaeren?~ GOTO KvDag1
IF ~PartyHasItem("KovaArm1") XPGT("Kova", 999999)~ THEN REPLY ~Is there a way to enhance Haeloven?~ GOTO KvArm1
IF ~PartyHasItem("KiyoBow1") XPGT("Kiyone", 999999)~ THEN REPLY ~Can you improve Eye of the Sentinel?~ GOTO KyBow1
IF ~PartyHasItem("KiyoArm1") XPGT("Kiyone", 999999)~ THEN REPLY ~Is there a way to enhance Verdant Vigil?~ GOTO KyArm1
IF ~InParty("Yoshimo") PartyHasItem("Npsw02")
Global("YoshiKnowCrom", "GLOBAL", 1)~ THEN REPLY ~Might you be able to alter Yoshimo's katana to be as versatile as Kova's weapon?~ GOTO YoshKata1
END

APPEND ~WSMITH01~

	IF ~~ THEN BEGIN YoshKata1
	SAY ~Heh, that lad be bringing me good business, it seems. Let me see if ye be having the materials I need for it.~
	IF ~PartyHasItem("Dagg15")~ THEN GOTO YoshKataHave
	IF ~!PartyHasItem("Dagg15")~ THEN GOTO YoshKataNo
	END

	IF ~~ THEN BEGIN YoshKataNo
	SAY ~Looks like ye haven't got the dagger I have to be needing for improving this katana of your friend's. Perhaps when you have found one you can ask me about it again.~
	IF ~~ THEN GOTO 13
	END

	IF ~~ THEN BEGIN YoshKataHave
	SAY ~Well it be seeming ye do have a dagger that's suitable after all. Now just the matter of the gold, it will cost ye 7,500 for such work with the forge.~
	IF ~PartyGoldGT(7499)~ THEN REPLY ~That sounds fine. Let's do it.~ 
	DO ~TakePartyGold(7500)      DestroyGold(7500)
	TakePartyItemNum("Dagg15",1)   DestroyItem("Dagg15")
	TakePartyItemNum("NPSW02",1)   DestroyItem("NPSW02")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	GiveItemCreate("YoshKata", "Yoshimo", 0,0,0)~ EXIT	
	IF ~~ THEN REPLY ~Maybe another time.~ GOTO 13 
	END

	IF ~~ THEN BEGIN KvDag1
	SAY ~Well ye be needing some scrolls, one with a Word to keep them foes still, another simply to snuff out a target's lifeforce. And a good amount of coin, 10,000 gold, no less, for the work.~
	IF ~PartyHasItem("SCRL8Q") PartyHasItem("SCRL8O") PartyGoldGT(9999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~ 
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SCRL8Q",1)   DestroyItem("SCRL8Q")
	TakePartyItemNum("SCRL8O",1)   DestroyItem("SCRL8O")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvDagUpg", "GLOBAL", 1)
	TakeItemReplace("KovaDag3","KovaDag2","Kova")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END

	IF ~~ THEN BEGIN KvArm1
	SAY ~Well ye be needing a scroll to quicken actions without tiring, and an ordinary Ring of Protection. And not be forgetting the coin, 10,000 gold, no less, for the work.~
	IF ~PartyHasItem("SCRL7Q") PartyHasItem("RING06") PartyGoldGT(9999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~ 
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SCRL7Q",1)   DestroyItem("SCRL7Q")
	TakePartyItemNum("RING06",1)   DestroyItem("RING06")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvArmUpg", "GLOBAL", 1)
	TakeItemReplace("KovaArm2","KovaArm1","Kova")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END

	IF ~~ THEN BEGIN KyBow1
	SAY ~Well ye be needing to add twenty +2 arrows to some scrolls, three to dispel magic, and two to see things as they really are. And a good amount of coin, 10,000 gold, no less, for the work.~
	IF ~NumItemsPartyGT("SCRL1E",2) 
	NumItemsPartyGT("SCRL7M",1)
	NumItemsPartyGT("AROW11",19)
	PartyGoldGT(9999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SCRL7M",2)   DestroyItem("SCRL7M")
	TakePartyItemNum("SCRL1E",3)   DestroyItem("SCRL1E")
	TakePartyItemNum("AROW11",20)   DestroyItem("ARROW11")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyBowUpg", "GLOBAL", 1)
	TakeItemReplace("KiyoBow2","KiyoBow1","Kiyone")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END

	IF ~~ THEN BEGIN KyArm1
	SAY ~I be needing to get a magical large shield effective at stopping arrows, called something about stars, a plain amulet of magic resistance, and some 10,000 gold for the work of putting it all together.~
	IF ~PartyHasItem("SHLD07")
	PartyHasItem("AMUL19")
	PartyGoldGT(9999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SHLD07",1)   DestroyItem("SHLD07")
	TakePartyItemNum("AMUL19",1)   DestroyItem("AMUL19")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyArmUpg", "GLOBAL", 1)
	TakeItemReplace("KiyoArm2","KiyoArm1","Kiyone")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END
END

// Cespenar 

EXTEND_BOTTOM ~BOTSMITH~ 2
IF ~PartyHasItem("KovaDag3") XPGT("Kova", 3999999)~ THEN REPLY ~Can you further improve Navaeren?~ GOTO KvDag2
IF ~PartyHasItem("KovaArm2") XPGT("Kova", 3999999)~ THEN REPLY ~Is there a way to enhance Haeloven even more?~ GOTO KvArm2
IF ~PartyHasItem("KiyoBow2") XPGT("Kiyone", 3999999)~ THEN REPLY ~Can this bow get more powerful than just the Gaze of the Sentinel?~ GOTO KyBow2
IF ~PartyHasItem("KiyoArm2") XPGT("Kiyone", 3999999)~ THEN REPLY ~Is there a way to make Verdant Vigilant even more potent?~ GOTO KyArm2
END

APPEND ~BOTSMITH~
	IF ~~ THEN BEGIN KvDag2
	SAY ~Hmm, oh need some ah, not so nice paper. Scroll to say Word then someone die, hmm, and more scroll, put thingy in air, when someone near then no can move. Two each, at least. And oh yeah, 15,000 gold.~
	IF ~NumItemsPartyGT("SCRLAP",1) 
	NumItemsPartyGT("SCRL9U",1) 
	PartyGoldGT(14999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("SCRL9U",1)   DestroyItem("SCRL9U")
	TakePartyItemNum("SCRL9U",1)   DestroyItem("SCRL9U")
	TakePartyItemNum("SCRLAP",1)   DestroyItem("SCRLAP")
	TakePartyItemNum("SCRLAP",1)   DestroyItem("SCRLAP")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvDagUpg", "GLOBAL", 2)
	TakeItemReplace("KovaDag5","KovaDag3","Kova")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END

	IF ~~ THEN BEGIN KvArm2
	SAY ~No problem, give 15,000 gold, and two scrolls each of Protection from Normal Weapons, Improved Haste. Oh and 4 potions, help make person invulnerable, colorful type. ~
	IF ~NumItemsPartyGT("SCRL7Q",1) 
	NumItemsPartyGT("SCRL6T",1)
	NumItemsPartyGT("POTN11",3)
	PartyGoldGT(14999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("SCRL7Q",1)   DestroyItem("SCRL7Q")
	TakePartyItemNum("SCRL6T",1)   DestroyItem("SCRL6T")
	TakePartyItemNum("SCRL7Q",1)   DestroyItem("SCRL7Q")
	TakePartyItemNum("SCRL6T",1)   DestroyItem("SCRL6T")
	TakePartyItemNum("POTN11",1)   DestroyItem("POTN11")
	TakePartyItemNum("POTN11",1)   DestroyItem("POTN11")
	TakePartyItemNum("POTN11",1)   DestroyItem("POTN11")
	TakePartyItemNum("POTN11",1)   DestroyItem("POTN11")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvArmUpg", "GLOBAL", 2)
	TakeItemReplace("KovaArm5","KovaArm2","Kova")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END

	IF ~~ THEN BEGIN KyBow2
	SAY ~Let's see, about twenty +3 arrows and some spells, five to make magic go away, and three to make eyes good, oh yes. And some gold, not much, just 15,000 gold. Easy as pie.~
	IF ~NumItemsPartyGT("SCRL1E",4) 
	NumItemsPartyGT("SCRL7M",2)
	NumItemsPartyGT("AROW15",19)
	PartyGoldGT(14999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("SCRL7M",3)   DestroyItem("SCRL7M")
	TakePartyItemNum("SCRL1E",5)   DestroyItem("SCRL1E")
	TakePartyItemNum("AROW15",20)   DestroyItem("ARROW15")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyBowUpg", "GLOBAL", 2)
	TakeItemReplace("KiyoBow3","KiyoBow2","Kiyone")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END

	IF ~~ THEN BEGIN KyArm2
	SAY ~Ooh, this be very nice work when done, oh yes. Be needing very good cloak can protect, one scroll to protect from magic, and 15,000 gold to make it stay in one piece.~
	IF ~PartyHasItem("CLCK02")
	NumItemsParty("SCRL07",1)
	PartyGoldGT(14999)~ THEN REPLY ~I've all the materials necessary and am willing to pay.~
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("CLCK02",1)   DestroyItem("CLCK02")
	TakePartyItemNum("SCRL07",1)   DestroyItem("SCRL07")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyArmUpg", "GLOBAL", 2)
	TakeItemReplace("KiyoArm3","KiyoArm2","Kiyone")~ EXIT	
	IF ~~ THEN REPLY ~Maybe some other time.~ GOTO 13
 	END
END
