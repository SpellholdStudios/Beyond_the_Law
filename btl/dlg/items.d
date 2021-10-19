// D file for Cromwell and Cespenar to upgrade Items

// Cromwell

EXTEND_BOTTOM ~WSMITH01~ 58
IF ~PartyHasItem("KovaDag2") XPGT("Kova", 999999)~ THEN REPLY @0 GOTO KvDag1
IF ~PartyHasItem("KovaArm1") XPGT("Kova", 999999)~ THEN REPLY @1 GOTO KvArm1
IF ~PartyHasItem("KiyoBow1") XPGT("Kiyone", 999999)~ THEN REPLY @2 GOTO KyBow1
IF ~PartyHasItem("KiyoArm1") XPGT("Kiyone", 999999)~ THEN REPLY @3 GOTO KyArm1
IF ~InParty("Yoshimo") PartyHasItem("Npsw02")
Global("YoshiKnowCrom", "GLOBAL", 1)~ THEN REPLY @4 GOTO YoshKata1
END

APPEND ~WSMITH01~

	IF ~~ THEN BEGIN YoshKata1
	SAY @5
	IF ~PartyHasItem("Dagg15")~ THEN GOTO YoshKataHave
	IF ~!PartyHasItem("Dagg15")~ THEN GOTO YoshKataNo
	END

	IF ~~ THEN BEGIN YoshKataNo
	SAY @6
	IF ~~ THEN GOTO 13
	END

	IF ~~ THEN BEGIN YoshKataHave
	SAY @7
	IF ~PartyGoldGT(7499)~ THEN REPLY @8
	DO ~TakePartyGold(7500)      DestroyGold(7500)
	TakePartyItemNum("Dagg15",1)   DestroyItem("Dagg15")
	TakePartyItemNum("NPSW02",1)   DestroyItem("NPSW02")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	GiveItemCreate("YoshKata", "Yoshimo", 0,0,0)~ EXIT
	IF ~~ THEN REPLY @9 GOTO 13
	END

	IF ~~ THEN BEGIN KvDag1
	SAY @10
	IF ~PartyHasItem("SCRL8Q") PartyHasItem("SCRL8O") PartyGoldGT(9999)~ THEN REPLY @11
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SCRL8Q",1)   DestroyItem("SCRL8Q")
	TakePartyItemNum("SCRL8O",1)   DestroyItem("SCRL8O")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvDagUpg", "GLOBAL", 1)
	TakeItemReplace("KovaDag3","KovaDag2","Kova")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END

	IF ~~ THEN BEGIN KvArm1
	SAY @13
	IF ~PartyHasItem("SCRL7Q") PartyHasItem("RING06") PartyGoldGT(9999)~ THEN REPLY @11
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SCRL7Q",1)   DestroyItem("SCRL7Q")
	TakePartyItemNum("RING06",1)   DestroyItem("RING06")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvArmUpg", "GLOBAL", 1)
	TakeItemReplace("KovaArm2","KovaArm1","Kova")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END

	IF ~~ THEN BEGIN KyBow1
	SAY @14
	IF ~NumItemsPartyGT("SCRL1E",2)
	NumItemsPartyGT("SCRL7M",1)
	NumItemsPartyGT("AROW11",19)
	PartyGoldGT(9999)~ THEN REPLY @11
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SCRL7M",2)   DestroyItem("SCRL7M")
	TakePartyItemNum("SCRL1E",3)   DestroyItem("SCRL1E")
	TakePartyItemNum("AROW11",20)   DestroyItem("AROW11")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyBowUpg", "GLOBAL", 1)
	TakeItemReplace("KiyoBow2","KiyoBow1","Kiyone")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END

	IF ~~ THEN BEGIN KyArm1
	SAY @15
	IF ~PartyHasItem("SHLD07")
	PartyHasItem("AMUL19")
	PartyGoldGT(9999)~ THEN REPLY @11
        DO ~TakePartyGold(10000)      DestroyGold(10000)
	TakePartyItemNum("SHLD07",1)   DestroyItem("SHLD07")
	TakePartyItemNum("AMUL19",1)   DestroyItem("AMUL19")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyArmUpg", "GLOBAL", 1)
	TakeItemReplace("KiyoArm2","KiyoArm1","Kiyone")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END
END

// Cespenar

EXTEND_BOTTOM ~BOTSMITH~ 2
IF ~PartyHasItem("KovaDag3") XPGT("Kova", 3999999)~ THEN REPLY @16 GOTO KvDag2
IF ~PartyHasItem("KovaArm2") XPGT("Kova", 3999999)~ THEN REPLY @17 GOTO KvArm2
IF ~PartyHasItem("KiyoBow2") XPGT("Kiyone", 3999999)~ THEN REPLY @18 GOTO KyBow2
IF ~PartyHasItem("KiyoArm2") XPGT("Kiyone", 3999999)~ THEN REPLY @19 GOTO KyArm2
END

APPEND ~BOTSMITH~
	IF ~~ THEN BEGIN KvDag2
	SAY @20
	IF ~NumItemsPartyGT("SCRLAP",1)
	NumItemsPartyGT("SCRL9U",1)
	PartyGoldGT(14999)~ THEN REPLY @11
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("SCRL9U",1)   DestroyItem("SCRL9U")
	TakePartyItemNum("SCRL9U",1)   DestroyItem("SCRL9U")
	TakePartyItemNum("SCRLAP",1)   DestroyItem("SCRLAP")
	TakePartyItemNum("SCRLAP",1)   DestroyItem("SCRLAP")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KvDagUpg", "GLOBAL", 2)
	TakeItemReplace("KovaDag5","KovaDag3","Kova")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END

	IF ~~ THEN BEGIN KvArm2
	SAY @21
	IF ~NumItemsPartyGT("SCRL7Q",1)
	NumItemsPartyGT("SCRL6T",1)
	NumItemsPartyGT("POTN11",3)
	PartyGoldGT(14999)~ THEN REPLY @11
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
	IF ~~ THEN REPLY @12 GOTO 13
 	END

	IF ~~ THEN BEGIN KyBow2
	SAY @22
	IF ~NumItemsPartyGT("SCRL1E",4)
	NumItemsPartyGT("SCRL7M",2)
	NumItemsPartyGT("AROW15",19)
	PartyGoldGT(14999)~ THEN REPLY @11
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("SCRL7M",3)   DestroyItem("SCRL7M")
	TakePartyItemNum("SCRL1E",5)   DestroyItem("SCRL1E")
	TakePartyItemNum("AROW15",20)   DestroyItem("AROW15")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyBowUpg", "GLOBAL", 2)
	TakeItemReplace("KiyoBow3","KiyoBow2","Kiyone")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END

	IF ~~ THEN BEGIN KyArm2
	SAY @23
	IF ~PartyHasItem("CLCK02")
	NumItemsParty("SCRL07",1)
	PartyGoldGT(14999)~ THEN REPLY @11
        DO ~TakePartyGold(15000)      DestroyGold(15000)
	TakePartyItemNum("CLCK02",1)   DestroyItem("CLCK02")
	TakePartyItemNum("SCRL07",1)   DestroyItem("SCRL07")
	CreateVisualEffectObject("SPCRTWPN",Myself)
	SetGlobal("KyArmUpg", "GLOBAL", 2)
	TakeItemReplace("KiyoArm3","KiyoArm2","Kiyone")~ EXIT
	IF ~~ THEN REPLY @12 GOTO 13
 	END
END
