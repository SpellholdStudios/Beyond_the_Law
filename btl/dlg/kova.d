BEGIN ~Z#KOVAJ~

IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,9)
Global("Bad9","LOCALS",0)~ THEN BEGIN Bad9
SAY @0
= @1
IF ~~ THEN DO ~SetGlobal("Bad9","LOCALS",1)~EXIT
END

IF ~~ THEN BEGIN Bad7
SAY @2
= @3
IF ~~ THEN DO ~DropInventory() LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("BregaTalk","GLOBAL",250)~ THEN BEGIN TIGovt2
SAY @4
IF ~~ THEN DO ~SetGlobal("BregaTalk","GLOBAL",251) LeaveParty() Kill(Myself)~ EXIT
END

IF ~Global("CornTalk","GLOBAL",250)~ THEN BEGIN TICowl2
SAY @5
IF ~~ THEN DO ~SetGlobal("CornTalk","GLOBAL",251) Wait(2)
LeaveParty() Kill(Myself)~ EXIT
END

IF ~Global("TIGael","GLOBAL",1)~ THEN BEGIN TISh2
SAY @6
IF ~~ THEN DO ~SetGlobal("FindingKova","GLOBAL",250)~ EXIT
END

IF ~Global("FindingKova","GLOBAL",9)
Global("Chapter","GLOBAL",%bg2_chapter_3%)
AreaCheck("AR0307")~ THEN BEGIN Aran2
SAY @7
IF ~~ THEN EXTERN Aran Aran3
END

IF ~AreaCheck("AR0400")
	InParty("Kova")
	Global("NoGaelan","LOCALS",1)
	!Global("BodhiAppear","Global",3)
	PartyGoldLT(20000)~ THEN BEGIN NoGaelan1
SAY @8
= @9
IF ~~ THEN DO ~SetGlobal("NoGaelan","LOCALS",2)~ EXIT
END


IF ~!AreaCheck("AR1002")
	InParty("Kova")
	Global("BylTalk","GLOBAL",3)
	Global("CornTalk","GLOBAL",1)~ THEN BEGIN PostCorn
SAY @10
IF ~~ THEN DO ~SetGlobal("CornTalk","GLOBAL",2)~ EXIT
END

IF ~PartyHasItem("MISC4V")
	Global("LOAClue","GLOBAL",0)
	!Global("RenalJob","GLOBAL",4)
	InParty("Kova")~ THEN BEGIN FindMaeLOA
SAY @11
IF ~~ THEN DO ~SetGlobal("LOAClue","GLOBAL",1)
GiveItemCreate("MaeLOA",Myself,0,0,0)
AddexperienceParty(12000)~ EXIT
END

IF ~PartyHasItem("MISC4V")
	Global("LOAClue","GLOBAL",0)
	AreaCheck("AR0300")
	Global("RenalJob","GLOBAL",4)
	InParty("Kova")~ THEN BEGIN FindMaeLOA2
SAY @12
IF ~~ THEN DO ~SetGlobal("LOAClue","GLOBAL",1)
GiveItemCreate("MaeLOA",Myself,0,0,0)
AddexperienceParty(12000)~ EXIT
END

CHAIN
IF ~!AreaCheck("AR1002")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")
	Global("BylTalk","GLOBAL",2)~ THEN Z#KOVAJ PostByl
@13
== Z#KIYOJ @14
== Z#KOVAJ @15
== Z#KIYOJ @16
== Z#KOVAJ @17
== Z#KIYOJ @18
== Z#KOVAJ @19
== Z#KIYOJ @20
DO ~SetGlobal("BylTalk","GLOBAL",3)~ EXIT

CHAIN
IF ~!AreaCheck("AR1002")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")
	Global("BregaTalk","GLOBAL",1)~ THEN Z#KOVAJ PostBrega
@21
== Z#KIYOJ @22
== Z#KOVAJ @23
== Z#KIYOJ @24
== Z#KOVAJ @25
== Z#KIYOJ @26
== Z#KOVAJ @27
== Z#KIYOJ @28
== Z#KOVAJ @29
DO ~SetGlobal("BregaTalk","GLOBAL",2)~ EXIT


CHAIN
IF ~!AreaCheck("AR1002")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")
	PartyHasItem("CornRep")
	Global("EnforcerRep","LOCALS",0)
	!Global("CornTalk","GLOBAL",3)~ THEN Z#KOVAJ GetCornRep
@30
DO ~SetGlobal("EnforcerRep","LOCALS",1)~
= @31
= @32
== Z#KIYOJ @33
== Z#KOVAJ @34
== Z#KIYOJ @35
== Z#KOVAJ @36
== Z#KIYOJ @37
== Z#KOVAJ @38
DO ~AddexperienceParty(12000)
SetGlobal("EnforcerRep","LOCALS",1)
SetGlobal("CornTalk","GLOBAL",3)~ EXIT

CHAIN
IF ~AreaCheck("AR1000")
InParty("Kiyone")
InMyArea("Kiyone")
Global("DayvClue","GLOBAL",1)
Global("KKFindCrom","GLOBAL",0)~ THEN Z#KOVAJ FindCrom
@39
DO ~SetGlobal("KKFindCrom","GLOBAL",1)~
== Z#KIYOJ @40
== Z#KOVAJ @41
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~ THEN @42
== Z#KOVAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~ THEN @43
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~ THEN @44
EXIT

CHAIN
IF 	~Global("BodhiAppear","GLOBAL",3)
	!Global("NoGaelan","LOCALS",3)
	InParty("Kova")~ THEN Z#KOVAJ ByeBodhi
@45
= @46
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN @47
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN @48
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN @49
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN @50
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN @51
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN @52
== Z#KOVAJ @53
= @54
DO ~SetGlobal("NoGaelan","LOCALS",3)~ EXIT

CHAIN
IF ~!AreaCheck("AR1103")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")
	Global("JermClue","GLOBAL",1)~ THEN Z#KOVAJ PostJermClue
@55
== Z#KIYOJ @56
== Z#KOVAJ @57
== Z#KIYOJ @58
== Z#KOVAJ @59
DO ~SetGlobal("JermClue","GLOBAL",2)~ EXIT

CHAIN
IF ~Global("Dayven","GLOBAL",4)
	!AreaCheckObject("AR1005","Kova")
	!AreaCheckObject("AR1005","Kiyone")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")~ THEN Z#KOVAJ PostDayven1
@60
== Z#KIYOJ @61
== Z#KOVAJ @62
== Z#KIYOJ @63
== Z#KOVAJ @64
DO ~AddexperienceParty(9000)
AddJournalEntry(@1013,QUEST)
SetGlobal("Dayven","GLOBAL",5)~ EXIT

CHAIN
IF ~!AreaCheck("AR1002")
	Global("Dayven","GLOBAL",6)
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")~ THEN Z#KOVAJ PostDayven1
@65
== Z#KIYOJ @66
== Z#KOVAJ @67
== Z#KIYOJ @68
== Z#KOVAJ @69
DO ~AddJournalEntry(@5006,QUEST)
AddexperienceParty(9000)
SetGlobal("Dayven","GLOBAL",7)~ EXIT

//
//
//

BEGIN Z#KOVA

IF ~~ THEN BEGIN Attack1
SAY @70
IF ~~ THEN DO ~Enemy() SetGlobal("FindingKova","GLOBAL",111)~ EXTERN Z#KIYOJ Attack2
END

IF ~InParty("Kiyone")
Global("FindingKova","GLOBAL",5)~ THEN BEGIN 1
SAY @71
IF ~~ THEN DO ~SetGlobal("FindingKova","GLOBAL",6)
AddexperienceParty(12000)~ EXTERN Z#KIYOJ 2
END

IF ~~ THEN BEGIN 3
SAY @72
IF ~~ THEN REPLY @73 GOTO 4
IF ~~ THEN REPLY @74 GOTO 4
IF ~~ THEN REPLY @75 GOTO Attack1
END

IF ~~ THEN BEGIN 5-3
SAY @76
=
@77
IF ~~ THEN REPLY @78 GOTO 6
IF ~~ THEN REPLY @79 GOTO 6
IF ~~ THEN REPLY @80 GOTO Attack1
IF ~~ THEN REPLY @81 GOTO Attack1
END

IF ~~ THEN BEGIN 6
SAY @82
= @83
= @84
= @85
= @86
= @87
= @88
= @89
= @90
= @91
= @92
IF ~~ THEN REPLY @93 GOTO 6-1
IF ~~ THEN REPLY @94 EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY @95 EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY @96 EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY @97 GOTO Attack1
IF ~~ THEN REPLY @98 GOTO Attack1
END

IF ~~ THEN BEGIN 6-2
SAY @99
IF ~~ THEN REPLY @100 EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY @101 GOTO Attack1
END

IF ~~ THEN BEGIN 9
SAY @102
= @103
= @104
= @105
= @106
= @107
IF ~~ THEN
UNSOLVED_JOURNAL @5003
DO ~EraseJournalEntry(@5002)
EraseJournalEntry(@5001)
RealSetGlobalTimer("askabtfirk","GLOBAL",35)
SetGlobal("KovaJoined","LOCALS",1)
SetGlobal("FindingKova","GLOBAL",9)
SetGlobal("KKJoin","GLOBAL",1)
SetGlobal("GovtGuards","GLOBAL",1)
SetGlobal("ShadowHunt","GLOBAL",1)
RealSetGlobalTimer("KKBanterT","GLOBAL",4600)
RealSetGlobalTimer("Pursuit","GLOBAL",600)
SetGlobalTimer("KKGovtT","GLOBAL",24480)
SetGlobalTimer("KKHuntT","GLOBAL",9600)
RealSetGlobalTimer("KKThiefT","GLOBAL",5000)
SetGlobalTimer("KKCowlT","GLOBAL",36000)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 10Ext
SAY @108
IF ~~ THEN DO ~EscapeArea()
EraseJournalEntry(@5002)
EraseJournalEntry(@5001)
AddJournalEntry(@5053,QUEST_DONE)
AddexperienceParty(9000)~ EXIT
END

CHAIN
IF ~~ THEN Z#KOVA 6-1
@109
= @110
= @111
= @112
== Z#KIYOJ @113
== Z#KOVA @114
= @115
EXTERN Z#KOVA 6-2

CHAIN
IF ~Global("FindingKova","GLOBAL",6)~ THEN Z#KOVA 4
@116
DO ~SetGlobal("FindingKova","GLOBAL",7)~
== Z#KIYOJ @117
== Z#KOVA @118
== Z#KIYOJ @119
== Z#KOVA @120
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen")~ THEN @121
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN @122
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN @123
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN @124
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy")~ THEN @125
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")~ THEN @126
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN @127
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN @128
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis")~ THEN @129
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN @130
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN @131
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo")~ THEN @132
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN @133
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")~ THEN @134
== Z#KIYOJ @135
== Z#KOVA @136
EXTERN Z#KIYOJ 5

APPEND Z#KIYOJ

	IF ~Global("FindingKova","GLOBAL",111)~ THEN BEGIN Attack2
	SAY @137
	IF ~~ THEN DO ~SetGlobal("FindingKova","GLOBAL",112) LeaveParty() Enemy()
	ApplySpell(Myself,WIZARD_PROTECTION_FROM_FIRE)
	ApplySpell(Myself,CLERIC_IRONSKIN)~ EXIT
	END

	IF ~Global("FindingKova","GLOBAL",6)~ THEN BEGIN 2
	SAY @138
	IF ~~ THEN DO ~SetGlobal("FindingKova","GLOBAL",7)~ EXTERN Z#KOVA 3
	END

	IF ~Global("FindingKova","GLOBAL",8)~ THEN BEGIN 5
	SAY @139
	IF ~CheckStatGT(Player1,15,INT) Global("KiyoTell","LOCALS",0)~ THEN REPLY @140 GOTO 5-2
	IF ~~ THEN REPLY @141 EXTERN Z#KOVA 6
	IF ~~ THEN REPLY @142 EXTERN Z#KOVA 6
	IF ~~ THEN REPLY @143 EXTERN Z#KOVA 6
	IF ~~ THEN REPLY @144 GOTO 5-1
	IF ~~ THEN REPLY @145 GOTO 5-1
	IF ~~ THEN REPLY @146 EXTERN Z#KOVA Attack1
	END

	IF ~~ THEN BEGIN 5-1
	SAY @147
	IF ~CheckStatGT(Player1,10,INT) Global("KiyoTell","LOCALS",0)~ THEN REPLY @140 GOTO 5-2
	IF ~~ THEN REPLY @148 EXTERN Z#KOVA 6
	IF ~~ THEN REPLY @149 EXTERN Z#KOVA 6
	IF ~~ THEN REPLY @150 EXTERN Z#KOVA Attack1
	END

	IF ~~ THEN BEGIN 5-2
	SAY @151
	= @152
	IF ~~ THEN EXTERN Z#Kova 5-3
	END

	IF ~~ THEN BEGIN 8
	SAY @153
	= @154
	IF ~~ THEN REPLY @155 EXTERN Z#KOVA 9
	IF ~~ THEN REPLY @156 EXTERN Z#KOVA 9
	IF ~~ THEN REPLY @157 GOTO 10
	IF ~~ THEN REPLY @158 EXTERN Z#KOVA Attack1
	END

	IF ~~ THEN BEGIN 10
	SAY @159
	= @160
	IF ~~ THEN
	DO ~SetGlobal("KiyoJoined","LOCALS",0)
	DropInventory()
	LeaveParty()
	EscapeArea()~ EXTERN Z#KOVA 10Ext
	END
END

CHAIN
IF ~~ THEN Z#KIYOJ 7
@161
== Z#KOVA @162
== Z#KIYOJ @163
== Z#KOVA @164
= @165
EXTERN Z#KIYOJ 8

//
//
//

BEGIN Z#KOVAP

IF ~Global("KovaJoined","LOCALS",1) Global("KKJoin","GLOBAL",1)
Dead("Kiyone") InPartyAllowDead("Kiyone")~ THEN BEGIN NoGo
SAY @166
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KovaJoined","LOCALS",1) Global("KKJoin","GLOBAL",1)
!Dead("Kiyone")~ THEN BEGIN L20
SAY @167
IF ~~ THEN REPLY @168 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @169 GOTO L21
END

IF ~~ THEN BEGIN L21
SAY @170
IF ~~ THEN REPLY @171 DO ~SetGlobal("KovaJoined","LOCALS",0)
SetGlobal("KKJoin","GLOBAL",3)~ EXIT
IF ~!Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @172 GOTO L22
END

IF ~~ THEN BEGIN L22
SAY @173
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",0)
EscapeAreaMove("AR1200",440,1680,6)
SetGlobal("KKJoin","GLOBAL",2)~ EXIT
END

IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)
Global("KovaJoined","LOCALS",0) Global("KKJoin","GLOBAL",1)~ THEN BEGIN J20-1
SAY @174
IF ~~ THEN REPLY @175
DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()~ EXTERN Z#KIYOP J20In
IF ~~ THEN REPLY @176 GOTO J21
END

IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)
Global("BodhiJob","GLOBAL",0) Global("KKJoinShadow","GLOBAL",1)
Global("KovaJoined","LOCALS",0) Global("KKJoin","GLOBAL",1)~ THEN BEGIN J20-2
SAY @174
IF ~~ THEN REPLY @175
DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()~ EXTERN Z#KIYOP J20In
IF ~~ THEN REPLY @176 GOTO J21
END

IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)
OR(2) !Global("BodhiJob","GLOBAL",0) !Global("KKJoinShadow","GLOBAL",1)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%) Global("KiyoJoined","LOCALS",0)
Global("KKJoin","GLOBAL",0)~ THEN BEGIN KKbothNo1
SAY @177
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXTERN Z#KIYOP KKbothNo2
END

IF ~~ THEN BEGIN KKbothNo2
SAY @178
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN J21
SAY @179
IF ~~ THEN EXIT
END

//

IF ~Global("KKJoin","GLOBAL",2) !InParty("Kiyone") Global("KovaJoined","LOCALS",1)~ THEN BEGIN L22Go
SAY @180
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1)
EscapeAreaMove("AR1200",440,1680,6)~ EXIT
END

IF ~Global("KKJoin","GLOBAL",3) !InParty("Kiyone") Global("KovaJoined","LOCALS",1)~ THEN BEGIN L21Go
SAY @181
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1)
MoveToObject("Kiyone")~ EXIT
END

IF ~InParty("Kiyone")~ THEN BEGIN J20In
SAY @182
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()~ EXIT
END



/* ================== *
 *  Kiyone Dialogues  *
 * ================== */
BEGIN ~Z#KIYOJ~

IF ~InParty("Kiyone")
Global("FindingKova","GLOBAL",2)
AreaCheck("AR1200")
LOS("Kova",120)~ THEN BEGIN FoundKova
SAY @183
IF ~~ THEN EXIT
END

IF ~Global("KKJoin","GLOBAL",0)
!InParty("Kova")
AreaCheck("AR0311")
Global("GaeNote","LOCALS",0)~ THEN GaeNote
SAY @184
IF ~~ THEN DO ~SetGlobal("GaeNote","LOCALS",1)~ EXIT
END

IF ~Global("WorkingForAran","GLOBAL",1)
Global("ShadowWork","GLOBAL",1)
Global("Linvail","GLOBAL",1)
PartyHasItem("MISC4S")
Global("Chapter","GLOBAL",%bg2_chapter_3%)
!InParty("Kova")
Global("KKJoin","GLOBAL",0)
AreaCheck("AR0311")~ THEN ShadowThiefNoKova
SAY @185
= @186
IF ~~ THEN DO ~DropInventory() LeaveParty() EscapeArea()~ EXIT
END

IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,11)
Global("Bad11","LOCALS",0)~ THEN BEGIN Bad11
SAY @187
= @188
IF ~~ THEN DO ~SetGlobal("Bad11","LOCALS",1)~ EXIT
END

IF ~!StateCheck(Player1,STATE_SLEEPING)
ReputationLT(Player1,7)
InParty("Kova") InMyArea("Kova")
Global("Bad7","LOCALS",0)~ THEN BEGIN Bad7
SAY ~I'm afraid that with the deeds I see you commit,I cannot continue in your company further,<CHARNAME>. It will not help my case in the least.~
~In parting,I thank you for what you have done for myself and Kova,and entreat sincerely to turn from the dark path you now tread.~
IF ~~ THEN DO ~SetGlobal("Bad7","LOCALS",1)
DropInventory() LeaveParty() EscapeArea()~ EXTERN Z#KOVAJ Bad7
END

IF ~~ THEN BEGIN BodhiKiyo1
SAY @190
COPY_TRANS BODHI 1
END

IF ~~ THEN BEGIN Gael3
SAY @191
IF ~~ THEN EXTERN SEEKOVA Gael4
END

IF ~Global("TIGael","GLOBAL",1)
!InParty("Kova")
StateCheck("Kova",STATE_DEAD)~ THEN BEGIN TISh3
SAY @192
= @193
= @194
IF ~~ THEN DO ~DropInventory() LeaveParty() SetGlobal("BregaTalk","GLOBAL",252) EscapeArea() Wait(1) DestroySelf()~ EXTERN SEEKOVA TISh4
END

IF ~Global("BregaTalk","GLOBAL",251)~ THEN BEGIN TIGovt3
SAY @195
= @193
= @196
IF ~~ THEN DO ~DropInventory() LeaveParty() SetGlobal("BregaTalk","GLOBAL",252) EscapeArea() Wait(1) DestroySelf()~ EXTERN HABREGA TIGovt4
END

IF ~Global("CornTalk","GLOBAL",251)~ THEN BEGIN TICowl3
SAY @195
= @193
= @197
IF ~~ THEN DO ~DropInventory() LeaveParty() SetGlobal("CornTalk","GLOBAL",252)
EscapeArea() Wait(1) DestroySelf()~ EXTERN CORNEIL TICowl4
END

CHAIN
IF ~Global("KKJoin","GLOBAL",1)
Global("BylTalk","GLOBAL",1)
AreaCheck("AR1002")~ THEN Z#KIYOJ BylTalk1
@198
== BYLANNA @199
== Z#KIYOJ @200
== BYLANNA @201
== Z#KIYOJ @202
== BYLANNA @203
== Z#KIYOJ @204
== BYLANNA @205
== Z#KIYOJ @206
== BYLANNA @207
== Z#KIYOJ @208
== BYLANNA @209
== Z#KIYOJ @210
DO ~EraseJournalEntry(@5003)
AddJournalEntry(@5004,QUEST)
SetGlobal("BylTalk","GLOBAL",2)
SetGlobal("GovtGuards","GLOBAL",2)
SetGlobal("KKGovt","GLOBAL",0)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
AddexperienceParty(9000)~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
	Global("KKJoin","GLOBAL",1)
	Global("AddRayic","GLOBAL",1)
	PartyHasItem("RayNote")
	!ActuallyInCombat()~ THEN Z#KIYOJ PostRayic
@211
== Z#KOVAJ @212
== Z#KIYOJ @213
== Z#KOVAJ @214
== Z#KIYOJ @215
== Z#KOVAJ @216
== Z#KIYOJ @217
DO ~AddJournalEntry(@5010,QUEST)
SetGlobal("AddRayic","GLOBAL",2)
AddexperienceParty(9000)~
EXIT

CHAIN
IF ~~ THEN Z#KIYOJ JermClue1
@218
== JUGJER01 @219
== Z#KIYOJ @220
== JUGJER01 @221
= @222
= @223
= @224
= @225
== Z#KIYOJ @226
== JUGJER01 @227
== Z#KIYOJ @228
== JUGJER01 @229
== Z#KIYOJ @230
== JUGJER01 @231
== Z#KIYOJ @232
== JUGJER01 @233
== Z#KIYOJ @234
DO ~SetGlobal("AddRayic","GLOBAL",3)
GiveItemCreate("JerSig",Player1,0,0,0)
SetGlobal("JermClue","GLOBAL",1) AddexperienceParty(12000)~ EXTERN JUGJER01 Bye

//
//
//

BEGIN Z#KIYO

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY @235
IF ~~ THEN REPLY @236 GOTO Relate
IF ~~ THEN REPLY @237 GOTO Relate
IF ~~ THEN REPLY @238 GOTO Relate
IF ~~ THEN REPLY @239 GOTO IntroSelf
IF ~~ THEN REPLY @240 GOTO Bye
IF ~~ THEN REPLY @241 GOTO Bye
END

IF ~NumTimesTalkedToGT(0) ReputationLT(Player1,11)~ THEN BEGIN Thinking
SAY @242
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0) ReputationLT(Player1,8)~ THEN BEGIN Goodbye
SAY @243
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~NumTimesTalkedToGT(0) !Global("Chapter","GLOBAL",%bg2_chapter_2%)~ THEN BEGIN TimeOut
SAY @244
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~NumTimesTalkedToGT(0) ReputationGT(Player1,10)~ THEN BEGIN ReturnDialogue
SAY @245
IF ~~ THEN REPLY @246 GOTO IntroSelf
IF ~~ THEN REPLY @247 GOTO Relate
IF ~~ THEN REPLY @248 GOTO Joining
IF ~~ THEN REPLY @249 GOTO Bye
END

IF ~~ THEN BEGIN IntroSelf
SAY @250
= @251
= @252
IF ~~ THEN REPLY @253 GOTO Relate
IF ~~ THEN REPLY @254 GOTO Relate
IF ~~ THEN REPLY @255 GOTO Relate
IF ~~ THEN REPLY @256 GOTO Bye
IF ~~ THEN REPLY @257 GOTO Bye
IF ~~ THEN REPLY @258 GOTO Bye
END

IF ~~ THEN BEGIN Relate
SAY @259
= @260
= @261
= @262
= @263
= @264
IF ~~ THEN REPLY @265 GOTO Joining
IF ~~ THEN REPLY @266 GOTO Joining
IF ~~ THEN REPLY @267 GOTO Joining
IF ~~ THEN REPLY @268 GOTO Bye
IF ~~ THEN REPLY @269 GOTO Bye
IF ~~ THEN REPLY @270 GOTO Bye
END

IF ~~ THEN BEGIN Bye
SAY @271
IF ~~ THEN DO ~EscapeAreaMove("AR1000",3000,1100,2)~ EXIT
END

IF ~~ THEN BEGIN Joining
SAY @272
= @273
IF ~CheckStatGT(Player1,17,INT) CheckSTatGT(Player1,15,CHR)~ THEN REPLY @274 DO ~SetGlobal("KiyoTell","LOCALS",1)~ GOTO KnowHim
IF ~~ THEN REPLY @275 UNSOLVED_JOURNAL @5001
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KnowHim
SAY @276
= @277
= @278
IF ~~ THEN REPLY @279 GOTO ThankYou
IF ~~ THEN REPLY @280 DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~
UNSOLVED_JOURNAL @5002 EXIT
IF ~~ THEN REPLY @281 DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~
UNSOLVED_JOURNAL @5002 EXIT
END

IF ~~ THEN BEGIN ThankYou
SAY @282
IF ~~ THEN UNSOLVED_JOURNAL @5002 DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
END

//
//
//

BEGIN Z#KIYOP

IF ~Global("KiyoJoined","LOCALS",1) Global("KKJoin","GLOBAL",1)
Dead("Kova") InPartyAllowDead("Kova")~ THEN BEGIN NoGo
SAY @283
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~Global("KiyoJoined","LOCALS",1) Global("KKJoin","GLOBAL",0)
!Dead("Kova")~ THEN BEGIN L10
SAY @284
IF ~~ THEN REPLY @285 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @169 GOTO L11
END

IF ~~ THEN BEGIN L11
SAY @286
IF ~~ THEN REPLY @171 DO ~SetGlobal("KiyoJoined","LOCALS",0)~ EXIT
IF ~~ THEN REPLY @287 GOTO L12
END

IF ~~ THEN BEGIN L12
SAY @288
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0) EscapeAreaMove("AR1000",3000,1100,2)~ EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%) Global("KiyoJoined","LOCALS",0)
Global("KKJoin","GLOBAL",0)~ THEN BEGIN NotChapter3
SAY @244
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)
Global("KiyoJoined","LOCALS",0) Global("KKJoin","GLOBAL",0)~ THEN BEGIN J10
SAY @289
IF ~~ THEN REPLY @290 DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
IF ~~ THEN REPLY @291 GOTO J11
END

IF ~~ THEN BEGIN J11
SAY @292
IF ~~ THEN EXIT
END

//

IF ~Global("KiyoJoined","LOCALS",1) Global("KKJoin","GLOBAL",1)~ THEN BEGIN L20
SAY @293
IF ~~ THEN REPLY @168 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @169 GOTO L21
END

IF ~~ THEN BEGIN L21
SAY @170
IF ~~ THEN REPLY @171 DO ~SetGlobal("KiyoJoined","LOCALS",0)
SetGlobal("KKJoin","GLOBAL",3)~ EXIT
IF ~!Global("Chapter","GLOBAL",%bg2_chapter_4%) !Global("Chapter","GLOBAL",%bg2_chapter_5%)~ THEN REPLY @172 GOTO L22
END

IF ~~ THEN BEGIN L22
SAY @294
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0)
EscapeAreaMove("AR1200",400,1693,8)
SetGlobal("KKJoin","GLOBAL",2)~ EXIT
END

IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)
Global("KiyoJoined","LOCALS",0) Global("KKJoin","GLOBAL",1) ~ THEN BEGIN J20-1
SAY @295
IF ~~ THEN REPLY @175
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXTERN Z#KOVAP J20In
IF ~~ THEN REPLY @176 GOTO J21
END

IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)
Global("BodhiJob","GLOBAL",0) Global("KKJoinShadow","GLOBAL",1)
Global("KiyoJoined","LOCALS",0) Global("KKJoin","GLOBAL",1) ~ THEN BEGIN J20-2
SAY @295
IF ~~ THEN REPLY @175
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXTERN Z#KOVAP J20In
IF ~~ THEN REPLY @176 GOTO J21
END

IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)
OR(2) !Global("BodhiJob","GLOBAL",0) !Global("KKJoinShadow","GLOBAL",1)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%) Global("KiyoJoined","LOCALS",0)
Global("KKJoin","GLOBAL",0)~ THEN BEGIN KKbothNo1
SAY @296
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXTERN Z#KOVAP KKbothNo2
END

IF ~~ THEN BEGIN KKbothNo2
SAY @297
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END


IF ~~ THEN BEGIN J21
SAY @179
IF ~~ THEN EXIT
END

//

IF ~Global("KKJoin","GLOBAL",2) !InParty("Kova") Global("KiyoJoined","LOCALS",1)~ THEN BEGIN L22Go
SAY @298
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1)
EscapeAreaMove("AR1200",400,1693,8)~ EXIT
END

IF ~Global("KKJoin","GLOBAL",3) !InParty("Kova") Global("KiyoJoined","LOCALS",1)~ THEN BEGIN L21Go
SAY @299
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1) MoveToObject("Kova") ~ EXIT
END

IF ~InParty("Kova")~ THEN BEGIN J20In
SAY @182
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
END


/* ===================================================================== *
 *  Dialogues for either one of their deaths and removal from the party  *
 * ===================================================================== */
BEGIN KYCDEAD
BEGIN KVCDEAD
BEGIN KVCSPLAT
BEGIN KYCSPLAT

CHAIN
IF ~Dead("Kova")
!InPartyAllowDead("Kova")
Global("KKJoin","GLOBAL",1)
!Global("FindingKova","GLOBAL",250)~ THEN KYCDEAD Gone
@300
= @301
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)
ActionOverride("Kova",DestroySelf())~ EXIT

CHAIN
IF ~Dead("Kiyone")
!InPartyAllowDead("Kiyone")
Global("KKJoin","GLOBAL",1)~ THEN KVCDEAD Gone
@302
= @303
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)
ActionOverride("Kiyone",DestroySelf())~ EXIT

CHAIN
IF ~True()~ THEN KVCSPLAT Gone
@304
= @305
= @306
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)~ EXIT

CHAIN
IF ~True()~ THEN KYCSPLAT Gone
@195
= @307
= @308
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)~ EXIT


/* ================= *
 *  Dayven Dialogue  *
 * ================= */
BEGIN ~DAYVEN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Hi1
SAY @309
IF ~GlobalGT("Dayven","GLOBAL",0)
GlobalLT("Dayven","GLOBAL",4)~ THEN REPLY @310 DO ~SetGlobal("Dayven","GLOBAL",3)~ GOTO 1
IF ~~ THEN REPLY @311 EXIT
END

IF ~~ THEN BEGIN 1
SAY @312
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Dayven2
IF ~OR (2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN GOTO 1End
END

IF ~~ THEN BEGIN 1End
SAY @313
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
SAY @314
IF ~~ THEN REPLY @315 GOTO 4
IF ~~ THEN REPLY @316 GOTO 5
END

IF ~~ THEN BEGIN 4
SAY @317
= @318
IF ~~ THEN REPLY @319 GOTO 5
END

IF ~~ THEN BEGIN 5
SAY @320
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Hi2
SAY @321
IF ~GlobalGT("Dayven","GLOBAL",0)
GlobalLT("Dayven","GLOBAL",4)~ THEN REPLY @310 DO ~SetGlobal("Dayven","GLOBAL",3)~ GOTO 1
IF ~Global("Dayven","GLOBAL",3)~ THEN REPLY @322 GOTO 1Ext
IF ~GlobalGT("Dayven","GLOBAL",3)~ THEN REPLY @323 GOTO 2Ext
IF ~GlobalGT("Dayven","GLOBAL",3)~ THEN REPLY @315 GOTO 4
IF ~Global("Dayven","GLOBAL",9) Inparty("Kiyone") InMyArea("Kiyone")
PartyHasItem("DayRec")~ THEN REPLY @324 DO ~SetGlobal("Dayven","GLOBAL",10)~ GOTO 6
IF ~Global("Dayven","GLOBAL",11)~ THEN REPLY @325 GOTO 6Opt2
IF ~Global("Dayven","GLOBAL",12)~ THEN REPLY @326 GOTO 7
IF ~~ THEN REPLY @311 EXIT
END

IF ~~ THEN BEGIN 1Ext
SAY @327
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Dayven2
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN GOTO 1End
END

IF ~~ THEN BEGIN 2Ext
SAY @328
= @329
= @330
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6Opt
SAY @331
IF ~~ THEN REPLY @332 GOTO 6Opt1
IF ~~ THEN REPLY @333 GOTO 6Opt2
END

IF ~~ THEN BEGIN 6Opt1
SAY @334
IF ~~ THEN DO ~SetGlobal("Dayven","GLOBAL",11)~ EXIT
END

CHAIN
IF ~~ THEN DAYVEN 2
@335
= @336
= @337
= @338
= @339
= @340
== Z#KIYOJ @341
DO ~SetGlobal("Dayven","GLOBAL",4)~ EXTERN DAYVEN 3

CHAIN
IF ~~ THEN DAYVEN 6
@342
== Z#KIYOJ @343
= @344
== DAYVEN @345
= @346
= @347
= @348
EXTERN DAYVEN 6Opt

CHAIN
IF ~~ THEN DAYVEN 6Opt2
@349
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @350
== DAYVEN @351
= @352
= @353
DO ~SetGlobal("Dayven","GLOBAL",12)~ EXIT

CHAIN
IF ~~ THEN DAYVEN 7
@354
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @355
== DAYVEN @356
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @357
== DAYVEN @358
DO ~SetGlobal("Dayven","GLOBAL",13)
AddJournalEntry(@5009,QUEST)
AddexperienceParty(15000)
SetGlobal("DayvClue","GLOBAL",1)~ EXIT

APPEND Z#KIYOJ
	IF ~~ THEN BEGIN Dayven2
	SAY @359
	IF ~~ THEN EXTERN DAYVEN 2
	END
END


/* ================= *
 *  Renal Extension  *
 * ================= */
INTERJECT_COPY_TRANS ~Renal~ 2 HiKova
== RENAL IF ~InParty("Kova")~ THEN @360
= @361
= @362
END

INTERJECT_COPY_TRANS ~Renal~ 48 OffThief
== RENAL IF ~GlobalGT("KKJoin","GLOBAL",0) InParty("Kova")~ THEN @363
= @364
= @365
DO ~IncrementGlobal("ShadowHunt","GLOBAL",1)~
END

CHAIN
IF WEIGHT #-1 ~Global("PlayerThiefGuild","GLOBAL",1)
Global("PGFailed","GLOBAL",0)
!Global("Chapter","GLOBAL",%bg2_chapter_6%)
InParty("Kova")
Global("KKJoin","GLOBAL",1)~ THEN RENAL KvHaveGuild @366
END
IF ~~ THEN REPLY @367 EXIT
IF ~InParty("Kova")
Global("RenalJob","GLOBAL",4)
Global("GivenStuff","LOCALS",0)
Global("MaeVarExposed","GLOBAL",1)
OR(2)
	Global("LOAClue","GLOBAL",0)
	Global("AddRayic","GLOBAL",0)~
THEN REPLY @368 GOTO Ren1
IF ~Global("Dayven","GLOBAL",7)
Global("RenalJob","GLOBAL",4)
Global("MaeVarExposed","GLOBAL",1)~
THEN REPLY @369 GOTO Ren2
IF ~!GlobalTimerExpired("RenalCheckDayven","GLOBAL")
Global("Dayven","GLOBAL",8)~
THEN REPLY @370 GOTO Ren22no
IF ~GlobalTimerExpired("RenalCheckDayven","GLOBAL")
Global("Dayven","GLOBAL",8)~
THEN REPLY @370 GOTO Ren22
IF ~OR(2)
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BaevrinPlot","GLOBAL",7)~ THEN REPLY @371 GOTO BvPlot8Dunno


CHAIN
IF WEIGHT #-1 ~Global("RenalJob","GLOBAL",4)
Global("PlayerThiefGuild","GLOBAL",0)
Global("PGFailed","GLOBAL",0)
!Global("Chapter","GLOBAL",%bg2_chapter_6%)
InParty("Kova")
Global("KKJoin","GLOBAL",1)~ THEN RENAL KvNoGuild
@372
END
IF ~~ THEN REPLY @373 EXIT
IF ~InParty("Kova")
Global("RenalJob","GLOBAL",4)
Global("GivenStuff","LOCALS",0)
Global("MaeVarExposed","GLOBAL",1)
OR(2)
	Global("LOAClue","GLOBAL",0)
	Global("AddRayic","GLOBAL",0)~
THEN REPLY @368 GOTO Ren1
IF ~Global("Dayven","GLOBAL",7)
Global("RenalJob","GLOBAL",4)
Global("MaeVarExposed","GLOBAL",1)~
THEN REPLY @369 GOTO Ren2
IF ~!GlobalTimerExpired("RenalCheckDayven","GLOBAL")
Global("Dayven","GLOBAL",8)~
THEN REPLY @370 GOTO Ren22no
IF ~GlobalTimerExpired("RenalCheckDayven","GLOBAL")
Global("Dayven","GLOBAL",8)~
THEN REPLY @370 GOTO Ren22
IF ~OR(2)
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BaevrinPlot","GLOBAL",7)~ THEN REPLY @371 GOTO BvPlot8Dunno


CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
!Global("PGFailed","GLOBAL",1)
InParty("Kova")
Global("KKJoin","GLOBAL",1)~ THEN RENAL c6post
@374
END
IF ~~ THEN REPLY @375 EXIT
IF ~Global("KKJoin","GLOBAL",1)
InParty("Kova")
Global("RenalJob","GLOBAL",4)
Global("GivenStuff","LOCALS",0)
Global("MaeVarExposed","GLOBAL",1)
OR(2)
	Global("LOAClue","GLOBAL",0)
	Global("AddRayic","GLOBAL",0)~
THEN REPLY @368 GOTO Ren1
IF ~Global("Dayven","GLOBAL",7)
InParty("Kova")
Global("RenalJob","GLOBAL",4)
Global("MaeVarExposed","GLOBAL",1)~
THEN REPLY @369 GOTO Ren2
IF ~!GlobalTimerExpired("RenalCheckDayven","GLOBAL")
Global("Dayven","GLOBAL",8)~
THEN REPLY @370 GOTO Ren22no
IF ~GlobalTimerExpired("RenalCheckDayven","GLOBAL")
Global("Dayven","GLOBAL",8)~
THEN REPLY @370 GOTO Ren22
IF ~Global("z#gaelanc6","GLOBAL",2)~
THEN REPLY @376 GOTO rennote1ask
IF ~Global("z#gaelanc6","GLOBAL",3)~
THEN REPLY @377 GOTO rennote2
IF ~OR(2)
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BaevrinPlot","GLOBAL",7)~ THEN REPLY @371 GOTO BvPlot8Dunno


CHAIN
IF ~~ THEN RENAL BvPlot8Dunno
@378
EXIT

APPEND ~RENAL~
	IF ~~ THEN BEGIN Ren1
	SAY @379
	= @380
	IF ~Global("LOAClue","GLOBAL",0) !Global("AddRayic","GLOBAL",0)~ THEN
	DO ~GiveItemCreate("MISC4V",Player1,0,0,0)
	SetGlobal("GivenStuff","LOCALS",1)~ EXIT

	IF ~!Global("LOAClue","GLOBAL",0) Global("AddRayic","GLOBAL",0)~ THEN
	DO ~SetGlobal("AddRayic","GLOBAL",2)
	GiveItemCreate("RayNote",Player1,0,0,0)
	SetGlobal("GivenStuff","LOCALS",1)~ EXIT

	IF ~Global("LOAClue","GLOBAL",0) Global("AddRayic","GLOBAL",0)~ THEN
	DO ~SetGlobal("AddRayic","GLOBAL",2)
	GiveItemCreate("RayNote",Player1,0,0,0)
	GiveItemCreate("MISC4V",Player1,0,0,0)
	SetGlobal("GivenStuff","LOCALS",1)~ EXIT
	END

	IF ~~ THEN BEGIN Ren2
	SAY @381
	= @382
	IF ~PartyGoldGT(999)~ THEN REPLY @383 GOTO Ren21
	IF ~~ THEN REPLY @384 GOTO Ren2no
	IF ~~ THEN REPLY @385 GOTO Ren2no
	END

	IF ~~ THEN BEGIN Ren2no
	SAY @386
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN Ren21
	SAY @387
	IF ~~ THEN DO ~TakePartyGold(1000)
	DestroyGold(1000)
	SetGlobal("Dayven","GLOBAL",8)
	SetGlobalTimer("RenalCheckDayven","GLOBAL",ONE_DAY)
	AddexperienceParty(9000)
	AddJournalEntry(@5007,QUEST)~ EXIT
	END

	IF ~~ THEN BEGIN Ren22no
	SAY @388
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN Ren22
	SAY @389
	= @390
	= @391
	= @392
	IF ~~ THEN DO ~SetGlobal("Dayven","GLOBAL",9)
	GiveItemCreate("DayRec",Player1,0,0,0)
	AddJournalEntry(@5008,QUEST)~ EXIT
	END
END


/* =================== *
 *  Jermien Extension  *
 * =================== */
EXTEND_BOTTOM ~JUGJER01~ 33
IF ~GlobalGT("AddRayic","GLOBAL",1)
InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~EraseJournalEntry(2052) AddexperienceParty(21250)~ EXTERN Z#KIYOJ JermClue1
END

APPEND ~JUGJER01~
	IF WEIGHT #-1 ~Global("AddRayic","GLOBAL",1)
	Global("KiyoSpawnJerm","AR1103",1)
	Global("ColetteLeave","GLOBAL",1)
	GlobalGT("JuggernautAlive","GLOBAL",1)
	Dead("Juggernaut")
	Global("JermClue","GLOBAL",0)~ THEN BEGIN NewHi
	SAY @393
	= @394
	IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ JermClue1
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN Bye
	SAY @395
	IF ~~ THEN DO ~EscapeArea()~ EXIT
	END
END


/* ============================= *
 *  Bodhi Interjection on Offer  *
 * ============================= */
EXTEND_BOTTOM ~Bodhi~ 1
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ BodhiKiyo1
END

INTERJECT_COPY_TRANS ~Bodhi~ 11 BodhiKiyo2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") !InParty("Kova") InMyArea("Kova")~ @396
== BODHI IF ~InParty("Kiyone") InMyArea("Kiyone") !InParty("Kova") InMyArea("Kova")~ @397
END

INTERJECT_COPY_TRANS ~Bodhi~ 11 BodhiKova
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @398
== BODHI IF ~InParty("Kova") InMyArea("Kova")~ THEN @399
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @400
== BODHI IF ~InParty("Kova") InMyArea("Kova")~ THEN @401
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN @402
== BODHI IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN @403
== BODHI IF ~InParty("Kova") InMyArea("Kova")~ THEN @404
END

INTERJECT_COPY_TRANS ~Bodhi~ 18 JoinedBodhi
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN @405
DO ~DropInventory() LeaveParty() EscapeArea()~
== Z#KIYOJ IF ~InParty("Kova")~ THEN @406
DO ~DropInventory() LeaveParty() EscapeArea()~
END


/* ================ *
 *  Aran Extension  *
 * ================ */
EXTEND_BOTTOM ~ARAN~ 0
IF ~InParty("Kova") InMyArea("Kova")~ THEN GOTO Aran1
END

APPEND ~ARAN~
	IF ~~ THEN BEGIN Aran1
	SAY @407
	IF ~~ THEN EXTERN Z#KOVAJ Aran2
	END

	IF ~~ THEN BEGIN Aran3
	SAY @408
	= @409
	IF ~~ THEN REPLY @410 GOTO 1
	IF ~~ THEN REPLY @411 GOTO 1
	IF ~~ THEN REPLY @412 GOTO 1
	END

END


/* ================== *
 *  Gaelan Extension  *
 * ================== */
EXTEND_BOTTOM ~GAELAN~ 39
IF ~~ THEN GOTO GoGetKova
END

APPEND ~GAELAN~
	IF ~~ THEN BEGIN GoGetKova
	SAY @413
	IF ~~ THEN GOTO 70
	END
END

BEGIN SEEKOVA

	IF ~InParty("Kova")
	Global("WorkingForAran","GLOBAL",0)
	Global("Linvail","GLOBAL",0)
	Global("BodhiJob","GLOBAL",0)
	Global("TIGael","GLOBAL",0)
	Global("GaelanAsk","AR0311",0)~ THEN BEGIN Gael1
	SAY @414
	IF ~PartyGoldGT(14999)~ THEN REPLY @415 GOTO Gael2
	IF ~~ THEN REPLY @416 GOTO TISh1
	END

	IF ~~ THEN BEGIN Gael2
	SAY @417
	IF ~Global("BodhiAppear","GLOBAL",3)~ THEN EXTERN Z#KIYOJ Gael3
	IF ~!Global("BodhiAppear","GLOBAL",3)~ THEN GOTO Gael3Ext
	END

	IF ~~ THEN BEGIN Gael3Ext
	SAY @418
	IF ~~ THEN REPLY @419 GOTO Gael5
	IF ~~ THEN REPLY @420 GOTO TISh1
	END

	IF ~~ THEN BEGIN Gael4
	SAY @421
	IF ~~ THEN REPLY @419 GOTO Gael5
	IF ~~ THEN REPLY @420 GOTO TISh1
	END

	IF ~~ THEN BEGIN Gael5
	SAY @422
	IF ~~ THEN DO ~SetCutSceneLite(TRUE)
	SetGlobal("GaelanAsk","AR0311",1)
	EscapeAreaDestroy(7)~ EXIT
	END

	IF ~InParty("Kova")
	Global("WorkingForAran","GLOBAL",0)
	Global("Linvail","GLOBAL",0)
	Global("BodhiJob","GLOBAL",0)
	Global("TIGael","GLOBAL",0)
	Global("GaelanAsk","AR0311",1)~ THEN BEGIN Gael6
	SAY @423
	IF ~~ THEN DO ~SetCutSceneLite(FALSE)
	SetGlobal("GaelanAsk","AR0311",3)
	EraseJournalEntry(34183)
	EraseJournalEntry(34187)
	AddXPObject(Player1,45000)
	AddXPObject(Player2,45000)
	AddXPObject(Player3,45000)
	AddXPObject(Player4,45000)
	AddXPObject(Player5,45000)
	AddXPObject(Player6,45000)
	TakePartyGold(15000)
	DestroyGold(15000)
	SetGlobal("WorkingForAran","GLOBAL",1)
	SetGlobal("ShadowWork","GLOBAL",1)
	SetGlobal("Linvail","GLOBAL",1)
	SetGlobal("FindingKova","GLOBAL",10)
	GiveItem("MISC4S",[PC])
	JumpToPoint([470.335])
	Face(0)
	SetDialogue("GAELAN")~ EXIT
	END

	IF ~~ THEN BEGIN TISh1
	SAY @424
	IF ~~ THEN DO ~SetGlobal("TIGael","GLOBAL",1)~ EXTERN Z#KOVAJ TISh2
	END

	IF ~~ THEN BEGIN TISh4
	SAY @425
	IF ~~ THEN DO ~GiveGoldForce(9000) ActionOverride("Kova",LeaveParty())
	SetDialogue("GAELAN")~ EXIT
	END


/* =================== *
 *  Bylanna Extension  *
 * =================== */
INTERJECT_COPY_TRANS ~BYLANNA~ 5 KiyoGreet
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin","GLOBAL",0)~ THEN @426
== BYLANNA IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin","GLOBAL",0)~ THEN @427
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin","GLOBAL",0)~ THEN @428
== BYLANNA IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin","GLOBAL",0)~ THEN @429
END

EXTEND_BOTTOM ~BYLANNA~ 5
IF ~InParty("Kiyone")
Global("KKJoin","GLOBAL",1)
GlobalGT("BylTalk","GLOBAL",1)~ THEN
REPLY @430 GOTO CaseReview
IF ~InParty("Kiyone") InParty("Kova")
Global("KKJoin","GLOBAL",1)
Global("MetKharen","GLOBAL",3)
Global("LOAClue","GLOBAL",3)
Global("JermClue","GLOBAL",3)
Global("DayvClue","GLOBAL",3)~ THEN
REPLY @431 GOTO
Z#TalkB4Trial
END

CHAIN
IF ~~ THEN BYLANNA CaseReview
@432
== BYLANNA IF ~Global("LOAClue","GLOBAL",3)~ THEN @433
== BYLANNA IF ~Global("JermClue","GLOBAL",3) !Global("MetKharen","GLOBAL",3)~ THEN @434
== BYLANNA IF ~Global("DayvClue","GLOBAL",3)~ THEN @435
== BYLANNA IF ~!Global("JermClue","GLOBAL",3) Global("MetKharen","GLOBAL",3)~ THEN @436
== BYLANNA IF ~Global("JermClue","GLOBAL",3) Global("MetKharen","GLOBAL",3)~ THEN @437
== BYLANNA
IF ~Global("LOAClue","GLOBAL",3)
Global("JermClue","GLOBAL",3)
Global("DayvClue","GLOBAL",3)~ THEN @438
== BYLANNA
IF ~OR(3)
Global("LOAClue","GLOBAL",3)
Global("JermClue","GLOBAL",3)
Global("DayvClue","GLOBAL",3)~ THEN @439
== BYLANNA
IF ~!Global("LOAClue","GLOBAL",3)
!Global("JermClue","GLOBAL",3)
!Global("DayvClue","GLOBAL",3)~ THEN @440
== BYLANNA IF ~OR(3)
!Global("LOAClue","GLOBAL",3)
!Global("JermClue","GLOBAL",3)
!Global("DayvClue","GLOBAL",3)~ THEN @441
== Z#KIYOJ
IF ~OR(7)
Global("JermClue","GLOBAL",1)
Global("JermClue","GLOBAL",2)
Global("DayvClue","GLOBAL",1)
Global("LOAClue","GLOBAL",1)
Global("LOAClue","GLOBAL",2)
Global("AddRayic","GLOBAL",2)
PartyHasItem("CornRep")~ THEN @442
END
IF ~GlobalGT("JermClue","GLOBAL",0)
!Global("JermClue","GLOBAL",3)~ THEN
REPLY @443 EXTERN Z#KIYOJ bylevidjerm
IF ~GlobalGT("DayvClue","GLOBAL",0)
!Global("DayvClue","GLOBAL",3)~ THEN
REPLY @444 EXTERN Z#KIYOJ byleviddayv
IF ~GlobalGT("LOAClue","GLOBAL",0)
// PartyHasItem("MaeLOA")
!Global("LOAClue","GLOBAL",3)~ THEN
REPLY @445 EXTERN Z#KIYOJ bylevidloa
IF ~Global("JermClue","GLOBAL",0)
// PartyHasItem("RayNote")
Global("AddRayic","GLOBAL",2)~ THEN
REPLY @446 EXTERN Z#KIYOJ bylevidraynote
IF ~PartyHasItem("CornRep")~ THEN
REPLY @447 EXTERN Z#KIYOJ bylevidcornrep
IF ~Global("GovtGuards","GLOBAL",2)
OR(7)
Global("JermClue","GLOBAL",1)
Global("JermClue","GLOBAL",2)
Global("DayvClue","GLOBAL",1)
Global("LOAClue","GLOBAL",1)
Global("LOAClue","GLOBAL",2)
Global("AddRayic","GLOBAL",2)
PartyHasItem("CornRep")~ THEN
REPLY @448 EXTERN BYLANNA bylevidno
IF ~GlobalGT("MetKharen","GLOBAL",0)
!Global("MetKharen","GLOBAL",3)~ THEN
REPLY @449 EXTERN Z#KIYOJ bylevidmetkharen
IF ~!Global("JermClue","GLOBAL",1)
!Global("JermClue","GLOBAL",2)
!Global("MetKharen","GLOBAL",1)
!Global("MetKharen","GLOBAL",2)
!Global("DayvClue","GLOBAL",1)
!Global("LOAClue","GLOBAL",1)
!Global("LOAClue","GLOBAL",2)
!Global("AddRayic","GLOBAL",2)
!PartyHasItem("CornRep")~ THEN EXTERN Z#KIYOJ bylevidnone
IF ~Global("LOAClue","GLOBAL",3)
Global("JermClue","GLOBAL",3)
Global("DayvClue","GLOBAL",3)
OR(2)
Global("MetKharen","GLOBAL",0)
Global("MetKharen","GLOBAL",3)~ THEN GOTO bylevidenough

CHAIN
IF ~~ THEN Z#KIYOJ bylevidmetkharen
@450
= @451
== Z#KIYOJ IF ~GlobalGT("JermClue","GLOBAL",0) Global("CornTalk","GLOBAL",3)~ THEN @452
== Z#KIYOJ IF ~GlobalGT("JermClue","GLOBAL",0) !Global("CornTalk","GLOBAL",3)~ THEN @453
== BYLANNA @454
== CORNEIL @455
= @456
= @457
= @458
== BYLANNA @459
== Z#KIYOJ @460
== BYLANNA @461
== BYLANNA
IF ~Global("LOAClue","GLOBAL",3)
Global("JermClue","GLOBAL",3)
Global("DayvClue","GLOBAL",3)~ THEN @462
== Z#KIYOJ @463
== BYLANNA @464
DO ~SetGlobal("MetKharen","GLOBAL",3)
AddexperienceParty(12000)
SetGlobalTimer("KKGovtT","GLOBAL",50400)~ EXIT

CHAIN
IF ~~ THEN BYLANNA bylevidenough
@465
== Z#KIYOJ @466
== BYLANNA @467
= @468
== Z#KIYOJ @469
== BYLANNA @470
DO ~SetGlobal("GovtGuards","GLOBAL",4)
RealSetGlobalTimer("Z#enoughT","GLOBAL",15)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidnone
@471
== BYLANNA IF ~Global("GovtGuards","GLOBAL",2)~ THEN @472
== BYLANNA IF ~Global("GovtGuards","GLOBAL",1)~ THEN @473
== BYLANNA IF ~Global("GovtGuards","GLOBAL",1)~ THEN @474
== Z#KIYOJ IF ~Global("GovtGuards","GLOBAL",1)~ THEN @475
EXIT

CHAIN
IF ~~ THEN BYLANNA bylevidno
@476
== BYLANNA IF ~Global("GovtGuards","GLOBAL",2)~ THEN @472
EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidjerm
@477
= @478
== BYLANNA @479
= @480
DO ~SetGlobal("JermClue","GLOBAL",3)
TakePartyItem("JerSig")
DestroyItem("JerSig")
SetGlobalTimer("KKGovtT","GLOBAL",50400)
SetGlobal("GovtGuards","GLOBAL",2)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ byleviddayv
@481
== BYLANNA @482
= @483
= @484
DO ~SetGlobal("DayvClue","GLOBAL",3)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
SetGlobal("GovtGuards","GLOBAL",2)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidloa
@485
= @486
== BYLANNA @487
= @488
= @489
= @490
DO ~SetGlobal("LOAClue","GLOBAL",3)
TakePartyItem("MaeLOA")
DestroyItem("MaeLOA")
SetGlobalTimer("KKGovtT","GLOBAL",50400)
SetGlobal("GovtGuards","GLOBAL",2)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidcornrep
@491
= @492
== BYLANNA @493
= @494
== Z#KIYOJ @495
== BYLANNA @496
DO ~TakePartyItem("CornRep")
DestroyItem("CornRep")
SetGlobalTimer("KKGovtT","GLOBAL",10800)
SetGlobal("GovtGuards","GLOBAL",2)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidraynote
@497
= @498
== BYLANNA @499
= @500
== Z#KIYOJ @501
DO ~SetGlobal("AddRayic","GLOBAL",3)
SetGlobalTimer("KKGovtT","GLOBAL",25200)
SetGlobal("GovtGuards","GLOBAL",2)~ EXIT


/* ================= *
 *  Brega Extension  *
 * ================= */
EXTEND_BOTTOM ~HABREGA~ 0
IF ~Global("KKJoin","GLOBAL",1) InParty("Kiyone") InParty("Kova")~
THEN REPLY @502 GOTO C1
IF ~Global("KKJoin","GLOBAL",1) !Global("BregaTalk","GLOBAL",0) InParty("Kiyone") InParty("Kova")~
THEN REPLY @503 GOTO TIGovt1
IF ~Global("KKJoin","GLOBAL",1)
OR(3)
Global("Dayven","GLOBAL",9)
Global("Dayven","GLOBAL",10)
Global("Dayven","GLOBAL",11)
PartyHasItem("DayRec")~
THEN REPLY @504 GOTO DayvIn
IF ~Global("KKJoin","GLOBAL",1)
Global("Dayven","GLOBAL",14)~
THEN REPLY @505 GOTO Review
IF ~GlobalGT("Z#BaevrinPlot","GLOBAL",2)
GlobalLT("Z#BaevrinPlot","GLOBAL",11)~
THEN REPLY @506 GOTO bregacanseebaev
IF ~Global("Z#BaevrinPlot","GLOBAL",13) InParty("Kiyone")~ THEN REPLY @507 EXTERN HABREGA BvPlot13
IF ~Global("Z#BaevrinPlot","GLOBAL",14) InParty("Kiyone")~ THEN REPLY @507 EXTERN HABREGA BvPlot14
IF ~Global("KKJoin","GLOBAL",0)
Dead("Kiyone")
Dead("Kova")
Global("FindingKova","GLOBAL",113)
PartyHasItem("KvDieDag")~
THEN REPLY @508 GOTO GetReward
END

CHAIN
IF ~~ THEN HABREGA bregacanseebaev
@509
END
IF ~Global("Z#BaevrinPlot","GLOBAL",3)~ THEN EXTERN Z#KIYOJ breganotseebaev
IF ~!Global("Z#BaevrinPlot","GLOBAL",3)
GlobalLT("Z#BaevrinPlot","GLOBAL",11)~ THEN EXTERN Z#KIYOJ breganotsaveadyl

CHAIN
IF ~~ THEN Z#KIYOJ breganotseebaev
@510
== HABREGA @511
== Z#KIYOJ @512
== HABREGA @513
== Z#KIYOJ @514
EXIT

CHAIN
IF ~~ THEN Z#KIYOJ breganotsaveadyl
@515
== HABREGA @516
== Z#KIYOJ @517
EXIT


APPEND ~HABREGA~

	IF ~~ THEN BEGIN GetReward
	SAY @518
	= @519
	IF ~~ THEN DO ~SetGlobal("FindingKova","GLOBAL",114)
	TakePartyItemNum("KvDieDag",1) DestroyItem("KvDieDag")
	GiveGoldForce(7000)
	ReputationInc(1)
	EraseJournalEntry(@5001)
	EraseJournalEntry(@5002)
	EraseJournalEntry(@5051)
	AddJournalEntry(@5052,QUEST_DONE)
	~ EXIT
	END

	IF ~~ THEN BEGIN C1
	SAY @520
	= @521
	= @522
	= @523
	= @524
	= @525
	= @526
	= @527
	IF ~Global("BregaTalk","GLOBAL",0)~ THEN REPLY @528 	DO ~SetGlobal("BregaTalk","GLOBAL",1)~ GOTO C2
	IF ~Global("BregaTalk","GLOBAL",0)~ THEN REPLY @529 	DO ~SetGlobal("BregaTalk","GLOBAL",1)~ GOTO C3
	IF ~Global("BregaTalk","GLOBAL",0)~ THEN REPLY @530 	DO ~SetGlobal("BregaTalk","GLOBAL",1)~ GOTO C4
	IF ~Global("BregaTalk","GLOBAL",0)~ THEN REPLY @531		DO ~SetGlobal("BregaTalk","GLOBAL",1)~ GOTO C5
	IF ~!Global("BregaTalk","GLOBAL",0)~ THEN REPLY @528 	GOTO C2
	IF ~!Global("BregaTalk","GLOBAL",0)~ THEN REPLY @529 	GOTO C3
	IF ~!Global("BregaTalk","GLOBAL",0)~ THEN REPLY @530 	GOTO C4
	IF ~!Global("BregaTalk","GLOBAL",0)~ THEN REPLY @531	GOTO C5
	IF ~Global("Dayven","GLOBAL",5)~ THEN REPLY @532		DO ~SetGlobal("Dayven","GLOBAL",6)~ GOTO C7
	IF ~Global("BregaTalk","GLOBAL",0)~ THEN REPLY @533 	DO ~SetGlobal("BregaTalk","GLOBAL",1)~ GOTO C6
	IF ~!Global("BregaTalk","GLOBAL",0)~ THEN REPLY @533 	GOTO C6
	END

	IF ~~ THEN BEGIN C2
	SAY @534
	IF ~~ THEN REPLY @535 GOTO C3
	IF ~~ THEN REPLY @530 GOTO C4
	IF ~~ THEN REPLY @531 GOTO C5
	IF ~Global("Dayven","GLOBAL",5)~ THEN REPLY @532 DO ~SetGlobal("Dayven","GLOBAL",6)~ GOTO C7
	IF ~~ THEN REPLY @533 GOTO C6
	END

	IF ~~ THEN BEGIN C3
	SAY @536
	= @537
	IF ~~ THEN REPLY @528 GOTO C2
	IF ~~ THEN REPLY @530 GOTO C4
	IF ~~ THEN REPLY @538 GOTO C5
	IF ~Global("Dayven","GLOBAL",5)~ THEN REPLY @532 DO ~SetGlobal("Dayven","GLOBAL",6)~ GOTO C7
	IF ~~ THEN REPLY @533 GOTO C6
	END

	IF ~~ THEN BEGIN C4
	SAY @539
	IF ~Global("Dayven","GLOBAL",0)~ THEN REPLY @528
	UNSOLVED_JOURNAL @5005 DO ~SetGlobal("Dayven","GLOBAL",1)~ GOTO C2
	IF ~Global("Dayven","GLOBAL",0)~ THEN REPLY @535
	UNSOLVED_JOURNAL @5005 DO ~SetGlobal("Dayven","GLOBAL",1)~ GOTO C3
	IF ~Global("Dayven","GLOBAL",0)~ THEN REPLY @538
	UNSOLVED_JOURNAL @5005 DO ~SetGlobal("Dayven","GLOBAL",1)~ GOTO C5
	IF ~Global("Dayven","GLOBAL",0)~ THEN REPLY @533
	UNSOLVED_JOURNAL @5005 DO ~SetGlobal("Dayven","GLOBAL",1)~ GOTO C6
	IF ~!Global("Dayven","GLOBAL",0)~ THEN REPLY @528 GOTO C2
	IF ~!Global("Dayven","GLOBAL",0)~ THEN REPLY @535 GOTO C3
	IF ~!Global("Dayven","GLOBAL",0)~ THEN REPLY @538 GOTO C5
	IF ~!Global("Dayven","GLOBAL",0)~ THEN REPLY @533 GOTO C6
	END

	IF ~~ THEN BEGIN C5
	SAY @540
	= @541
	= @542
	IF ~~ THEN REPLY @528 GOTO C2
	IF ~~ THEN REPLY @535 GOTO C3
	IF ~~ THEN REPLY @530 GOTO C4
	IF ~Global("Dayven","GLOBAL",5)~ THEN REPLY @532 DO ~SetGlobal("Dayven","GLOBAL",6)~ GOTO C7
	IF ~~ THEN REPLY @533 GOTO C6
	END

	IF ~~ THEN BEGIN C6
	SAY @543
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN C7
	SAY @544
	IF ~~ THEN REPLY @528 GOTO C2
	IF ~~ THEN REPLY @535 GOTO C3
	IF ~~ THEN REPLY @531 GOTO C5
	IF ~~ THEN REPLY @533 GOTO C6
	END

	IF ~~ THEN BEGIN TIGovt1
	SAY @545
	IF ~~ THEN DO ~SetGlobal("BregaTalk","GLOBAL",248)
	SetGlobal("FindingKova","GLOBAL",250)~ EXIT
	END

	IF ~Global("BregaTalk","GLOBAL",252)~ THEN BEGIN TIGovt4
	SAY @546
	IF ~~ THEN DO ~GiveGoldForce(7000)
	ReputationInc(1) ActionOverride("Kova",LeaveParty())
	SetGlobal("BregaTalk","GLOBAL",253)~ EXIT
	END

	IF ~~ THEN BEGIN DayvIn
	SAY @547
	= @548
	= @549
	= @550
	IF ~~ THEN DO ~TakePartyItem("DayRec")
	SetGlobal("Dayven","GLOBAL",14)~ EXIT
	END

	IF ~~ THEN BEGIN Review
	SAY @551
	= @552
	= @553
	= @554
	IF ~~ THEN DO ~SetGlobal("Dayven","GLOBAL",15)
	AddJournalEntry(@5009,QUEST)
	AddexperienceParty(15000)
	SetGlobal("DayvClue","GLOBAL",1)~ EXIT
	END
END


/* ================================ *
 *  Corneil / Tolgerias Extensions  *
 * ================================ */
EXTEND_BOTTOM ~TOLGER~ 1
IF ~Global("KKJoin","GLOBAL",1) InParty("Kova") InParty("Kiyone")~ THEN REPLY @555GOTO TolTalk
END

EXTEND_BOTTOM ~TOLGER~ 28
IF ~Global("KKJoin","GLOBAL",1) InParty("Kova") InParty("Kiyone")~ THEN REPLY @555GOTO TolTalk
END


APPEND ~TOLGER~
	IF ~~ THEN BEGIN TolTalk
	SAY @556
	IF ~~ THEN EXIT
	END
END

EXTEND_BOTTOM ~CORNEIL~ 0
IF ~Global("KKJoin","GLOBAL",1) InParty("Kova") InParty("Kiyone")
Global("CornTalk","GLOBAL",0)~ THEN REPLY @557
DO ~CreateItem("CornRep",0,0,0) SetGlobal("CornTalk","GLOBAL",1)~ GOTO CornTalk
IF ~Global("KKJoin","GLOBAL",1) InParty("Kova") InParty("Kiyone")
!Global("CornTalk","GLOBAL",0)~ THEN REPLY @557 GOTO CornTalk
IF ~Global("KKJoin","GLOBAL",1) InParty("Kova") InParty("Kiyone") !Global("CornTalk","GLOBAL",0)~ THEN REPLY @558 GOTO TICowl1
IF ~Global("KKJoin","GLOBAL",1)
InParty("Kova")
InParty("Kiyone")
!Global("CornTalk","GLOBAL",0)
!Global("BribeCorn","GLOBAL",0)~ THEN REPLY @559 GOTO BC1
IF ~Global("KKJoin","GLOBAL",1)
InParty("Kova")
InParty("Kiyone")
PartyHasItem("Z#Eye")
Global("Z#BTLPart7","GLOBAL",7)~ THEN REPLY @560 EXTERN CORNEIL z#showcorneye
END

APPEND ~CORNEIL~
	IF ~~ THEN BEGIN CornTalk
	SAY @561
	= @562
	IF ~~ THEN REPLY @563 EXIT
	IF ~~ THEN REPLY @558 GOTO TICowl1
	END

	IF ~~ THEN BEGIN TICowl1
	SAY @564
	IF ~~ THEN DO ~SetGlobal("CornTalk","GLOBAL",248)~ EXIT
	END

	IF ~Global("CornTalk","GLOBAL",252)~ THEN BEGIN TICowl4
	SAY @565
	IF ~~ THEN DO ~ActionOverride("Kova",LeaveParty())
	GiveGoldForce(8000)
	SetGlobal("CornTalk","GLOBAL",253)~ EXIT
	END

	IF ~~ THEN BEGIN BC1
	SAY @566
	= @567
	IF ~PartyGoldGT(2499)~ THEN REPLY @568
	DO ~TakePartyGold(2500) DestroyGold(2500)~ GOTO BC2
	IF ~~ THEN REPLY @569 GOTO BC3
	END

	IF ~~ THEN BEGIN BC3
	SAY @570
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN BC2
	SAY @571
	= @572
	IF ~~ THEN DO ~SetGlobal("BribeCorn","GLOBAL",1)
	SetGlobalTimer("KKCowlT","GLOBAL",36000)~ EXIT
	END
END


/* ================ *
 *  Myroven Dialog  *
 * ================ */
BEGIN Z#MESSEN

CHAIN
IF WEIGHT #-1 ~Global("JermClue","GLOBAL",3)
Global("DayvClue","GLOBAL",3)
Global("LOAClue","GLOBAL",3)
Global("Z#BaevrinPlot","GLOBAL",0)~ THEN Z#MESSEN evidenough
@573
= @574
== Z#KIYOJ @575
== Z#MESSEN @576
== Z#KIYOJ @577
== Z#MESSEN @578
= @579
DO ~SetGlobal("GovtGuards","GLOBAL",4)
SetGlobal("Z#NoMoreGovt","GLOBAL",1)
RealSetGlobalTimer("Z#enoughT","GLOBAL",15)
EscapeArea()~ EXIT


CHAIN
IF ~OR(3)
!Global("JermClue","GLOBAL",3)
!Global("DayvClue","GLOBAL",3)
!Global("LOAClue","GLOBAL",3)
~ THEN Z#MESSEN evidgo
@580
DO ~SetGlobal("GovtGuards","GLOBAL",2)~
== Z#KIYOJ IF ~OR(7)
Global("JermClue","GLOBAL",1)
Global("JermClue","GLOBAL",2)
Global("DayvClue","GLOBAL",1)
Global("LOAClue","GLOBAL",1)
Global("LOAClue","GLOBAL",2)
Global("AddRayic","GLOBAL",2)
PartyHasItem("CornRep")~ THEN @581
END
IF ~GlobalGT("JermClue","GLOBAL",0)
!Global("JermClue","GLOBAL",3)~ THEN
REPLY @582 EXTERN Z#KIYOJ evidjerm
IF ~GlobalGT("DayvClue","GLOBAL",0)
!Global("DayvClue","GLOBAL",3)~ THEN
REPLY @583 EXTERN Z#KIYOJ eviddayv
IF ~GlobalGT("LOAClue","GLOBAL",0)
// PartyHasItem("MaeLOA")
!Global("LOAClue","GLOBAL",3)~ THEN
REPLY @584 EXTERN Z#KIYOJ evidloa
IF ~Global("JermClue","GLOBAL",0)
// PartyHasItem("RayNote")
Global("AddRayic","GLOBAL",2)~ THEN
REPLY @446 EXTERN Z#KIYOJ evidraynote
IF ~PartyHasItem("CornRep")~ THEN
REPLY @447 EXTERN Z#KIYOJ evidcornrep
IF ~GlobalGT("MetKharen","GLOBAL",0)
!Global("MetKharen","GLOBAL",3)~ THEN
REPLY @449 EXTERN Z#KIYOJ evidmetkharen
IF ~!Global("JermClue","GLOBAL",1)
!Global("JermClue","GLOBAL",2)
!Global("MetKharen","GLOBAL",1)
!Global("MetKharen","GLOBAL",2)
!Global("DayvClue","GLOBAL",1)
!Global("LOAClue","GLOBAL",1)
!Global("LOAClue","GLOBAL",2)
!Global("AddRayic","GLOBAL",2)
!PartyHasItem("CornRep")~ THEN EXTERN Z#KIYOJ evidnone

CHAIN
IF ~~ THEN Z#KIYOJ evidmetkharen
@585
= @586
= @587
== Z#KIYOJ IF ~GlobalGT("JermClue","GLOBAL",0) Global("CornTalk","GLOBAL",3)~ THEN @452
== Z#KIYOJ IF ~GlobalGT("JermClue","GLOBAL",0) !Global("CornTalk","GLOBAL",3)~ THEN @453
== Z#MESSEN @588
== Z#KIYOJ @589
= @590
== Z#MESSEN @591
= @592
DO ~EscapeArea()
SetGlobal("MetKharen","GLOBAL",3)
SetGlobal("GovtGuards","GLOBAL",2)
AddexperienceParty(12000)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidnone
@593
== Z#MESSEN @594
= @595
DO ~SetGlobal("GovtGuards","GLOBAL",1)
SetGlobalTimer("KKGovtT","GLOBAL",12240) EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidjerm
@596
= @477
= @597
== Z#MESSEN @598
DO ~SetGlobal("JermClue","GLOBAL",3)
SetGlobal("GovtGuards","GLOBAL",2)
TakePartyItem("JerSig")
DestroyItem("JerSig")
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ eviddayv
@599
= @600
= @601
== Z#MESSEN @602
DO ~SetGlobal("DayvClue","GLOBAL",3)
SetGlobal("GovtGuards","GLOBAL",2)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidloa
@603
= @604
= @605
== Z#MESSEN @606
DO ~SetGlobal("LOAClue","GLOBAL",3)
TakePartyItem("MaeLOA")
DestroyItem("MaeLOA")
SetGlobal("GovtGuards","GLOBAL",2)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidcornrep
@607
= @608
= @609
== Z#MESSEN @610
== Z#KIYOJ @611
== Z#MESSEN @612
DO ~TakePartyItem("CornRep")
DestroyItem("CornRep")
SetGlobal("GovtGuards","GLOBAL",2)
SetGlobalTimer("KKGovtT","GLOBAL",10800)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidraynote
@613
= @614
= @615
== Z#MESSEN @616
== Z#KIYOJ @617
== Z#MESSEN @618
DO ~SetGlobal("AddRayic","GLOBAL",3)
SetGlobal("GovtGuards","GLOBAL",2)
SetGlobalTimer("KKGovtT","GLOBAL",25200)
EscapeArea()~ EXIT


/* =============== *
 *  Kharen Dialog  *
 * =============== */
EXTEND_BOTTOM PPSAEM2 29
IF ~Global("KKJoin","GLOBAL",1)
InParty("Kova")
AreaCheck("AR1500")~ THEN DO
~SetGlobal("AsylumPlot","GLOBAL",60)
RealSetGlobalTimer("Z#KharenWarnT","AR1500",7)
ApplySpell(Myself,DRYAD_TELEPORT)
AddJournalEntry(16563,QUEST)
CreateCreature("Z#Khar16",[505.2920],10)~ EXIT
END

BEGIN KHAREN16

IF ~HPLT(Myself,3)
GlobalGT("Combat","LOCALS",0)~ THEN BEGIN Bye
SAY @619
IF ~~ THEN DO ~ChangeAIScript("",OVERRIDE)
ChangeAIScript("",DEFAULT)
NoAction()
ApplySpell(Myself,DRYAD_TELEPORT)
SetGlobal("MetKharen","GLOBAL",1)
AddexperienceParty(12000)~ EXIT
END

CHAIN
IF ~NumTimesTalkedTo(0)
Global("KhWin","GLOBAL",0)~ THEN KHAREN16 Kh0
@620
= @621
END
IF ~!InParty("Kova")~ THEN GOTO NoKova
IF ~InParty("Kova")~ THEN GOTO Kh1

CHAIN
IF ~~ THEN KHAREN16 NoKova
@622
DO ~ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF ~~ THEN KHAREN16 Kh1
@623
= @624
== Z#KOVAJ @625
== KHAREN16 @626
== Z#KOVAJ @627
== Z#KIYOJ IF ~InParty("Kiyone")
GlobalGT("JermClue","GLOBAL",0)~ THEN
@628
== Z#KOVAJ IF ~OR(2)
!InParty("Kiyone")
Global("JermClue","GLOBAL",0)~ THEN
@629
== KHAREN16 @630
== Z#KOVAJ @631
== KHAREN16 @632
= @633
= @634
END
IF ~!InParty("Kiyone")~ THEN REPLY @635 GOTO KhOK-2
IF ~InParty("Kiyone")~ THEN REPLY @635 GOTO KhOK
IF ~~ THEN REPLY @636 GOTO Kh3
IF ~~ THEN REPLY @637 GOTO Kh2

CHAIN
IF ~~ THEN KHAREN16 Kh2
@638
EXTERN KHAREN16 Kh3

CHAIN
IF ~~ THEN KHAREN16 Kh3
@639
= @640
= @641
END
IF ~InParty("Kiyone")~ THEN REPLY @642 GOTO KhOK
IF ~InParty("Kiyone")~ THEN REPLY @643 GOTO KhOK
IF ~!InParty("Kiyone")~ THEN REPLY @642 GOTO KhOK-2
IF ~!InParty("Kiyone")~ THEN REPLY @643 GOTO KhOK-2
IF ~~ THEN REPLY @644 GOTO Kh4
IF ~~ THEN REPLY @645 GOTO Kh4

CHAIN
IF ~~ THEN KHAREN16 Kh4
@646
= @647
== KHAREN16 IF ~XPLT(Player1,1000000)~ THEN @648
DO ~ // 505.2920  725.2740
SetInterrupt(FALSE)
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_FIRE)
CreateVisualEffect("SPDIMNDR",[550.2895])
CreateVisualEffect("SPDIMNDR",[920.2625])
CreateVisualEffect("SPDIMNDR",[970.2595])
Wait(2)
Enemy()
CreateCreature("COWENF1",[555.2890],10)
CreateCreature("COWENF4",[925.2620],2)
CreateCreature("COWENF3",[975.2590],2)
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("COWENF4",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("COWENF4",ApplySpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_STONE_SKIN))
SetInterrupt(TRUE)~
== KHAREN16 IF ~XPLT(Player1,2000000)
XPGT(Player1,999999)~ THEN @648
DO ~
SetInterrupt(FALSE)
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_FIRE)
CreateVisualEffect("SPDIMNDR",[550.2895])
CreateVisualEffect("SPDIMNDR",[920.2625])
CreateVisualEffect("SPDIMNDR",[970.2595])
Wait(2)
Enemy()
CreateCreature("Z#CW16",[555.2890],10)
CreateCreature("Z#CW18",[925.2620],2)
CreateCreature("COWENF1",[975.2590],2)
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_STONE_SKIN))
SetInterrupt(TRUE)~
== KHAREN16 IF ~XPGT(Player1,1999999)~ THEN @648
DO ~
SetInterrupt(FALSE)
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_FIRE)
CreateVisualEffect("SPDIMNDR",[550.2895])
CreateVisualEffect("SPDIMNDR",[920.2625])
CreateVisualEffect("SPDIMNDR",[970.2595])
Wait(2)
Enemy()
CreateCreature("COWENF3",[555.2890],10)
CreateCreature("Z#CW18",[925.2620],2)
CreateCreature("Z#CW16",[975.2590],2)
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS))
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_STONE_SKIN))
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_STONE_SKIN))
SetInterrupt(TRUE)~
EXIT

CHAIN
IF ~~ THEN KHAREN16 KhOK
@649
DO ~
ChangeAIScript("",CLASS)
ChangeAIScript("",DEFAULT)
ActionOverride("Kiyone",JumpToPoint([710.2725]))
ActionOverride("Kova",JumpToPoint([740.2755]))
ActionOverride("Kiyone",DropInventory())
ActionOverride("Kiyone",PickUpItem("KiyoBow1"))
ActionOverride("Kiyone",PickUpItem("KiyoBow2"))
ActionOverride("Kiyone",PickUpItem("KiyoArm1"))
ActionOverride("Kiyone",PickUpItem("KiyoArm2"))
ActionOverride("Kiyone",FillSlot(SLOT_WEAPON0))
ActionOverride("Kiyone",FillSlot(SLOT_ARMOR))
ActionOverride("Kova",DropInventory())
ActionOverride("Kova",PickUpItem("KovaDag2"))
ActionOverride("Kova",PickUpItem("KovaDag3"))
ActionOverride("Kova",PickUpItem("KovaArm1"))
ActionOverride("Kova",PickUpItem("KovaArm2"))
ActionOverride("Kova",FillSlot(SLOT_WEAPON0))
ActionOverride("Kova",FillSlot(SLOT_ARMOR))
ActionOverride("Kova",Face(2))
ActionOverride("Kiyone",Face(3))
ActionOverride("Kiyone",EquipRanged())
ActionOverride("Kova",EquipRanged())
ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)~
== Z#KIYOJ @650
DO ~JumpToPoint([710.2725])
Attack("Kharen")
ChangeAIScript("",DEFAULT)~
== KHAREN16 @651
DO ~SetCutSceneLite(TRUE)
ForceSpell(Myself,DO_NOTHING)
SetGlobal("KhWin","GLOBAL",1)
MoveViewPoint([820.2830],INSTANT)
SetGlobal("FindingKova","GLOBAL",250)
CreateVisualEffectObject("SPSUMPLN" ,Myself)
ChangeAIScript("",CLASS)
ChangeAIScript("",DEFAULT)~ EXIT

CHAIN
IF ~~ THEN KHAREN16 KhOK-2
@649
DO ~ChangeAIScript("",CLASS)
ChangeAIScript("",DEFAULT)
ActionOverride("Kova",JumpToPoint([725.2740]))
ActionOverride("Kova",DropInventory())
ActionOverride("Kova",PickUpItem("KovaDag2"))
ActionOverride("Kova",PickUpItem("KovaDag3"))
ActionOverride("Kova",PickUpItem("KovaArm1"))
ActionOverride("Kova",PickUpItem("KovaArm2"))
ActionOverride("Kova",FillSlot(SLOT_WEAPON0))
ActionOverride("Kova",FillSlot(SLOT_ARMOR))
ActionOverride("Kova",Face(2))
ActionOverride("Kova",EquipRanged())
ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
SetCutSceneLite(TRUE)
ActionOverride("Kova",Attack("Kharen"))
ForceSpell(Myself,DO_NOTHING)
SetGlobal("KhWin","GLOBAL",1)
MoveViewPoint([820.2830],INSTANT)
SetGlobal("FindingKova","GLOBAL",250)
CreateVisualEffectObject("SPSUMPLN" ,Myself)
Wait(1)
CreateVisualEffectObject("SPROTECT" ,"Kharen")
SetGlobal("KhWin","GLOBAL",2)
TriggerActivation("StoneTrap",TRUE)~ EXIT

CHAIN
IF ~AreaCheck("AR1500")
Global("KhWin","GLOBAL",1)
Global("FindingKova","GLOBAL",250)~ THEN Z#KOVAJ KhWin1
@652
DO ~SetCutSceneLite(TRUE)
SetGlobal("KhWin","GLOBAL",2)
CreateVisualEffectObject("SPROTECT" ,"Kharen")
// ActionOverride("Kharen",ForceSpell("Kova",FORCE_STONE_TRAP))
TriggerActivation("StoneTrap",TRUE)
Attack("Kharen")~ EXIT

CHAIN
IF ~Global("KhWin","GLOBAL",2)
StateCheck("Kova",STATE_STONE_DEATH)~ THEN KHAREN16 KhWin2
@653
DO ~SetGlobal("KhWin","GLOBAL",3)
ForceSpell("Kova",WIZARD_FLAME_ARROW)
SetCutSceneLite(TRUE)~
== Z#KIYOJ IF ~Detect("Kiyone")~ THEN @654
== KHAREN16 IF ~Detect("Kiyone")~ THEN @655
DO ~SetCutSceneLite(TRUE)~
EXIT

CHAIN
IF ~AreaCheck("AR1500")
Global("KhWin","GLOBAL",3)
Global("FindingKova","GLOBAL",250)
Detect("Kiyone")
StateCheck("Kova",STATE_EXPLODING_DEATH)
~ THEN KHAREN16 KhWin3
@656
== Z#KIYOJ @657
DO ~Attack("Kharen")~
== KHAREN16 @658
DO ~SetCutSceneLite(TRUE)
ForceSpell(Myself,DO_NOTHING)
CreateVisualEffectObject("SPROTECT" ,"Kharen")
SetGlobal("KhWin","GLOBAL",4)
TriggerActivation("StoneTrap",TRUE)
//ForceSpell("Kiyone",FORCE_STONE_TRAP)
~ EXIT

CHAIN
IF ~GlobalGT("KhWin","GLOBAL",2)
Global("FindingKova","GLOBAL",250)
Dead("Kova")
Dead("Kiyone")~ THEN KHAREN16 KhOK2
@659
= @660
DO ~SetCutSceneLite(FALSE)
GiveGoldForce(8000)~
== KHAREN16 IF ~GlobalGT("KhWin","GLOBAL",3)~ THEN @661
END
IF ~~ THEN REPLY @662 GOTO Kh7
IF ~GlobalGT("KhWin","GLOBAL",3)~ THEN REPLY @663 GOTO Kh5
IF ~GlobalLT("KhWin","GLOBAL",4)~ THEN REPLY @664 GOTO Kh5
IF ~~ THEN REPLY @665 GOTO Kh6

CHAIN
IF ~~ THEN KHAREN16 Kh5
@666
EXTERN KHAREN16 Kh6

CHAIN
IF ~~ THEN KHAREN16 Kh6
@667
EXTERN KHAREN16 Kh7

CHAIN
IF ~~ THEN KHAREN16 Kh7
@668
= @669
DO ~ChangeAIScript("",OVERRIDE)
SetGlobal("FindingKova","GLOBAL",251)
SetGlobal("MetKharen","GLOBAL",1)
ChangeAIScript("",DEFAULT)
NoAction()
ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF ~AreaCheck("AR1500")
InParty("Kova")
Global("MetKharen","GLOBAL",1)
Global("BrynnAmbush","GLOBAL",0)
!ActuallyInCombat()~ THEN Z#KIYOJ PostKh
@670
== Z#KOVAJ @671
== Z#KIYOJ @672
== Z#KOVAJ @673
== Z#KIYOJ IF ~GlobalLT("CornTalk","GLOBAL",3)~ THEN @674
== Z#KOVAJ IF ~GlobalLT("CornTalk","GLOBAL",3)~ THEN @675
== Z#KOVAJ IF ~GlobalGT("JermClue","GLOBAL",0)~ THEN @676
DO ~AddJournalEntry(@5025,QUEST)~
== Z#KIYOJ IF ~GlobalGT("JermClue","GLOBAL",0)~ THEN @677
== Z#KIYOJ IF ~Global("JermClue","GLOBAL",0)~ THEN @678
== Z#KOVAJ @679
= @680
== Z#KIYOJ @681
== Z#KOVAJ @682
== Z#KIYOJ @683
== Z#KOVAJ @684
== Z#KIYOJ @685
== Z#KOVAJ @686
== Z#KIYOJ @687
== Z#KOVAJ @688
== Z#KIYOJ @689
== Z#KOVAJ @690
== Z#KIYOJ @691
== Z#KOVAJ @692
== Z#KIYOJ @693
DO ~SetGlobal("MetKharen","GLOBAL",2)~ EXIT


/* ============================== *
 *  GST People Z#BRYNN1 Z#BRYNN2  *
 * ============================== */
BEGIN Z#BRYNN1
BEGIN Z#BRYNN2

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN Z#BRYNN1 pardon
@694
DO ~SetGlobal("Z#Brynn1Spoke","GLOBAL",1)~ EXIT

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN Z#BRYNN2 nothere
@695
END
IF ~!See("Kova")~ THEN DO ~SetGlobal("Z#Brynn1Spoke","GLOBAL",3)~ EXTERN Z#BRYNN1 drat
IF ~See("Kova")~ THEN DO ~SetGlobal("Z#Brynn1Spoke","GLOBAL",3)~ EXTERN Z#BRYNN2 thereheis

CHAIN
IF ~~ THEN Z#BRYNN1 drat
@696
== Z#BRYNN2 @697
== Z#BRYNN1 @698
END
IF ~InParty("Kova")~ THEN DO ~EscapeArea()
ActionOverride("Z#Assas3",EscapeArea())
SetGlobal("BrynnAmbush","GLOBAL",3)~ EXIT
IF ~!InParty("Kova")~ THEN DO ~EscapeArea()
ActionOverride("Z#Assas3",EscapeArea())~ EXIT

CHAIN
IF ~~ THEN Z#BRYNN2 thereheis
@699
== Z#BRYNN1 @700
END
IF ~XPLT(Player1,1000000)~ THEN DO ~Enemy()
SetGlobal("BrynnAmbush","GLOBAL",2)
ActionOverride("Z#Assas3",Enemy())
CreateCreatureObjectOffset("Z#Assas1",Player1,[100.-100])
CreateCreatureObjectOffset("Z#Assas2",Player1,[60.-60])
CreateCreatureOffScreen("Z#Assas1",0)
CreateCreatureOffScreen("Z#Assas2",0)
~ EXIT
IF ~XPGT(Player1,999999)
XPLT(Player1,2000000)~ THEN DO ~Enemy()
SetGlobal("BrynnAmbush","GLOBAL",2)
ActionOverride("Z#Assas3",Enemy())
CreateCreatureObjectOffset("Z#Assas2",Player1,[100.-100])
CreateCreatureObjectOffset("Z#Assas2",Player1,[60.-60])
CreateCreatureOffScreen("Z#Assas1",0)
CreateCreatureOffScreen("Z#Assas3",0)
~ EXIT
IF ~XPGT(Player1,1999999)~ THEN DO ~Enemy()
SetGlobal("BrynnAmbush","GLOBAL",2)
ActionOverride("Z#Assas3",Enemy())
CreateCreatureObjectOffset("Z#Assas2",Player1,[100.-100])
CreateCreatureObjectOffset("Z#Assas3",Player1,[60.-60])
CreateCreatureOffScreen("Z#Assas2",0)
CreateCreatureOffScreen("Z#Assas3",0)
~ EXIT

CHAIN
IF ~Global("BrynnAmbush","GLOBAL",2)~ THEN Z#KOVAJ afterbrynnfight
@701
= @702
DO ~SetGlobal("BrynnAmbush","GLOBAL",4)~ EXIT

CHAIN
IF ~Global("BrynnAmbush","GLOBAL",3)~ THEN Z#KOVAJ nobrynnfight
@703
= @702
DO ~SetGlobal("BrynnAmbush","GLOBAL",4)
AddexperienceParty(12000)~ EXIT

CHAIN
IF ~AreaType(OUTDOOR)
	InParty("Kiyone")
	InMyArea("Kiyone")
	Global("GovtGuards","GLOBAL",4)
	Global("KvEvidEnough","GLOBAL",0)
	RealGlobalTimerExpired("Z#EnoughT","GLOBAL")~ THEN Z#KOVAJ KvEvidEnough
@704
DO ~SetGlobal("KvEvidEnough","GLOBAL",1)~
== Z#KIYOJ IF ~!GlobalGT("BKKChat","GLOBAL",5)~ THEN @705
== Z#KIYOJ IF ~GlobalGT("BKKChat","GLOBAL",5)~ THEN @706
== Z#KOVAJ @707
= @708
== Z#KIYOJ @709
== Z#KOVAJ @710
== Z#KIYOJ @711
== Z#KOVAJ @712
EXIT

CHAIN
IF WEIGHT #-1 ~Global("z#gaelanc6","GLOBAL",1)
Global("Chapter","GLOBAL",%bg2_chapter_6%)
GlobalGT("JermClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)
GlobalGT("DayvClue","GLOBAL",0)~ THEN GAELAN z#gaelanc6
@713
= @714
= @715
== GAELAN IF ~!Dead("c6bodhi")~ THEN @716
== GAELAN IF ~!Dead("c6bodhi")~ THEN @717
== GAELAN IF ~Dead("c6bodhi")~ THEN @718
== GAELAN @719
DO ~SetGlobal("z#gaelanc6","GLOBAL",2)
AddJournalEntry(@5020,QUEST)
GiveItemCreate("RenNote",Player1,0,0,0)
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#gaelanc6","GLOBAL",2)
Global("Chapter","GLOBAL",%bg2_chapter_6%)
!Dead("c6Bodhi")~ THEN RENAL rennote1auto
@720
EXTERN RENAL rennote1

CHAIN
IF ~~ THEN RENAL rennote1ask
@721
EXTERN RENAL rennote1

CHAIN
IF ~~ THEN RENAL rennote1
@722
= @723
= @724
END
IF ~~ THEN REPLY @725 GOTO rennote1-1ext
IF ~~ THEN REPLY @726 GOTO rennote1-1
IF ~~ THEN REPLY @727 GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-1ext
@728
= @729
END
IF ~PartyGoldGT(2999)~ THEN REPLY @730 DO ~TakePartyGold(3000) DestroyGold(3000) SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY @731 GOTO rennote1-1-2
IF ~~ THEN REPLY @732 GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-1
@733
= @734
= @735
= @729
END
IF ~PartyGoldGT(2999)~ THEN REPLY @736 DO ~TakePartyGold(3000) DestroyGold(3000)
SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY @731 GOTO rennote1-1-2
IF ~~ THEN REPLY @732 GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-1-2
@737
= @738
END
IF ~PartyGoldGT(2999)~ THEN REPLY @736 DO ~TakePartyGold(3000) DestroyGold(3000)
SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY @732 GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-2
@739
DO ~SetGlobal("z#gaelanc6","GLOBAL",3)~
= @740
== RENAL IF ~Dead("c6bodhi")~ THEN
@741
== RENAL IF ~!Dead("c6bodhi")
GlobalGT("ShadowFightBodhi","GLOBAL",0)~ THEN
@742
== RENAL IF ~!Dead("c6bodhi")
Global("ShadowFightBodhi","GLOBAL",0)~ THEN
@743
== RENAL
@744
EXIT

CHAIN
IF ~~ THEN RENAL rennote2
@745
= @746
= @747
END
IF ~PartyGoldGT(2999)~ THEN REPLY @736 DO ~TakePartyGold(3000) DestroyGold(3000) SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY @731 GOTO rennote2-2
IF ~~ THEN REPLY @732 GOTO rennote2-2

CHAIN
IF ~~ THEN RENAL rennote2-2
@748
= @749
EXIT

CHAIN
IF ~~ THEN RENAL rennote3
@750
= @751
= @752
= @753
= @754
= @755
END
IF ~~ THEN REPLY @756 GOTO rennote3-1
IF ~~ THEN REPLY @757 GOTO rennote3-1
IF ~~ THEN REPLY @758 GOTO rennote3-2
IF ~~ THEN REPLY @759 GOTO rennote3-2

CHAIN
IF ~~ THEN RENAL rennote3-1
@760
EXTERN RENAL rennote4

CHAIN
IF ~~ THEN RENAL rennote3-2
@761
EXTERN RENAL rennote4

CHAIN
IF ~~ THEN RENAL rennote4
@762
= @763
== RENAL IF ~!Dead("c6bodhi")~ THEN @764
== RENAL IF ~Dead("c6bodhi")~ THEN @765
== RENAL @766
= @767
= @768
DO ~AddJournalEntry(@5021,QUEST)~ EXIT


/* ================ *
 *  Baevrin Starts  *
 * ================ */
CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",2)~ THEN Z#MESSEN bae1
@769
= @770
== Z#KIYOJ @771
== Z#MESSEN @772
== Z#MESSEN IF ~!Global("GovtGuards","GLOBAL",4)~ THEN @773
= @774
== Z#KIYOJ IF ~!Global("GovtGuards","GLOBAL",4)~ THEN @575
== Z#MESSEN IF ~!Global("GovtGuards","GLOBAL",4)~ THEN @576
== Z#KIYOJ IF ~!Global("GovtGuards","GLOBAL",4)~ THEN @577
== Z#MESSEN IF ~!Global("GovtGuards","GLOBAL",4)~ THEN @775
DO ~SetGlobal("GovtGuards","GLOBAL",4)~
== Z#MESSEN @776
= @777
END
IF ~~ THEN REPLY @778 GOTO bae1-1
IF ~~ THEN REPLY @779 GOTO bae1-2
IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY @780 GOTO bae1-3

CHAIN
IF ~~ THEN Z#MESSEN bae1-3
@781
= @782
END
IF ~~ THEN REPLY @778 GOTO bae1-1
IF ~~ THEN REPLY @783 GOTO bae1-2

CHAIN
IF ~~ THEN Z#MESSEN bae1-2
@784
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",3)
AddJournalEntry(@5030,QUEST)
EscapeAreaMove("AR0511",430,955,2)~ EXIT

CHAIN
IF ~~ THEN Z#MESSEN bae1-1
@785
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",3)
ActionOverride(Player1,LeaveAreaLUA("AR0511","",[365.1035],10))
ActionOverride(Player2,LeaveAreaLUA("AR0511","",[335.1005],10))
ActionOverride(Player3,LeaveAreaLUA("AR0511","",[395.1065],10))
ActionOverride(Player4,LeaveAreaLUA("AR0511","",[335.1065],10))
ActionOverride(Player5,LeaveAreaLUA("AR0511","",[305.1035],10))
ActionOverride(Player6,LeaveAreaLUA("AR0511","",[365.1095],10))
MoveBetweenAreas("AR0511",[400.924],3)~ EXIT

BEGIN Z#BAEV
BEGIN Z#TERAHN
BEGIN Z#MERAHN
BEGIN Z#ARDEL

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",4)~ THEN Z#TERAHN BaevPlot4
@786
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",5)~
== Z#KIYOJ @787
== Z#Merahn @788
== Z#Messen @789
== Z#Merahn @790
== Z#Terahn @791
= @792
== Z#Ardel @793
= @794
DO ~ActionOverride("Z#Baev",MoveToObject(Player1)) SmallWait(22)
ActionOverride("Z#Baev",StartDialogNoSet(Player1))~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",5)~ THEN Z#BAEV BaevPlot51
@795
== Z#KIYOJ @796
== Z#Baev @797
== Z#KIYOJ @798
== Z#Baev @799
== Z#KIYOJ @800
== Z#Baev @801
= @802
= @803
= @804
== Z#KIYOJ @805
== Z#Baev @806
= @807
END
IF ~~ THEN REPLY @808 GOTO BaevPlot511
IF ~~ THEN REPLY @809 GOTO BaevPlot512
IF ~~ THEN REPLY @810 GOTO BaevPlot513
IF ~~ THEN REPLY @811 GOTO BaevPlot514
IF ~~ THEN REPLY @812 GOTO BaevPlot519
IF ~CheckStatGT(Player1,13,WIS) CheckStatGT(Player1,13,INT)~ THEN REPLY @813 GOTO BaevPlot521
IF ~CheckStatGT(Player1,17,WIS)~ THEN REPLY @814 GOTO BaevPlot522
IF ~CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,16,INT)~ THEN REPLY @815 GOTO BaevPlot523
IF ~~ THEN REPLY @816 GOTO BaevPlot54

CHAIN
IF ~~ THEN Z#BAEV BaevPlot51Stop
@817
END
IF ~~ THEN REPLY @808 GOTO BaevPlot511
IF ~~ THEN REPLY @809 GOTO BaevPlot512
IF ~~ THEN REPLY @810 GOTO BaevPlot513
IF ~~ THEN REPLY @811 GOTO BaevPlot514
IF ~~ THEN REPLY @812 GOTO BaevPlot519
IF ~CheckStatGT(Player1,13,WIS) CheckStatGT(Player1,13,INT)~ THEN REPLY @813 GOTO BaevPlot521
IF ~CheckStatGT(Player1,17,WIS)~ THEN REPLY @814 GOTO BaevPlot522
IF ~CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,16,INT)~ THEN REPLY @815 GOTO BaevPlot523
IF ~~ THEN REPLY @816 GOTO BaevPlot54

CHAIN
IF ~~ THEN Z#BAEV BaevPlot511
@818
END
IF ~~ THEN REPLY @819 GOTO BaevPlot512
IF ~~ THEN REPLY @820 GOTO BaevPlot513
IF ~~ THEN REPLY @811 GOTO BaevPlot514
IF ~~ THEN REPLY @812 GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot512
@821
END
IF ~~ THEN REPLY @822 GOTO BaevPlot513
IF ~~ THEN REPLY @811 GOTO BaevPlot514
IF ~~ THEN REPLY @823 GOTO BaevPlot515
IF ~~ THEN REPLY @812 GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot513
@824
END
IF ~~ THEN REPLY @825 GOTO BaevPlot516
IF ~~ THEN REPLY @812 GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot514
@826
END
IF ~~ THEN REPLY @825 GOTO BaevPlot516
IF ~~ THEN REPLY @812 GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot515
@827
END
IF ~CheckStatGT(Player1,15,WIS)~ THEN REPLY @828 GOTO BaevPlot525
IF ~~ THEN REPLY @829 EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot525
@830
== Z#KIYOJ @831
== Z#BAEV @832
== Z#KIYOJ @833
== Z#BAEV @834
= @835
== Z#KIYOJ @836
DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot516
@837
END
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY @838 GOTO BaevPlot526
IF ~~ THEN REPLY @839 EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot526
@840
== Z#KIYOJ @841
== Z#BAEV @832
== Z#KIYOJ @842
== Z#BAEV @843
== Z#KIYOJ @836
DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot519
@844
END
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY @845 GOTO BaevPlot529
IF ~~ THEN REPLY @846 EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot529
@847
END
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY @848 GOTO BaevPlot523
IF ~~ THEN REPLY @849 EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot521
@850
== Z#ARDEL @851
== Z#BAEV @852
END
IF ~OR(2) CheckStatGT(Player1,15,INT) CheckStatGT(Player1,15,WIS)~ THEN REPLY @853 GOTO BaevPlot524
IF ~~ THEN REPLY @854 GOTO BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot524
@855
== Z#KIYOJ @856
= @857
DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot522
@858
== Z#KIYOJ @859
DO ~AddExperienceParty(15000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot523
@860
= @861
= @862
== Z#KIYOJ @863
END
IF ~OR(2) !CheckStatGT(Player1,14,WIS) !CheckStatGT(Player1,16,INT)~ THEN DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55
IF ~CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,16,INT)~ THEN DO ~AddExperienceParty(18000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot54
@864
== Z#KIYOJ @865
= @866
EXTERN Z#BAEV BaevPlot523

CHAIN
IF ~~ THEN Z#BAEV BaevPlot55
@867
== Z#KIYOJ @868
= @869
== Z#BAEV @870
== Z#KIYOJ @871
== Z#BAEV @872
== Z#KIYOJ @873
== Z#BAEV @874
= @875
== Z#KIYOJ @876
== Z#BAEV @877
== Z#KIYOJ @878
== Z#MESSEN @879
== Z#KIYOJ @880
== Z#MESSEN @881
== Z#ARDEL @882
= @883
== Z#MESSEN @884
== Z#BAEV @885
== Z#MESSEN @886
== Z#ARDEL @887
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",6)
AddJournalEntry(@5031,QUEST)
SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",2400) // 8 hours
ReallyForceSpell("Z#BAEV",WIZARD_INVISIBILITY)
ReallyForceSpell("Z#TERAHN",WIZARD_INVISIBILITY)
ReallyForceSpell("Z#MERAHN",WIZARD_INVISIBILITY)
ReallyForceSpell("Z#MESSEN",WIZARD_INVISIBILITY)
ReallyForceSpell(Myself,WIZARD_INVISIBILITY)
ActionOverride("Z#BAEV",MoveBetweenAreas("AR0528",[620.270],3))
ActionOverride("Z#TERAHN",MoveBetweenAreas("AR0528",[490.370],4))
ActionOverride("Z#MERAHN",MoveBetweenAreas("AR0528",[360.280],2))
ActionOverride("Z#MESSEN",MoveBetweenAreas("AR0528",[475.285],2))
MoveBetweenAreas("AR0528",[430.215],0)~ EXIT

CHAIN
IF ~GlobalGT("Z#BaevrinPlot","GLOBAL",5)
GlobalLT("Z#BaevrinPlot","GLOBAL",11)~ THEN Z#BAEV Misc
@888
EXIT

CHAIN
IF ~OR(2) AreaCheck("AR0522") AreaCheck("AR0509")
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BvPlotComm1","LOCALS",0)~ THEN Z#KOVAJ Z#BvPlotComm1
@889
DO ~SetGlobal("Z#BvPlotComm1","LOCALS",1)~
= @890
== Z#KIYOJ @891
== Z#KOVAJ @892
== Z#KIYOJ @893
== Z#KOVAJ @894
== Z#KIYOJ @895
EXIT


/* =================== *
 *  Arledrian in BvP7  *
 * =================== */
CHAIN
IF WEIGHT #-1 ~OR(2)
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BaevrinPlot","GLOBAL",7)
Global("Z#BvPlotArdelSpoke","GLOBAL",0)~
THEN ARLED BvPlot7
@896
DO ~SetGlobal("Z#BvPlotArdelSpoke","GLOBAL",1)~
== Z#KIYOJ @897
== ARLED @898
= @899
== Z#KIYOJ @900
== ARLED @901
END
IF ~PartyGoldGT(499)~ THEN REPLY @902
DO ~TakePartyGold(500) DestroyGold(500)~ GOTO BvPlot7Yes
IF ~~ THEN REPLY @903 GOTO BvPlot7Half
IF ~~ THEN REPLY @904 GOTO BvPlot7No

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",7) Global("Z#BvPlotArdelSpoke","GLOBAL",1)~
THEN ARLED BvPlot7back
@905
END
IF ~PartyGoldGT(499)~ THEN REPLY @906
DO ~TakePartyGold(500) DestroyGold(500)~ GOTO BvPlot7Yes
IF ~~ THEN REPLY @907 GOTO BvPlot7No

CHAIN
IF ~~ THEN ARLED BvPlot7No
@908
= @909
END
IF ~!AreaCheck("AR0312")~ THEN DO ~EscapeArea()~ EXIT
IF ~AreaCheck("AR0312")~ THEN EXIT

CHAIN
IF ~~ THEN ARLED BvPlot7Half
@910
= @911
END
IF ~PartyGoldGT(499)~ THEN REPLY @912
DO ~TakePartyGold(500) DestroyGold(500)~ GOTO BvPlot7Yes
IF ~~ THEN REPLY @904 GOTO BvPlot7No

CHAIN
IF ~~ THEN ARLED BvPlot7Yes
@913
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",8)
AddJournalEntry(@5032,QUEST)
SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",1800)~ // 6 hours
= @914
= @915
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ @916
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN @917
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN @918
== ARLED @919
== ARLED @920
= @921
= @922
= @923
END
IF ~!AreaCheck("AR0312")~ THEN DO ~EscapeArea()~ EXIT
IF ~AreaCheck("AR0312")~ THEN EXIT

BEGIN Z#BvP8

CHAIN
IF ~GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")
Global("Z#BaevrinPlot","GLOBAL",9)~ THEN Z#BvP8 late
@924
END
IF ~XPGT(Player1,1100000)~ THEN
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",10)
DestroyItem("MinHp1")
CreateCreature("Z#Assas2",[377.320],14)
CreateCreature("Z#Assas2",[630.490],6)
CreateCreature("Z#Assas3",[585.120],0)
CreateCreature("Z#Assas3",[595.255],0)
CreateCreature("Z#Assas3",[735.340],0)
Enemy()~ EXIT
IF ~!XPGT(Player1,1100000)~ THEN
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",10)
DestroyItem("MinHp1")
CreateCreature("Z#Assas2",[377.320],14)
CreateCreature("Z#Assas2",[630.490],6)
CreateCreature("Z#Arch2",[550.602],8)
CreateCreature("Z#Arch2",[260.384],12)
CreateCreature("Z#Assas2",[585.120],0)
CreateCreature("Z#Assas3",[595.255],0)
CreateCreature("Z#Assas2",[735.340],0)
Enemy()~ EXIT

CHAIN
IF ~!GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")
Global("Z#BaevrinPlot","GLOBAL",9)~ THEN Z#BvP8 punctual
@925
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",10)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @926
== Z#BvP8 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @927
== Z#BvP8 IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN @928
== Z#BvP8 @929
DO ~DestroyItem("MinHp1")
	CreateCreature("Z#Assas2",[377.320],14)
	CreateCreature("Z#Assas2",[630.490],6)
	CreateCreature("Z#Arch2",[550.602],8)
	CreateCreature("Z#Arch2",[260.384],12)
Enemy()~ EXIT

BEGIN Z#ADYL

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",10)
	!Detect([ENEMY])
	AreaCheck("AR0515")
	!ActuallyInCombat()~ THEN Z#Adyl BvPlot10
@930
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",11)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @931
== Z#Adyl IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @932
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @933
== Z#Adyl IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @934
END
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN REPLY @935 GOTO BvPlot101
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN REPLY @936 GOTO BvPlot101
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN REPLY @937 GOTO BvPlot101
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN REPLY @938 GOTO BvPlot102
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN REPLY @939 GOTO BvPlot102

CHAIN
IF ~~ THEN Z#ADYL BvPlot101
@940
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @941
== Z#Adyl @942
== Z#KIYOJ @943
= @944
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @945
DO ~ActionOverride("Z#ADYL",MoveBetweenAreas("AR0528",[550.325],10))
ActionOverride(Player1,LeaveAreaLUA("AR0528","",[175.443],10))
ActionOverride(Player2,LeaveAreaLUA("AR0528","",[145.413],10))
ActionOverride(Player3,LeaveAreaLUA("AR0528","",[205.473],10))
ActionOverride(Player4,LeaveAreaLUA("AR0528","",[145.473],10))
ActionOverride(Player5,LeaveAreaLUA("AR0528","",[115.443],10))
ActionOverride(Player6,LeaveAreaLUA("AR0528","",[175.503],10))~ EXIT

CHAIN
IF ~~ THEN Z#ADYL BvPlot102
@946
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @947
== Z#Adyl @942
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @948
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @949
DO ~ActionOverride(Player1,LeaveAreaLUA("AR0528","",[175.443],10))
ActionOverride(Player2,LeaveAreaLUA("AR0528","",[145.413],10))
ActionOverride(Player3,LeaveAreaLUA("AR0528","",[205.473],10))
ActionOverride(Player4,LeaveAreaLUA("AR0528","",[145.473],10))
ActionOverride(Player5,LeaveAreaLUA("AR0528","",[115.443],10))
ActionOverride(Player6,LeaveAreaLUA("AR0528","",[175.503],10))
MoveBetweenAreas("AR0528",[550.325],10)~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",11) InMyArea("Z#Adyl")~ THEN Z#Baev BvPlot11
@950
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",12) MoveToObject("Z#Adyl")~
== Z#Adyl @951
DO ~MoveToObject("Z#Baev")
SetCutSceneLite(TRUE)
Wait(2)
SetCutSceneLite(FALSE)
ActionOverride("Z#Baev",StartDialogNoSet(Player1))~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",12) InMyArea("Z#Adyl")~ THEN Z#Baev BvPlot12
@952
== Z#Adyl @953
== Z#Baev @954
== Z#Adyl @955
== Z#Baev @956
= @957
= @958
END
IF ~~ THEN REPLY @959 DO ~SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",1800)
SetGlobal("Z#BaevrinPlot","GLOBAL",13)~ EXTERN Z#MESSEN BvPlotOk1a
IF ~~ THEN REPLY @960 DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",20)~ EXTERN Z#MESSEN BvPlotOk2
IF ~~ THEN REPLY @961
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",14)~ EXTERN Z#MESSEN BvPlotOk1b

CHAIN
IF ~~ THEN Z#MESSEN BvPlotOk1a
@962
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",13)
AddJournalEntry(@5033,QUEST)~ EXTERN Z#BAEV BvPlotOk1

CHAIN
IF ~~ THEN Z#MESSEN BvPlotOk1b
@962
= @963
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",14)
AddJournalEntry(@5034,QUEST)~ EXTERN Z#BAEV BvPlotOk1

CHAIN
IF ~~ THEN Z#BAEV BvPlotOk1
@964
DO ~ActionOverride("Z#ARDEL",ReallyForceSpell("Z#BAEV",WIZARD_INVISIBILITY))
ActionOverride("Z#ARDEL",ReallyForceSpell("Z#MESSEN",WIZARD_INVISIBILITY))
ActionOverride("Z#ARDEL",ReallyForceSpell("Z#MERAHN",WIZARD_INVISIBILITY))
ActionOverride("Z#ARDEL",ReallyForceSpell("Z#TERAHN",WIZARD_INVISIBILITY))
ActionOverride("Z#ARDEL",ReallyForceSpell("Z#ADYL",WIZARD_INVISIBILITY))
ActionOverride("Z#ARDEL",ReallyForceSpell(Myself,WIZARD_INVISIBILITY))
ActionOverride("Z#ARDEL",DestroySelf())
ActionOverride("Z#MERAHN",DestroySelf())
ActionOverride("Z#TERAHN",DestroySelf())
ActionOverride("Z#MESSEN",DestroyAllEquipment())
ActionOverride("Z#MESSEN",DestroySelf())
ActionOverride("Z#ADYL",DestroyAllEquipment())
ActionOverride("Z#ADYL",DestroySelf())
DestroySelf()~ EXIT

CHAIN
IF ~~ THEN Z#MESSEN BvPlotOk2
@965
== Z#Baev @964
DO ~AddJournalEntry(@5035,QUEST)
SetGlobalTimer("KKCowlT","GLOBAL",9000)
SetGlobal("KKCowl","GLOBAL",0)
RealSetGlobalTimer("KKThiefT","GLOBAL",0)
RealSetGlobalTimer("Pursuit","GLOBAL",0)
// to Guard5 at 3543.826
ChangeAIScript("Z#BAEV",OVERRIDE)
ChangeAIScript("",DEFAULT) // +60-40
ActionOverride(Player1,LeaveAreaLUA("AR0500","",[3410.890],10))
ActionOverride(Player2,LeaveAreaLUA("AR0500","",[3350.830],10))
ActionOverride(Player3,LeaveAreaLUA("AR0500","",[3470.950],10))
ActionOverride(Player4,LeaveAreaLUA("AR0500","",[3350.950],10))
ActionOverride(Player5,LeaveAreaLUA("AR0500","",[3290.890],10))
ActionOverride(Player6,LeaveAreaLUA("AR0500","",[3410.1010],10))
ActionOverride("Z#TERAHN",MoveBetweenAreas("AR0500",[3180.1010],10))
ActionOverride("Z#MERAHN",MoveBetweenAreas("AR0500",[3240.1010],10))
ActionOverride("Z#ADYL",MoveBetweenAreas("AR0500",[3180.1070],10))
ActionOverride("Z#MESSEN",MoveBetweenAreas("AR0500",[3290.960],10))
ActionOverride("Z#ARDEL",MoveBetweenAreas("AR0500",[3120.1090],10))
MoveBetweenAreas("AR0500",[3210.1040],10)~ EXIT

CHAIN
IF WEIGHT #-1 ~Dead("Z#Ardel")
Global("Z#BaevrinPlot","GLOBAL",22)~ THEN ARLED BvPlot22
@966
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",23)~
= @967
END
IF ~~ THEN REPLY @968 GOTO BvPlot221
IF ~~ THEN REPLY @969 GOTO BvPlot221
IF ~~ THEN REPLY @970 GOTO BvPlot221

CHAIN
IF ~~ THEN ARLED BvPlot221
@971
= @972
DO ~EscapeArea()~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @973
EXIT

CHAIN
IF WEIGHT #-1 ~Dead("Z#Baev")
!ActuallyInCombat()
Global("Z#BaevrinPlot","GLOBAL",23)~ THEN Z#MESSEN BvPlot23NotSurv
@974
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @975
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN @976
== Z#MESSEN IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN @977
== Z#MESSEN @978
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",30)
// Brega at 1123.491
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[1100.560],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[1040.500],12))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[1160.620],7))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[1040.620],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[980.560],11))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[1100.680],8))
ActionOverride("Z#TERAHN",MoveBetweenAreas("AR1002",[1160.700],6))
ActionOverride("Z#MERAHN",MoveBetweenAreas("AR1002",[1190.650],6))
MoveBetweenAreas("AR1002",[1060.430],14) ~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",30)
Dead("Z#Baev")
AreaCheck("AR1002")~ THEN Z#MESSEN MyroFail
@979
== HABREGA @980
== Z#MESSEN @981
== HABREGA @982
= @983
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @984
== Z#MESSEN IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN @984
== Z#MESSEN @985
== HABREGA IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @986
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @987
== HABREGA IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN @988
== HABREGA @989
= @990
= @991
== Z#MESSEN @992
DO ~SetGlobal("BaevClue","GLOBAL",1) AddexperienceParty(12000)
AddJournalEntry(@5038,QUEST)
ActionOverride("Z#Terahn",EscapeArea()) ActionOverride("Z#Merahn",EscapeArea())
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~!Dead("Z#Baev")
!ActuallyInCombat()
Global("Z#BaevrinPlot","GLOBAL",23)~ THEN Z#MESSEN BvPlot23Surv
@993
== Z#BAEV @994
== Z#MESSEN @995
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",24)
// Brega at 1123.491
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[1100.560],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[1040.500],12))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[1160.620],7))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[1040.620],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[980.560],11))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[1100.680],8))
ActionOverride("Z#TERAHN",MoveBetweenAreas("AR1002",[1160.700],6))
ActionOverride("Z#MERAHN",MoveBetweenAreas("AR1002",[1190.650],6))
ActionOverride("Z#ADYL",MoveBetweenAreas("AR1002",[1160.540],7))
ActionOverride("Z#BAEV",MoveBetweenAreas("AR1002",[1120.540],8))
MoveBetweenAreas("AR1002",[1060.430],14)~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",24)
!InParty("Kiyone") AreaCheck("AR1002")~ THEN Z#MESSEN BvPlot24Hibrega
@996
EXTERN HABREGA BvPlot24

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",24)
InParty("Kiyone") AreaCheck("AR1002")~ THEN Z#KIYOJ BvPlot24Hibrega
@997
EXTERN HABREGA BvPlot24

CHAIN
IF ~~ THEN HABREGA BvPlot24
@998
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",25)~
== Z#Baev @999
== HABREGA @1000
== Z#Baev @1001
= @1002
== HABREGA @1003
== Z#Adyl @1004
== HABREGA @1005
== Z#Baev @1006
= @1007
= @1008
= @1009
= @1010
== HABREGA @1011
== Z#Baev @1012
== HABREGA @1013
== Z#Baev @1014
== HABREGA @1015
== Z#Baev @1016
== HABREGA @1017
== Z#Baev @1018
= @1019
== Z#Adyl @1020
DO ~ReputationInc(1)~
== Z#Messen IF ~InParty("Kiyone")~ THEN @1021
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN @1022
== Z#Messen @1023
DO ~ActionOverride("Z#Baev",EscapeArea()) ActionOverride("Z#Adyl",EscapeArea())
ActionOverride("Z#Terahn",EscapeArea()) ActionOverride("Z#Merahn",EscapeArea())
AddJournalEntry(@5039,QUEST)
// SetCutSceneLite(TRUE)
MoveToPoint([860.580]) // 1060.430
SetInterrupt(FALSE)
SetGlobal("BaevClue","GLOBAL",2)
Wait(1) ActionOverride("HABREGA",StartDialogNoSet(Player1)) SetInterrupt(TRUE)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("BaevClue","GLOBAL",2)
AreaCheck("AR1002")
Global("Z#BaevrinPlot","GLOBAL",25)~ THEN HABREGA BvPlotEnd
@1024
END
IF ~InParty("Kiyone")~ THEN DO ~ActionOverride("Z#MESSEN",DestroySelf())~ EXTERN HABREGA BvPlotEndKiyo
IF ~!InParty("Kiyone")~ THEN DO ~ActionOverride("Z#MESSEN",DestroySelf())~ EXTERN HABREGA BvPlotEndNoKiyo

CHAIN
IF ~~ THEN HABREGA BvPlotEndNoKiyo
@1025
== Z#MESSEN @1026
= @1027
== HABREGA @1028
= @1029
== HABREGA @1030
DO ~SetGlobal("BaevClue","GLOBAL",3) SetCutSceneLite(FALSE)
AddexperienceParty(24000) ActionOverride("Myroven",EscapeArea())~ EXIT

CHAIN
IF ~~ THEN HABREGA BvPlotEndKiyo
@1031
== Z#KIYOJ @1032
== HABREGA @1033
== Z#KIYOJ @1034
== HABREGA @1029
== Z#KIYOJ @1035
== HABREGA @1036
DO ~SetGlobal("BaevClue","GLOBAL",3) SetCutSceneLite(FALSE)
AddexperienceParty(24000) ActionOverride("Myroven",EscapeArea())~ EXIT

CHAIN
IF ~~ THEN HABREGA BvPlot14 // Meet you at Rendezvous
@1037
== Z#KIYOJ @1038
== HABREGA @1039
= @1040
== Z#KIYOJ @1041
= @1042
== HABREGA @1043
= @1044
DO ~MoveBetweenAreas("AR0531",[370.425],4)~
== Z#KIYOJ @1045
DO ~SetCutSceneLite(TRUE)
FadeToColor([10.0],0)
ActionOverride(Player1,LeaveAreaLUA("AR0531","",[550.360],4))
ActionOverride(Player2,LeaveAreaLUA("AR0531","",[550.440],4))
ActionOverride(Player3,LeaveAreaLUA("AR0531","",[550.280],4))
ActionOverride(Player4,LeaveAreaLUA("AR0531","",[630.360],4))
ActionOverride(Player5,LeaveAreaLUA("AR0531","",[630.440],4))
ActionOverride(Player6,LeaveAreaLUA("AR0531","",[630.380],4))
AddJournalEntry(@5037,QUEST)
SetGlobal("Z#BaevrinPlot","GLOBAL",17)~ EXIT

CHAIN
IF ~~ THEN HABREGA BvPlot13 // Meet you at Brega
@1037
== Z#KIYOJ @1038
== HABREGA @1046
== Z#KIYOJ IF ~GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")~ THEN @1047
== Z#KIYOJ IF ~GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")~ THEN @1048
== HABREGA @1049
== Z#KIYOJ @1050
== HABREGA @1051
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",15)
SetCutSceneLite(TRUE)
// Brega at 1123.491
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[1100.560],10))
CreateCreature("AMNG1",[900.650],10)
ActionOverride("AMNG1",StartDialog("Z#AMNG1","Habrega"))~ EXIT

BEGIN Z#AMNG1

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",15)~ THEN Z#AMNG1 BvPlot15
@1052
== Z#KIYOJ @1053
== HABREGA @1054
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#BaevrinPlot","GLOBAL",17) FadeToColor([10.0],0)
ActionOverride("AMNG1",DestroySelf())
ActionOverride(Player2,LeaveAreaLUA("AR0500","",[2990.870],7))
ActionOverride(Player3,LeaveAreaLUA("AR0500","",[3110.990],7))
ActionOverride(Player4,LeaveAreaLUA("AR0500","",[2990.990],7))
ActionOverride(Player5,LeaveAreaLUA("AR0500","",[2930.930],7))
ActionOverride(Player6,LeaveAreaLUA("AR0500","",[3050.1050],7))
ActionOverride(Player1,LeaveAreaLUA("AR0500","",[3050.930],7))
AddJournalEntry(@5036,QUEST)
MoveBetweenAreas("AR0500",[3070.850],10)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",18)~ THEN HABREGA BvPlot18
@1055
DO ~SetGlobal("BaevClue","GLOBAL",2) SetGlobal("Z#BaevrinPlot","GLOBAL",19)
SetCutSceneLite(FALSE)~
= @1056
== Z#KIYOJ @1057
= @1058
== HABREGA @1059
= @1060
== Z#KIYOJ @987
== HABREGA @1061
= @1062
= @1063
= @991
DO ~AddexperienceParty(12000)
SetGlobal("BaevClue","GLOBAL",1)
EscapeAreaMove("AR1002",1123,491,2)~ EXIT

CHAIN
IF ~Dead("Z#Messen") !InMyArea("Habrega")
InMyArea("Kiyone") InParty("Kiyone")
Global("Z#MyroDead","LOCALS",0)~ THEN Z#KOVAJ MyroDead
@1064
DO ~SetGlobal("Z#MyroDead","LOCALS",1)~
== Z#KIYOJ @1065
= @1066
== Z#KOVAJ @1067
== Z#KIYOJ @1068
== Z#KOVAJ @1069
= @1070
== Z#KIYOJ @1071
EXIT


/* ============================================== *
 *  Edwin outside the Party before Seida Meeting  *
 * ============================================== */
CHAIN
IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)
GlobalGT("z#gaelanc6","GLOBAL",3)
Global("Z#MeetingSeida","GLOBAL",0)~ THEN EDWINP z#iambusymakingpreps
@1072
END
IF ~~ THEN REPLY @1073 EXTERN EDWINP z#notwantjoin
IF ~~ THEN REPLY @1074 EXTERN EDWINP z#askwhatprep
IF ~~ THEN REPLY @1075 EXTERN EDWINP z#leave

CHAIN
IF ~~ THEN EDWINP z#askwhatprep
@1076
END
IF ~~ THEN REPLY @1073 EXTERN EDWINP z#notwantjoin
IF ~~ THEN REPLY @1075 EXTERN EDWINP z#leave

CHAIN
IF ~~ THEN EDWINP z#notwantjoin
@1077
END
IF ~~ THEN REPLY @1078 EXTERN EDWINP z#askjoinmoney
IF ~~ THEN REPLY @1074 EXTERN EDWINP z#askwhatprep
IF ~~ THEN REPLY @1075 EXTERN EDWINP z#leave

CHAIN
IF ~~ THEN EDWINP z#leave
@1079
= @1080
DO ~ReallyForceSpell(Myself,WIZARD_STONE_SKIN)
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT

CHAIN
IF ~~ THEN EDWINP z#askjoinmoney
@1081
END
IF ~~ THEN REPLY @1082 EXTERN EDWINP z#leave
IF ~PartyGoldGT(499)~ THEN REPLY @1083
DO ~TakePartyGold(500) DestroyGold(500)~ EXTERN EDWINP z#moneyjoin

CHAIN
IF ~~ THEN EDWINP z#moneyjoin
@1084
DO ~JoinParty() SetGlobal("KickedOut","LOCALS",0)~ EXIT

// Kova warns abt Edwin
CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
InPartyAllowDead("Edwin") InMyArea(Player1)
Global("Z#doubtededwin","GLOBAL",0)
OR(2)
	Global("Z#gaelanc6","GLOBAL",6)
	Global("Z#gaelanc6","GLOBAL",7)
AreaCheck("AR0300")~ THEN Z#KOVAJ seidadoubtedwin
@1085
DO ~SetGlobal("Z#doubtededwin","GLOBAL",1)~
== Z#KIYOJ @1086
EXIT


/* ============ *
 *  Edwin Talk  *
 * ============ */
CHAIN
IF ~Global("Z#doubtededwin","GLOBAL",1)
	Global("Z#GotGameDream","GLOBAL",0)
	InParty("Edwin") InMyArea("Edwin")
	InPartyAllowDead("Kiyone")
	InPartyAllowDead("Kova")
	OR(2)
		Global("Z#gaelanc6","GLOBAL",6)
		Global("Z#gaelanc6","GLOBAL",7)~ THEN PLAYER1 Z#checkwithedwin
@1087
DO ~SetGlobal("Z#doubtededwin","GLOBAL",2)~
END
IF ~~ THEN REPLY @1088 EXTERN EDWINJ Z#edwinpolite
IF ~~ THEN REPLY @1089 EXTERN EDWINJ Z#edwindemand
IF ~~ THEN REPLY @1090 DO ~RestParty()~ EXIT

CHAIN
IF ~~ THEN EDWINJ Z#edwinpolite
@1091
= @1092
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT) CheckStatGT(Player1,14,WIS)~ THEN REPLY @1093 EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY @1094 EXTERN EDWINJ Z#edwindemand
IF ~~ THEN REPLY @1095 EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY @1096 EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY @1097 EXTERN EDWINJ Z#edwinendsleep
IF ~~ THEN REPLY @1098 EXTERN EDWINJ Z#edwinendsleep

CHAIN
IF ~~ THEN EDWINJ Z#edwindemand
@1099
= @1100
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT) CheckStatGT(Player1,14,WIS)~ THEN REPLY @1093 EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY @1095 EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY @1096 EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY @1097 EXTERN EDWINJ Z#edwinendsleep
IF ~~ THEN REPLY @1098 EXTERN EDWINJ Z#edwinendsleep

CHAIN
IF ~~ THEN EDWINJ Z#edwinendsleep
@1101
DO ~RestParty()~ EXIT

CHAIN
IF ~~ THEN EDWINJ Z#edwinspecaccuse
@1102
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT) CheckStatGT(Player1,14,WIS)~ THEN REPLY @1093 EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY @1096 EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY @1103 EXTERN EDWINJ Z#edwinendsleepleave
IF ~~ THEN REPLY @1104 EXTERN EDWINJ Z#edwinendsleepleave

CHAIN
IF ~~ THEN EDWINJ Z#edwinaccuse
@1105
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT) CheckStatGT(Player1,14,WIS)~ THEN REPLY @1093 EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY @1095 EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY @1103 EXTERN EDWINJ Z#edwinendsleepleave
IF ~~ THEN REPLY @1104 EXTERN EDWINJ Z#edwinendsleepleave

CHAIN
IF ~~ THEN EDWINJ Z#edwinendsleepleave
@1106
= @1107
DO ~DropInventory() LeaveParty()
ReallyForceSpell(Myself,WIZARD_STONE_SKIN)
ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT

CHAIN
IF ~~ THEN EDWINJ Z#edwinsuggestprofit
@1108
END
IF ~OR(2) CheckStatGT(Player1,13,INT) CheckStatGT(Player1,13,WIS)~ THEN REPLY @1109 EXTERN EDWINJ Z#edwinplayersuggestmoney
IF ~OR(2) CheckStatGT(Player1,13,INT) CheckStatGT(Player1,13,WIS)~ THEN REPLY @1110 EXTERN EDWINJ Z#edwinplayersuggestmoney
IF ~~ THEN REPLY @1111 EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY @1112 EXTERN EDWINJ Z#edwinnotplayersuggestmoney
IF ~~ THEN REPLY @1113 EXTERN EDWINJ Z#edwinnotplayersuggestmoney
IF ~~ THEN REPLY @1114 EXTERN EDWINJ Z#edwinnotplayersuggestmoney

CHAIN
IF ~~ THEN EDWINJ Z#edwinnotplayersuggestmoney
@1115
= @1116
EXTERN EDWINJ Z#edwinamttobribe

CHAIN
IF ~~ THEN EDWINJ Z#edwinplayersuggestmoney
@1117
= @1118
EXTERN EDWINJ Z#edwinamttobribe

CHAIN
IF ~~ THEN EDWINJ Z#edwinamttobribe
@1119
END
IF ~~ THEN REPLY @1120 EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY @1121 EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY @1122 EXTERN EDWINJ Z#edwinendsleepleave
IF ~PartyGoldGT(499)~ THEN REPLY @1123 DO ~TakePartyGold(500) DestroyGold(500) SetGlobal("Z#BribedEdwin","GLOBAL",1)~ EXTERN EDWINJ edwingetbribed1leave
IF ~PartyGoldGT(999)~ THEN REPLY @1124 DO ~TakePartyGold(1000) DestroyGold(1000)SetGlobal("Z#BribedEdwin","GLOBAL",1)~ EXTERN EDWINJ edwingetbribed1leave
IF ~PartyGoldGT(4999)~ THEN REPLY @1125 DO ~TakePartyGold(5000) DestroyGold(5000)SetGlobal("Z#BribedEdwin","GLOBAL",1)~ EXTERN EDWINJ edwingetbribed1leave
IF ~PartyGoldGT(9999)~ THEN REPLY @1126 DO ~TakePartyGold(10000) DestroyGold(10000)SetGlobal("Z#BribedEdwin","GLOBAL",2)~ EXTERN EDWINJ edwingetbribed2leave
IF ~PartyGoldGT(14999)~ THEN REPLY @1127 DO ~TakePartyGold(15000) DestroyGold(15000)SetGlobal("Z#BribedEdwin","GLOBAL",2)~ EXTERN EDWINJ edwingetbribed2leave
IF ~PartyGoldGT(19999)~ THEN REPLY @1128 DO ~TakePartyGold(20000) DestroyGold(20000)SetGlobal("Z#BribedEdwin","GLOBAL",2)~ EXTERN EDWINJ edwingetbribed2leave

CHAIN
IF ~~ THEN EDWINJ edwingetbribed1leave
@1129
== EDWINJ @1130
END
IF ~~ THEN DO ~DropInventory() SetGlobal("KickedOut","LOCALS",1) LeaveParty()
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT

CHAIN
IF ~~ THEN EDWINJ edwingetbribed2leave
@1129
= @1131
= @1130
END
// mage level 1-12,spells 6-7
IF ~!XPGT(Myself,999999)~ THEN
DO ~DropInventory() SetGlobal("KickedOut","LOCALS",1)
GiveItemCreate("SCRL7Q",Myself,1,0,0)
GiveItemCreate("SCRL8R",Myself,1,0,0)
LeaveParty()
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT
// mage level 13-15,spells 7-8
IF ~XPGT(Myself,999999) !XPGT(Myself,999999)~ THEN //
DO ~DropInventory() SetGlobal("KickedOut","LOCALS",1)
GiveItemCreate("SCRL8R",Myself,1,0,0)
GiveItemCreate("SCRL9D",Myself,1,0,0)
LeaveParty()
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT
// mage level 16+,spells 8-9
IF ~XPGT(Myself,1999999)~ THEN
DO ~DropInventory() SetGlobal("KickedOut","LOCALS",1)
GiveItemCreate("SCRL9D",Myself,1,0,0)
GiveItemCreate("SCRL9Q",Myself,1,0,0)
LeaveParty()
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT


// Kova on killing Arledrian

CHAIN
IF ~Dead("Arledrian")
!ActuallyInCombat()
Global("Z#ArledTalk","GLOBAL",3)
Global("Z#killarled","LOCALS",0)~ THEN Z#KOVAJ Z#killarled
@1132
DO ~SetGlobal("Z#killarled","LOCALS",1)
IncrementGlobal("Break","LOCALS",1)~ EXIT

// Arledrian shows his face again

CHAIN
IF WEIGHT #-1 ~Global("BaevClue","GLOBAL",3)
AreaCheck("AR0300")
Global("Z#ArledTalk","GLOBAL",1)
OR(2)
	Global("Z#Gaelanc6","GLOBAL",4)
	Global("Z#Gaelanc6","GLOBAL",5)~ THEN ARLED meetbeforeseida
@1133
DO ~SetGlobal("Z#ArledTalk","GLOBAL",2)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@1134
== ARLED @1135
= @1136
END
IF ~~ THEN REPLY @1137 EXTERN ARLED whatsortofinfo
IF ~~ THEN REPLY @1138 EXTERN ARLED tellusfirst
IF ~~ THEN REPLY @1139 EXTERN ARLED arledsay
IF ~~ THEN REPLY @1140 EXTERN ARLED dienosay

CHAIN
IF ~~ THEN ARLED whatsortofinfo
@1141
= @1142
= @1143
END
IF ~~ THEN REPLY @1144 EXTERN ARLED dienosay
IF ~~ THEN REPLY @1138 EXTERN ARLED tellusfirst
IF ~~ THEN REPLY @1139 EXTERN ARLED arledsay
IF ~~ THEN REPLY @1140 EXTERN ARLED dienosay

CHAIN
IF ~~ THEN ARLED tellusfirst
@1145
= @1146
END
IF ~~ THEN REPLY @1137 EXTERN ARLED whatsortofinfo
IF ~~ THEN REPLY @1139 EXTERN ARLED arledsay
IF ~~ THEN REPLY @1140 EXTERN ARLED dienosay

CHAIN
IF ~~ THEN ARLED dienosay
@1147
= @1148
DO ~Enemy()~ EXIT

CHAIN
IF ~~ THEN ARLED arledsay
@1149
= @1150
= @1151
= @1152
= @1153
= @1154
DO ~SetGlobal("Z#ArledTalk","GLOBAL",3)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN @1155
== ARLED @1156
END
IF ~~ THEN REPLY @1157 EXTERN ARLED dieaftersay
IF ~~ THEN REPLY @1158 EXTERN ARLED badbye
IF ~~ THEN REPLY @1159 EXTERN ARLED goodbye

CHAIN
IF ~~ THEN ARLED dieaftersay
@1160
= @1148
DO ~Enemy()~ EXIT

CHAIN
IF ~~ THEN ARLED badbye
@1161
DO ~EscapeArea()~ EXIT

CHAIN
IF ~~ THEN ARLED goodbye
@1162
= @1163
== ARLED IF ~!InParty("Edwin") !Dead("Edwin")~ THEN @1164
DO ~SetGlobal("Z#ArledSpokeEdwin","GLOBAL",1)~
== ARLED @1165
DO ~EscapeArea()~ EXIT

// Gaelan Dies

CHAIN
IF WEIGHT #-1 ~Dead("Arledrian")
GlobalGT("Z#ArledTalk","GLOBAL",0)
Global("Z#GaelanDie","AR0311",1)~ THEN GAELAN idiots
@1166
= @1167
DO ~SetGlobal("Z#GaelanDie","AR0311",2) DestroyAllEquipment() Kill(Myself)~ EXIT

// Kiyone asks about Arled's information

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
!InMyArea("Arledrian")
GlobalGT("Z#ArledTalk","GLOBAL",2)
Global("Z#kovaarledinfo","LOCALS",0)~ THEN Z#KIYOJ kovaarledinfo
@1168
DO ~SetGlobal("Z#kovaarledinfo","LOCALS",1)~
== Z#KOVAJ @1169
= @1170
== Z#KIYOJ @1171
== Z#KOVAJ @1172
== Z#KIYOJ @1173
EXIT

// Aran on Seida

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("c6bodhi")
Global("z#gaelanc6","GLOBAL",4)~ THEN ARAN findseida1
@1174
= @1175
= @1176
= @1177
= @1178
END
IF ~OR(4)
GlobalLT("Z#Trial","GLOBAL",2)
!InMyArea("Kova") !InParty("Kova")
GlobalGT("Z#TrialClear","GLOBAL",0)~ THEN GOTO findseidano
IF ~GlobalGT("Z#Trial","GLOBAL",1) InMyArea("Kova") InParty("Kova")~ THEN GOTO findseidayes

CHAIN
IF ~~ THEN ARAN findseidano
@1179
= @1180
DO ~SetGlobal("z#gaelanc6","GLOBAL",5)~ EXIT

CHAIN
IF ~~ THEN ARAN findseidayes
@1181
= @1182
EXTERN ARAN wonderseida

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("c6bodhi")
Global("z#gaelanc6","GLOBAL",5)
OR(4)
GlobalLT("Z#Trial","GLOBAL",2)
!InMyArea("Kova")
!InParty("Kova")
GlobalGT("Z#TrialClear","GLOBAL",0)~ THEN ARAN stillfindseidano
@1183
= @1184
EXIT

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("c6bodhi")
Global("z#gaelanc6","GLOBAL",5)
GlobalGT("Z#Trial","GLOBAL",1)
InParty("Kova")
InMyArea("Kova")~ THEN ARAN congratsseida
@1185
EXTERN ARAN wonderseida

CHAIN
IF ~~ THEN ARAN wonderseida
@1186
END
IF ~GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN REPLY @1187 EXTERN Z#KOVAJ wonderseidayes
IF ~GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN REPLY @1188 EXTERN ARAN wonderseidahowmuch
IF ~~ THEN REPLY @1189 EXTERN ARAN wonderseidadunno

CHAIN
IF ~~ THEN ARAN wonderseidahowmuch
@1190
END
IF ~~ THEN REPLY @1191 EXTERN Z#KOVAJ wonderseidayes
IF ~CheckStatGT(Player1,15,CHR)~ THEN REPLY @1192 EXTERN ARAN wonderseidapay
IF ~CheckStatLT(Player1,16,CHR)~ THEN REPLY @1192 EXTERN ARAN wonderseidano
IF ~~ THEN REPLY @1193 EXTERN ARAN wonderseidano

CHAIN
IF ~~ THEN ARAN wonderseidapay
@1194
DO ~GiveGoldForce(500)~ EXTERN Z#KOVAJ wonderseidayes

CHAIN
IF ~~ THEN ARAN wonderseidadunno
@1195
EXTERN ARAN z#dunnoaboutseida

CHAIN
IF ~~ THEN ARAN wonderseidano
@1196
EXTERN ARAN z#dunnoaboutseida

CHAIN
IF ~~ THEN ARAN z#dunnoaboutseida
@1197
= @1198
= @1199
= @1200
= @1201
END
IF ~~ THEN REPLY @1202 EXTERN ARAN notgoingkillseida
IF ~~ THEN REPLY @1203 EXTERN ARAN whatnowseida
IF ~~ THEN REPLY @1204 EXTERN ARAN dirtyworkseida
IF ~~ THEN REPLY @1205 EXTERN ARAN favourseida

CHAIN
IF ~~ THEN ARAN notgoingkillseida
@1206
EXTERN ARAN nailseidanotfree

CHAIN
IF ~~ THEN ARAN whatnowseida
@1207
EXTERN ARAN nailseidanotfree

CHAIN
IF ~~ THEN ARAN dirtyworkseida
@1208
EXTERN ARAN nailseidanotfree

CHAIN
IF ~~ THEN ARAN favourseida
@1209
= @1210
= @1211
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN nailseidanotfree
@1212
DO ~SetGlobal("Z#Gaelanc6","GLOBAL",6)
AddJournalEntry(@5022,QUEST)~
== Z#KOVAJ @1213
== ARAN @1214
= @1215
== ARAN IF ~InParty("Edwin")~ THEN @1216
== ARAN IF ~OR(2) Dead("Gaelan") Dead("Arledrian")~ THEN @1217
== ARAN IF ~!Dead("Arledrian") !Dead("Gaelan")~ THEN @1218
END
IF ~PartyGoldGT(6999)~ THEN REPLY @1219 DO ~TakePartyGold(7000) DestroyGold(7000)~ EXTERN ARAN gomeetseidanotfree
IF ~~ THEN REPLY @1220 EXTERN ARAN hangonseida

CHAIN
IF ~~ THEN Z#KOVAJ wonderseidayes
@1221
= @1222
== ARAN @1223
== Z#KOVAJ @1224
== ARAN @1225
== Z#KOVAJ @1226
== ARAN @1227
== Z#KOVAJ @1228
== ARAN @1229
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1230
== ARAN @1231
= @1232
== Z#KOVAJ @1233
== ARAN @1234
= @1235
END
IF ~~ THEN REPLY @1202 EXTERN ARAN notgoingkillseidaf
IF ~~ THEN REPLY @1236 EXTERN ARAN whatnowseidaf
IF ~~ THEN REPLY @1204 EXTERN ARAN dirtyworkseidaf
IF ~~ THEN REPLY @1237 EXTERN ARAN nopaymentseidaf

CHAIN
IF ~~ THEN ARAN notgoingkillseidaf
@1206
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN whatnowseidaf
@1207
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN dirtyworkseidaf
@1238
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN nopaymentseidaf
@1239
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN nailseidaforfree
@1240
DO ~SetGlobal("Z#Gaelanc6","GLOBAL",7)~
== Z#KOVAJ @1213
== ARAN @1214
= @1241
== ARAN IF ~InParty("Edwin")~ THEN
@1216
== ARAN IF ~OR(2) Dead("Gaelan") Dead("Arledrian")~ THEN @1217
== ARAN IF ~!Dead("Arledrian") !Dead("Gaelan")~ THEN @1218
END
IF ~~ THEN REPLY @1242 EXTERN ARAN gomeetseidafree
IF ~~ THEN REPLY @1220 EXTERN ARAN hangonseida

CHAIN
IF ~~ THEN ARAN hangonseida
@1243
EXIT

CHAIN
IF ~~ THEN ARAN gomeetseidafree
@1244
= @1245
DO ~GiveItemCreate("Z#Rune",Player1,4,0,0) SetGlobal("z#gaelanc6","GLOBAL",8)
SetGlobal("Z#MeetingSeida","GLOBAL",1)~ EXIT

CHAIN
IF ~~ THEN ARAN gomeetseidanotfree
@1246
= @1245
DO ~GiveItemCreate("Z#Rune",Player1,2,0,0) SetGlobal("z#gaelanc6","GLOBAL",8)
SetGlobal("Z#MeetingSeida","GLOBAL",1)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("c6bodhi")
Global("Z#TrialClear","GLOBAL",0)
OR(2)
	Global("z#gaelanc6","GLOBAL",6) // notfree
	Global("z#gaelanc6","GLOBAL",7) // free
InParty("Kova")
InMyArea("Kova")~ THEN ARAN shallwegomeetseida
@1247
= @1248
END
IF ~Global("z#gaelanc6","GLOBAL",7)~ THEN REPLY @1249 EXTERN ARAN gomeetseidafree
IF ~Global("z#gaelanc6","GLOBAL",6)
PartyGoldGT(6999)~ THEN REPLY @1250
DO ~TakePartyGold(7000) DestroyGold(7000)~ EXTERN ARAN gomeetseidanotfree
IF ~~ THEN REPLY @1251 EXTERN ARAN hangonseida

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("c6bodhi")
!Global("Z#TrialClear","GLOBAL",0)
OR(2)
	Global("z#gaelanc6","GLOBAL",6) // notfree
	Global("z#gaelanc6","GLOBAL",7) // free
InParty("Kova")
InMyArea("Kova")~ THEN ARAN weshallnotmeetseida
@1252
= @1253
EXIT


/* ======= *
 *  Seida  *
 * ======= */
BEGIN Z#SEID16

// Aran Renal & Seida

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",2)
AreaCheck("Z#0041")~ THEN ARAN hiseida
@1254
== Z#SEID16 @1255
== ARAN @1256
== RENAL @1257
== Z#SEID16 @1258
== RENAL @1259
== Z#SEID16 @1260
= @1261
== ARAN @1262
= @1263
DO ~SetGlobal("Z#MeetingSeida","GLOBAL",3)
SetGlobal("Z#Player1MoveIn","Z#0041",1)
SetCutSceneLite(TRUE)
ActionOverride("Renal Bloodscalp",ReallyForceSpell(Myself,DRYAD_TELEPORT))
ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",3)
Global("Z#Player1MoveIn","Z#0041",2)
Allegiance(Myself,NEUTRAL)~ THEN Z#SEID16 hikovaseida
@1264
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1265
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1266
== Z#SEID16 @1267
= @1268
== Z#KOVAJ @1269
== Z#SEID16 @1270
END
IF ~~ THEN REPLY @1271 EXTERN Z#SEID16 getonwithit
IF ~~ THEN REPLY @1272 EXTERN Z#SEID16 kovaseidacatchup

CHAIN
IF ~~ THEN Z#SEID16 getonwithit
@1273
DO ~CreateCreatureOffScreen("Z#Assas3",0)
	CreateCreatureOffScreen("Z#Assas3",0)
	CreateCreatureOffScreen("Z#Assas3",0)
	CreateCreatureOffScreen("Z#Assas3",0)
	CreateCreatureOffScreen("Z#Assas3",0)
	CreateCreatureOffScreen("Z#Assas3",0)
SetCutSceneLite(FALSE)
SetGlobal("Z#SeidaAssas","Z#0041",1)
SetGlobal("Z#MeetingSeida","GLOBAL",4)
Enemy()~ EXIT

CHAIN
IF ~~ THEN Z#SEID16 kovaseidacatchup
@1274
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1275
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1276
== Z#SEID16 @1277
= @1278
== Z#KOVAJ @1279
= @1280
== Z#SEID16 @1281
= @1282
= @1283
= @1284
== Z#KOVAJ @1285
== Z#SEID16 @1286
= @1287
= @1288
= @1289
== Z#KOVAJ @1290
= @1291
= @1292
= @1293
= @1294
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1295
== Z#SEID16 @1296
= @1297
DO ~CreateCreatureOffScreen("Z#Assas3",0)
	CreateCreatureOffScreen("Z#Assas3",4)
	CreateCreatureOffScreen("Z#Assas3",8)
	CreateCreatureOffScreen("Z#Assas3",12)
	CreateCreatureOffScreen("Z#Assas3",6)
	CreateCreatureOffScreen("Z#Assas3",10)
SetCutSceneLite(FALSE)
SetGlobal("Z#SeidaAssas","Z#0041",1)
SetGlobal("Z#MeetingSeida","GLOBAL",4)
Enemy()~ EXIT


// Edwin joins Seida

CHAIN
IF WEIGHT #-1 ~InParty("Edwin")
// SpellCast("Edwin",WIZARD_SUN_FIRE)
Global("Z#EdwinBetray","Z#0041",2)~ THEN EDWINJ defecttoseida
@1298
END
IF ~~ THEN REPLY @1299 EXTERN EDWINJ nothreatseida
IF ~~ THEN REPLY @1300 EXTERN EDWINJ stupidseida

CHAIN
IF ~~ THEN EDWINJ nothreatseida
@1301
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
LeaveParty() SetGlobal("KickedOut","LOCALS",1)
Enemy()~ EXIT

CHAIN
IF ~~ THEN EDWINJ stupidseida
@1302
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
LeaveParty() SetGlobal("KickedOut","LOCALS",1)
Enemy()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",4)
Global("Z#EdwinAppear","Z#0041",1)
Global("Z#BribedEdwin","GLOBAL",0)~ THEN EDWINP edwseidanobribe
@1303
= @1304
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
Enemy()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",4)
Global("Z#EdwinAppear","Z#0041",1)
GlobalGT("Z#BribedEdwin","GLOBAL",0)~ THEN EDWINP edseida
@1305
DO ~ClearAllActions()~
END
IF ~!CheckStatGT(Player1,13,INT)
!CheckStatGT(Player1,13,WIS)
Global("Z#BribedEdwin","GLOBAL",1)~ THEN EXTERN EDWINP edseida2
IF ~Global("Z#BribedEdwin","GLOBAL",1)
OR(2)
CheckStatGT(Player1,13,INT)
CheckStatGT(Player1,13,WIS)~
THEN REPLY @1306 EXTERN EDWINP edseida3
IF ~CheckStatLT(Player1,16,CHR)
OR(2)
CheckStatGT(Player1,13,INT)
CheckStatGT(Player1,13,WIS)
Global("Z#BribedEdwin","GLOBAL",1)~ THEN REPLY @1307 EXTERN EDWINP edseida3
IF ~!CheckStatLT(Player1,16,CHR)
OR(2)
CheckStatGT(Player1,13,INT)
CheckStatGT(Player1,13,WIS)
Global("Z#BribedEdwin","GLOBAL",1)~ THEN REPLY @1307 EXTERN EDWINP edseida4
IF ~Global("Z#BribedEdwin","GLOBAL",2)~ THEN EXTERN EDWINP edseida1

CHAIN
IF ~~ THEN EDWINP edseida1
@1308
END
IF ~NumInPartyLT(6)~ THEN DO ~ReallyForceSpell("Z#Seid16",WIZARD_FLAME_ARROW)
SetGlobal("Z#BribedEdwin","GLOBAL",5)~ EXIT
IF ~!NumInPartyLT(6)~ THEN DO ~ApplySpell(Myself,WIZARD_SHADOW_DOOR)
Wait(2) MoveBetweenAreas("AR0406",[689.1127],0)
SetGlobal("Z#BribedEdwin","GLOBAL",6)
SetGlobalTimer("Z#SeidaWizardT","Z#0041",15)~ EXIT

CHAIN
IF WEIGHT #-1 ~!InParty("Edwin")
// SpellCast("Edwin",WIZARD_FLAME_ARROW)
Global("Z#BribedEdwin","GLOBAL",5)~ THEN Z#SEID16 edattackme
@1309
== EDWINP @1310
DO ~JoinParty() SetGlobal("KickedOut","LOCALS",0)~ EXIT

CHAIN
IF ~~ THEN EDWINP edseida2
@1308
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
Enemy()~ EXIT

CHAIN
IF ~~ THEN EDWINP edseida3
@1311
EXTERN EDWINP edseida2

CHAIN
IF ~~ THEN EDWINP edseida4
@1311
EXTERN EDWINP edseida1

CHAIN
IF WEIGHT #-1 ~Global("Z#BribedEdwin","GLOBAL",6)
Global("Z#EdwinAppear","Z#0041",1)
Global("Z#SeidaWizard","Z#0041",0)
GlobalTimerExpired("Z#SeidaWizardT","Z#0041")~ THEN Z#SEID16 edleaveme
@1312
= @1313
END
IF ~OR(3) Dead("Arledrian") Dead("Gaelan")
!GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN
DO ~CreateCreatureOffScreen("Z#CW18",0)
CreateCreatureOffScreen("Z#CW16",0)
SetGlobal("Z#SeidaWizard","Z#0041",1)~ EXIT
IF ~!Dead("Arledrian") !Dead("Gaelan")
GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN EXTERN Z#SEID16 nocowlie

CHAIN
IF ~~ THEN Z#SEID16 nocowlie
@1314
DO ~SetGlobal("Z#SeidaWizard","Z#0041",2)
CreateCreatureOffScreen("Z#Mage2",0)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#EdwinAppear","Z#0041",1)
Dead("Edwin")
Global("Z#SeidaWizard","Z#0041",0)~ THEN Z#SEID16 edwindead
@1315
= @1316
END
IF ~OR(3) Dead("Arledrian") Dead("Gaelan")
!GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN
DO ~CreateCreatureOffScreen("Z#CW18",0)
CreateCreatureOffScreen("Z#CW16",0)
SetGlobal("Z#SeidaWizard","Z#0041",1)~ EXIT
IF ~!Dead("Arledrian") !Dead("Gaelan")
GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN EXTERN Z#SEID16 nocowlie

CHAIN
IF WEIGHT #-1 ~Global("Z#EdwinAppear","Z#0041",0)
Dead("Edwin")
Global("Z#SeidaWizard","Z#0041",0)~ THEN Z#SEID16 edwindead
@1317
= @1318
END
IF ~OR(3) Dead("Arledrian") Dead("Gaelan")
!GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN
DO ~CreateCreatureOffScreen("Z#CW18",0)
CreateCreatureOffScreen("Z#CW16",0)
SetGlobal("Z#SeidaWizard","Z#0041",1)~ EXIT
IF ~!Dead("Arledrian") !Dead("Gaelan")
GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN EXTERN Z#SEID16 nocowlie

// KK Break before case

CHAIN
IF WEIGHT #-1 ~GlobalGT("Break","LOCALS",6)
InParty("Kiyone")
InParty(Myself)~ THEN Z#KOVAJ kovabreak
@1319
= @1320
DO ~LeaveParty() DropInventory() EscapeArea()~
== Z#KIYOJ @1321
= @1322
DO ~LeaveParty() DropInventory() EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~GlobalGT("Break","LOCALS",6)
InParty("Kova")
InParty(Myself)~ THEN Z#KIYOJ kiyobreak
@1323
= @1324
= @1325
DO ~LeaveParty() DropInventory() EscapeArea()~
== Z#KOVAJ @1326
= @1327
DO ~LeaveParty() DropInventory() EscapeArea()~ EXIT


// Post Fighting Seida

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",0)
AreaCheck("Z#0041")~ THEN HABREGA shallwego
@1328
DO ~SetGlobal("BregaIn","Z#0041",1)~
== Z#MESSEN @1329
== HABREGA @1330
DO ~SetCutSceneLite(TRUE)
ActionOverride("Z#Kni1",MoveToObjectFollow("HABREGA"))
ActionOverride("Z#Kni2",MoveToObjectFollow("HABREGA"))
ActionOverride("Z#Kni3",MoveToObjectFollow("Z#MESSEN"))
ActionOverride("Z#Kni4",MoveToObjectFollow("Z#MESSEN"))
ActionOverride("Z#MESSEN",MoveToObject(Player1))
MoveToObject(Player1)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",1)
Detect([PC])
AreaCheck("Z#0041")~ THEN Z#MESSEN shallwego
@1331
DO ~SetGlobal("BregaIn","Z#0041",2)~
== HABREGA IF ~OR(2)
!InPartyAllowDead("Kova")
!InPartyAllowDead("Kiyone")~ THEN @1332
== Z#MESSEN IF ~InParty("Kiyone") InPartyAllowDead("Kova")~ THEN @1333
== Z#KIYOJ IF ~InParty("Kiyone") InPartyAllowDead("Kova")~ THEN @1334
== HABREGA @1335
= @1336
== Z#MESSEN @1337
= @1338
DO ~SetCutSceneLite(TRUE)
MoveToObject("Z#Seid16")
RealSetGlobalTimer("BregaSeeSeidaT","Z#0041",1)~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",2)
RealGlobalTimerExpired("BregaSeeSeidaT","Z#0041")
AreaCheck("Z#0041")~ THEN HABREGA seeseida
@1339
END
IF ~~ THEN REPLY @1340 EXTERN HABREGA seidareason
IF ~~ THEN REPLY @1341 EXTERN HABREGA seidacustody
IF ~~ THEN REPLY @1342 EXTERN HABREGA seidacustody
IF ~~ THEN REPLY @1343 EXTERN HABREGA seidakill

CHAIN
IF ~~ THEN HABREGA seidakill
@1344
DO ~ActionOverride("Z#Kni1",MoveToObject("Z#Seid16")) SetGlobal("BregaIn","Z#0041",3)
ChangeEnemyAlly("Z#MESSEN",NEUTRAL)
ActionOverride("Z#Kni2",MoveToObject("Z#Seid16"))~
= @1345
DO ~SetCutSceneLite(FALSE)
AddJournalEntry(@5023,QUEST)~ EXIT

CHAIN
IF ~~ THEN HABREGA seidareason
@1346
= @1347
DO ~ActionOverride("Z#Kni1",MoveToObject("Z#Seid16")) SetGlobal("BregaIn","Z#0041",3)
ChangeEnemyAlly("Z#MESSEN",NEUTRAL)
ActionOverride("Z#Kni2",MoveToObject("Z#Seid16"))~
= @1345
DO ~SetCutSceneLite(FALSE)
AddJournalEntry(@5023,QUEST)~ EXIT

CHAIN
IF ~~ THEN HABREGA seidacustody
@1348
DO ~ActionOverride("Z#Kni1",MoveToObject("Z#Seid16")) SetGlobal("BregaIn","Z#0041",3)
ChangeEnemyAlly("Z#MESSEN",NEUTRAL)
ActionOverride("Z#Kni2",MoveToObject("Z#Seid16"))~
= @1345
DO ~SetCutSceneLite(FALSE)
AddJournalEntry(@5023,QUEST)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",3)
AreaCheck("Z#0041")~ THEN HABREGA shallwego
@1349
END
IF ~InParty("Kiyone") InParty("Kova")~ THEN REPLY @1350 EXTERN HABREGA shallwegoyes
IF ~OR(2) !InPartyAllowDead("Kiyone") !InPartyAllowDead("Kova")~ THEN REPLY @1350 EXTERN HABREGA shallwegoyesnokk
IF ~~ THEN REPLY @1351 EXTERN HABREGA shallwegono

CHAIN
IF ~~ THEN HABREGA shallwegono
@1352
EXIT

CHAIN
IF ~~ THEN HABREGA shallwegoyesnokk
@1353
= @1354
DO ~ActionOverride("Z#MESSEN",DestroyAllEquipment())
ActionOverride("Z#MESSEN",DestroySelf())
AddExperienceParty(20000)
ReputationInc(1)
// change
ActionOverride(Player1,LeaveAreaLUA("Z#1002","",[840.760],9))
ActionOverride(Player2,LeaveAreaLUA("Z#1002","",[720.730],12))
ActionOverride(Player3,LeaveAreaLUA("Z#1002","",[765.765],10))
ActionOverride(Player4,LeaveAreaLUA("Z#1002","",[820.805],8))
ActionOverride(Player5,LeaveAreaLUA("Z#1002","",[740.750],11))
ActionOverride(Player6,LeaveAreaLUA("Z#1002","",[795.785],9))
DestroySelf()~ EXIT

CHAIN
IF ~~ THEN HABREGA shallwegoyes
@1353
DO ~ActionOverride("Z#MESSEN",DestroyAllEquipment())
ActionOverride("Z#MESSEN",DestroySelf())
SetGlobal("Z#ForceTrial","GLOBAL",0)
ActionOverride(Player1,LeaveAreaLUA("Z#1002","",[840.760],9))
ActionOverride(Player2,LeaveAreaLUA("Z#1002","",[720.730],12))
ActionOverride(Player3,LeaveAreaLUA("Z#1002","",[765.765],10))
ActionOverride(Player4,LeaveAreaLUA("Z#1002","",[820.805],8))
ActionOverride(Player5,LeaveAreaLUA("Z#1002","",[740.750],11))
ActionOverride(Player6,LeaveAreaLUA("Z#1002","",[795.785],9))
DestroySelf()~
EXIT

// on entering Elhan Area with Lanthorn

// if Kiyone dead

CHAIN
IF ~PartyHasItem("C6LANTHO") // Rhynn Lanthorn
AreaCheck("AR2500")
Global("Z#TrialClear","GLOBAL",0)
InParty(Myself)
!InParty("Kiyone")~ THEN Z#KOVAJ amgoingtogoresurrectkiyo
@1355
= @1356
= @1357
= @1358
DO ~LeaveParty() DropInventory() SetGlobal("KovaJoined","LOCALS",0) EscapeArea()
ActionOverride("Kiyone",LeaveParty()) ActionOverride("Kiyone",DestroySelf())~ EXIT

// if Kiyone alive

CHAIN
IF ~PartyHasItem("C6LANTHO") // Rhynn Lanthorn
AreaCheck("AR2500")
Global("Z#TrialClear","GLOBAL",0)
InParty(Myself)
OR(3)
!GlobalGT("JermClue","GLOBAL",0)
!GlobalGT("LOAClue","GLOBAL",0)
!GlobalGT("DayvClue","GLOBAL",0)~ THEN Z#KIYOJ gottagonotcomingback
@1359
= @1360
= @1361
END
IF ~InMyArea("Kova") InParty("Kova")~ THEN DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",1) EscapeArea()~ EXTERN Z#KOVAJ gottagonotcomingback
IF ~!InParty("Kova")~ THEN DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",0) EscapeArea() ActionOverride("Kova",LeaveParty()) ActionOverride("Kova",DestroySelf())~ EXIT

CHAIN
IF ~~ THEN Z#KOVAJ gottagonotcomingback
@1362
= @1363
END
IF ~OR(3)
!GlobalGT("JermClue","GLOBAL",0)
!GlobalGT("LOAClue","GLOBAL",0)
!GlobalGT("DayvClue","GLOBAL",0)~ THEN DO ~LeaveParty() DropInventory() SetGlobal("KovaJoined","LOCALS",0) EscapeArea()~ EXIT
IF ~GlobalGT("JermClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)
GlobalGT("DayvClue","GLOBAL",0)~ THEN DO ~LeaveParty() DropInventory()
ReputationInc(1) SetGlobal("KovaJoined","LOCALS",0) EscapeArea()~ EXIT

CHAIN
IF ~PartyHasItem("C6LANTHO") // Rhynn Lanthorn
AreaCheck("AR2500")
Global("Z#TrialClear","GLOBAL",0)
InParty(Myself)
OR(2)
	!GlobalGT("MetKharen","GLOBAL",0)
	!InParty("Kova")
GlobalGT("JermClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)
GlobalGT("DayvClue","GLOBAL",0)~ THEN Z#KIYOJ gottagonokharen
@1364
= @1365
= @1366
= @1367
END
IF ~InMyArea("Kova") InParty("Kova")~ THEN
DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",1) EscapeArea()~ EXTERN Z#KOVAJ gottagonotcomingback
IF ~!InParty("Kova")~ THEN DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",0) EscapeArea() ActionOverride("Kova",LeaveParty()) ReputationInc(1) ActionOverride("Kova",DestroySelf())~ EXIT

// if Kiyone and Kova both alive and going back for trial

CHAIN
IF ~PartyHasItem("C6LANTHO") // Rhynn Lanthorn
AreaCheck("AR2500")
Global("Z#TrialClear","GLOBAL",0)
InParty(Myself)
InParty("Kova")
GlobalGT("MetKharen","GLOBAL",0)
GlobalGT("JermClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)
GlobalGT("DayvClue","GLOBAL",0)~ THEN Z#KIYOJ gottago
@1368
= @1369
== Z#KOVAJ @1370
= @1371
== Z#KIYOJ @1372
= @1373
= @1374
END
IF ~~ THEN REPLY @1375 EXTERN Z#KIYOJ gottago2
IF ~~ THEN REPLY @1376 EXTERN Z#KIYOJ backtoathkgd
IF ~~ THEN REPLY @1377 EXTERN Z#KIYOJ thanksweleave
IF ~~ THEN REPLY @1378 EXTERN Z#KIYOJ backtoathk
IF ~~ THEN REPLY @1379 DO ~IncrementGlobal("Break","LOCALS",1) ActionOverride("Kova",IncrementGlobal("Break","LOCALS",1))~ EXTERN Z#KIYOJ nowweleave

CHAIN
IF ~~ THEN Z#KIYOJ gottago2
@1380
== Z#KOVAJ @1381
= @1382
= @1383
= @1384
== Z#KIYOJ @1385
END
IF ~~ THEN REPLY @1386 EXTERN Z#KIYOJ backtoathkgd
IF ~~ THEN REPLY @1387 EXTERN Z#KIYOJ thanksweleave
IF ~~ THEN REPLY @1378 EXTERN Z#KIYOJ backtoathk
IF ~~ THEN REPLY @1379 DO ~IncrementGlobal("Break","LOCALS",1) ActionOverride("Kova",IncrementGlobal("Break","LOCALS",1))~ EXTERN Z#KIYOJ nowweleave

CHAIN
IF ~~ THEN Z#KIYOJ backtoathkgd
@1388
DO ~SetGlobal("Z#ForceTrial","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[510.640],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[495.910],10))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[535.930],10))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[525.980],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[490.950],10))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[445.925],10))~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ backtoathk
@1389
DO ~SetGlobal("Z#ForceTrial","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[510.640],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[495.910],10))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[535.930],10))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[525.980],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[490.950],10))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[445.925],10))~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ thanksweleave
@1390
EXTERN Z#KIYOJ nowweleave

CHAIN
IF ~~ THEN Z#KIYOJ nowweleave
@1391
DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",0) EscapeAreaMove("Z#0041",1100,0,8)~
== Z#KOVAJ @1392
DO ~LeaveParty() DropInventory() SetGlobal("KovaJoined","LOCALS",0) EscapeAreaMove("Z#0041",1150,0,8)
SetGlobal("Z#KKLeftForTrial","GLOBAL",1)~ EXIT

// ForceTrial

CHAIN
IF ~Global("Z#ForceTrial","GLOBAL",2)~ THEN Z#KIYOJ Z#TalkB4Trial
@1393
EXTERN BYLANNA Z#TalkB4Trial

CHAIN
IF ~~ THEN BYLANNA Z#TalkB4Trial
@1394
EXTERN BYLANNA StartTrialForce
// DO ~SetCutSceneLite(TRUE)
// SetGlobal("Z#ForceTrial","GLOBAL",1)~ EXIT

CHAIN
IF ~~ THEN BYLANNA StartTrialForce
@1395
= @1396
DO ~SetCutSceneLite(FALSE)
SetGlobal("Z#ForceTrial","GLOBAL",0)~
== Z#KIYOJ @1397
== BYLANNA @1398
END
IF ~!GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY @1399 EXTERN BYLANNA forcetrial
IF ~!GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY @1400 EXTERN BYLANNA forcetrial
IF ~GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY @1399 EXTERN BYLANNA gomyro
IF ~GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY @1400 EXTERN BYLANNA gomyro
IF ~~ THEN REPLY @1401 EXTERN BYLANNA findmoreclues

CHAIN
IF ~~ THEN BYLANNA gomyro
@1402
= @1403
DO ~SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",150) // 0.5 hours
SetGlobal("Z#BaevrinPlot","GLOBAL",1)~
== Z#KIYOJ @1404
== BYLANNA @1405
== Z#KIYOJ @893
EXIT

CHAIN
IF ~~ THEN BYLANNA findmoreclues
@1406
== BYLANNA IF ~GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN
@1407
DO ~SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",150) // 0.5 hours
SetGlobal("Z#BaevrinPlot","GLOBAL",1)~
== Z#KIYOJ @1408
== BYLANNA @1409
== Z#KIYOJ @893
EXIT

CHAIN
IF ~~ THEN BYLANNA forcetrial
@1410
= @1411
== Z#KIYOJ @1412
== BYLANNA @1413
= @1414
= @1415
== Z#KIYOJ @1416
== BYLANNA @1417
== Z#KIYOJ @1418
== BYLANNA @1419
END
IF ~~ THEN REPLY @1420 EXTERN BYLANNA bylcondemninnocent
IF ~~ THEN REPLY @1421 EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY @1422 EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY @1423 EXTERN BYLANNA byldoesnotknow

CHAIN
IF ~~ THEN BYLANNA bylcondemninnocent
@1424
END
IF ~~ THEN REPLY @1421 EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY @1422 EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY @1423 EXTERN BYLANNA byldoesnotknow

CHAIN
IF ~~ THEN BYLANNA byldoesnotknow
@1425
END
IF ~~ THEN REPLY @1426 EXTERN BYLANNA bylbye
IF ~~ THEN REPLY @1427 EXTERN BYLANNA bylbeyondthelaw

CHAIN
IF ~~ THEN BYLANNA bylbye
@1428
EXIT

CHAIN
IF ~~ THEN BYLANNA bylbeyondthelaw
@1429
== Z#KIYOJ @1430
== BYLANNA @1431
== Z#KIYOJ @1432
== BYLANNA @1433
END
IF ~~ THEN REPLY @1434 EXTERN BYLANNA bylexplainoptions
IF ~~ THEN REPLY @1435 EXTERN BYLANNA bylexplainoptions
IF ~~ THEN REPLY @1436 EXTERN BYLANNA bylexplainoptions
IF ~~ THEN REPLY @1437 EXTERN BYLANNA byljustaskgold

CHAIN
IF ~~ THEN BYLANNA byljustaskgold
@1438
= @1439
== Z#KIYOJ @1440
== BYLANNA @1441
= @1442
= @1443
END
IF ~PartyGoldGT(9999)~ THEN REPLY @1444 DO ~TakePartyGold(10000) DestroyGold(10000)~ EXTERN BYLANNA byltakesbribe
IF ~PartyGoldGT(9999)~ THEN REPLY @1445 DO ~TakePartyGold(10000) DestroyGold(10000)~ EXTERN BYLANNA byltakesbribe
IF ~!PartyGoldGT(9999)~ THEN REPLY @1446 EXTERN BYLANNA bylnopartschemes
IF ~~ THEN REPLY @1447 EXTERN BYLANNA bylnopartschemes

CHAIN
IF ~~ THEN BYLANNA bylexplainoptions
@1448
== Z#KIYOJ @1449
== BYLANNA @1450
== Z#KIYOJ @1451
== BYLANNA @1452
== Z#KIYOJ @1453
== BYLANNA @1454
== Z#KIYOJ @1455
== BYLANNA @1456
== Z#KIYOJ @1457
== BYLANNA @1458
== Z#KIYOJ @1459
== BYLANNA @1460
== Z#KIYOJ @1461
== BYLANNA @1462
== Z#KIYOJ @1463
== BYLANNA @1464
= @1465
== Z#KIYOJ @1466
== BYLANNA @1467
= @1468
== Z#KIYOJ @1469
== BYLANNA @1470
== Z#KIYOJ @1471
== BYLANNA @1472
== Z#KIYOJ @1473
== BYLANNA @1474
= @1475
END
IF ~PartyGoldGT(9999)~ THEN REPLY @1444 DO ~TakePartyGold(10000) DestroyGold(10000)~ EXTERN BYLANNA byltakesbribe
IF ~PartyGoldGT(9999)~ THEN REPLY @1445 DO ~TakePartyGold(10000) DestroyGold(10000)~ EXTERN BYLANNA byltakesbribe
IF ~!PartyGoldGT(9999)~ THEN REPLY @1446 EXTERN BYLANNA bylnopartschemes
IF ~~ THEN REPLY @1447 EXTERN BYLANNA bylnopartschemes

CHAIN
IF ~~ THEN BYLANNA byltakesbribe
@1476
= @1477
DO ~SetGlobal("Z#BribedByl","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUA("Z#1002","",[840.760],9))
ActionOverride(Player2,LeaveAreaLUA("Z#1002","",[720.730],12))
ActionOverride(Player3,LeaveAreaLUA("Z#1002","",[765.765],10))
ActionOverride(Player4,LeaveAreaLUA("Z#1002","",[820.805],8))
ActionOverride(Player5,LeaveAreaLUA("Z#1002","",[740.750],11))
ActionOverride(Player6,LeaveAreaLUA("Z#1002","",[795.785],9))~ EXIT

CHAIN
IF ~~ THEN BYLANNA bylnopartschemes
@1478
= @1479
== Z#KIYOJ @1480
== BYLANNA @1481
= @1482
DO ~ActionOverride(Player1,LeaveAreaLUA("Z#1002","",[840.760],9))
ActionOverride(Player2,LeaveAreaLUA("Z#1002","",[720.730],12))
ActionOverride(Player3,LeaveAreaLUA("Z#1002","",[765.765],10))
ActionOverride(Player4,LeaveAreaLUA("Z#1002","",[820.805],8))
ActionOverride(Player5,LeaveAreaLUA("Z#1002","",[740.750],11))
ActionOverride(Player6,LeaveAreaLUA("Z#1002","",[795.785],9))~ EXIT


// Z#TrialClear values -
// 1 - imprisoned
// 2 - free
// 3 - acquitted
// Bylanna Starts Trial

BEGIN Z#NOB1
BEGIN Z#NOB2
BEGIN Z#NOB3

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1002")
Global("Created","Z#1002",2)
Global("Z#NoblesLeft","Z#1002",0)~ THEN BYLANNA Z#TrialBegins
@1483
END
IF ~!Dead("Baevrin") GlobalGT("Z#BaevrinPlot","GLOBAL",22)~ THEN EXTERN BYLANNA Z#ShanroClear
IF ~Dead("Baevrin") !GlobalGT("Z#BaevrinPlot","GLOBAL",22)~ THEN EXTERN BYLANNA Z#ShanroBaevDead
IF ~!Dead("Baevrin") !GlobalGT("Z#BaevrinPlot","GLOBAL",22)~ THEN EXTERN BYLANNA Z#ShanroNotClear

CHAIN
IF ~~ THEN BYLANNA Z#ShanroClear
@1484
= @1485
= @1486
END
IF ~Global("Z#MeetingSeida","GLOBAL",6)~ THEN EXTERN BYLANNA Z#TrialAllClear
IF ~!Global("Z#MeetingSeida","GLOBAL",6)~ THEN EXTERN BYLANNA Z#CowlClear

CHAIN
IF ~~ THEN BYLANNA Z#ShanroBaevDead
@1484
= @1487
= @1488
= @1489
EXTERN BYLANNA Z#CowlClear

// this following block should almost never be executed

CHAIN
IF ~~ THEN BYLANNA Z#ShanroNotClear
@1484
== BYLANNA @1490
EXTERN BYLANNA Z#CowlClear

CHAIN
IF ~~ THEN BYLANNA Z#CowlClear
@1491
= @1492
= @1493
= @1494
= @1495
== Corneil @1496
== BYLANNA @1497
== Corneil @1498
== BYLANNA @1499
== Corneil @1500
== BYLANNA @1501
== Corneil @1502
END
IF ~Global("Z#BribedByl","GLOBAL",1)~ THEN EXTERN BYLANNA Z#BribeBylClear
IF ~!Global("Z#BribedByl","GLOBAL",1)~ THEN EXTERN BYLANNA Z#NoBribeBylCondemn

// Not Bribe Byl

CHAIN
IF ~~ THEN BYLANNA Z#NoBribeBylCondemn
@1503
= @1504
== Z#Nob3 @1505
== Z#Nob1 @1506
== BYLANNA @1507
== Z#Nob2 @1508
== BYLANNA @1509
== Z#Nob3 @1510
== BYLANNA @1511
== Z#Nob2 @1512
DO ~EscapeArea()~
== Z#Nob1 @1513
DO ~EscapeArea()~
== Z#Nob3 @1514
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#TrialClear","GLOBAL",1)
SetGlobal("Z#NoblesLeft","Z#1002",1)
RealSetGlobalTimer("Z#NoblesLeftT","Z#1002",1)
EscapeArea()~ EXTERN Z#KOVAJ Z#BidFarewell

CHAIN
IF ~~ THEN Z#KOVAJ Z#BidFarewell
@1515
== BYLANNA @1516
DO ~CreateCreature("Z#Kni2ok",[905.590],1)
CreateCreature("Z#Kni1ok",[1005.645],3)
ActionOverride("Z#Kni1",MoveToObject("Kova"))
ActionOverride("Z#Kni2",MoveToObject("Kova"))~
== Z#KOVAJ @1517
== Z#KIYOJ @1518
== Z#KOVAJ @1519
== Z#KIYOJ @1520
== Z#KOVAJ @1521
DO ~SetGlobal("KovaJoined","LOCALS",0)
GivePartyAllEquipment() LeaveParty() SetGlobal("KKJoin","GLOBAL",0)~
== Z#KIYOJ @1522
= @1523
DO ~GivePartyAllEquipment() LeaveParty()
SetGlobal("KiyoJoined","LOCALS",0)
GiveItemCreate("KiyoArm1",Myself,1,0,0)
GiveItemCreate("KiyoBow1",Myself,1,0,0)
EquipItem("KiyoBow1")
EquipItem("KiyoArm1")
AddexperienceParty(24000)
ReputationInc(1)
AddJournalEntry(@5040,QUEST_DONE)
SetCutSceneLite(TRUE)
MoveToObject("Kova")~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR1005")
Global("Z#TrialClear","GLOBAL",1)~ THEN Z#KIYOP whatyoudoinginprison
@1524
== Z#KOVAP @1525
== Z#KIYOP @1526
= @1527
END
IF ~~ THEN REPLY @1528 GOTO whystayprison
IF ~~ THEN REPLY @1529 GOTO prisjoinus
IF ~~ THEN REPLY @1530 GOTO byefromprison

CHAIN
IF ~~ THEN Z#KIYOP whystayprison
@1531
DO ~SetGlobal("Z#Kiyosaywhyprison","AR1005",1)~
END
IF ~~ THEN REPLY @1532 GOTO prisonattackready
IF ~~ THEN REPLY @1533 GOTO prisonattackready
IF ~~ THEN REPLY @1534 GOTO prisonattackready
IF ~~ THEN REPLY @1535 GOTO prisonifattacknevercome

CHAIN
IF ~~ THEN Z#KIYOP prisonattackready
@1536
= @1537
END
IF ~~ THEN REPLY @1538 GOTO byefromprison
IF ~~ THEN REPLY @1535 GOTO prisonifattacknevercome

CHAIN
IF ~~ THEN Z#KIYOP prisonifattacknevercome
@1539
= @1540
= @1541
EXIT

CHAIN
IF ~~ THEN Z#KIYOP prisjoinus
@1542
EXTERN Z#KIYOP whystayprison

CHAIN
IF ~~ THEN Z#KIYOP byefromprison
@1543
= @1544
EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR1005")
Global("Z#TrialClear","GLOBAL",1)~ THEN Z#KOVAP whatyoudoinginprison
@1545
= @1546
= @1547
== Z#KIYOP @1548
== Z#KOVAP @1549
= @1550
END
IF ~~ THEN REPLY @1551 GOTO priskvfree
IF ~~ THEN REPLY @1552 GOTO priskvfree
IF ~Global("Z#Kiyosaywhyprison","AR1005",1)~ THEN REPLY @1553 GOTO priskvonattacks

CHAIN
IF ~~ THEN Z#KOVAP priskvfree
@1554
= @1555
= @1556
EXTERN Z#KOVAP prisamdone

CHAIN
IF ~~ THEN Z#KOVAP priskvonattacks
@1557
= @1558
END
IF ~~ THEN REPLY @1559 GOTO priskvonexec
IF ~~ THEN REPLY @1560 GOTO priskvonattacks2

CHAIN
IF ~~ THEN Z#KOVAP priskvonattacks2
@1561
= @1562
EXTERN Z#KOVAP prisamdone

CHAIN
IF ~~ THEN Z#KOVAP priskvonexec
@1563
= @1564
EXTERN Z#KOVAP prisamdone

CHAIN
IF ~~ THEN Z#KOVAP prisamdone
@1565
= @1566
EXIT

EXTEND_BOTTOM PRISONK1 0
IF ~InMyArea("Kiyone") InMyArea("Kova") Global("Z#TrialClear","GLOBAL",1)
!InParty("Kiyone") !InParty("Kova") Global("Z#KKLeavePrison","AR1005",0)~ THEN REPLY @1567 EXTERN PRISONK1 kkareinprison
IF ~!InMyArea("Kiyone") !InMyArea("Kova") Global("Z#TrialClear","GLOBAL",1)
!InParty("Kiyone") !InParty("Kova") Global("Z#KKLeavePrison","AR1005",1)~ THEN REPLY @1568 EXTERN PRISONK1 kkarenolongerinprison
IF ~GlobalGT("Z#TrialClear","GLOBAL",2) !GlobalTimerExpired("Z#Part7Timer","GLOBAL")~ THEN REPLY @1569 EXTERN PRISONK1 seidacaptive
IF ~GlobalGT("Z#TrialClear","GLOBAL",2) GlobalTimerExpired("Z#Part7Timer","GLOBAL")~ THEN REPLY @1569 EXTERN PRISONK1 seidaescaped
END

CHAIN
IF ~~ THEN PRISONK1 seidaescaped
@1570
= @1571
EXIT

CHAIN
IF ~~ THEN PRISONK1 kkareinprison
@1572
= @1573
EXIT

CHAIN
IF ~~ THEN PRISONK1 kkarenolongerinprison
@1574
= @1575
= @1576
EXIT

// Bribe Byl Clear

CHAIN
IF ~~ THEN BYLANNA Z#BribeBylClear
@1503
= @1577
== Z#Nob3 @1578
== Z#Nob1 @1579
== BYLANNA @1580
= @1581
== Z#Nob1 @1582
== Z#Nob2 @1583
== Z#Nob3 @1584
== BYLANNA @1585
== Z#Nob1 @1586
== Z#Nob2 @1587
== BYLANNA @1588
== Z#Nob1 @1589
== Z#Nob3 @1590
== BYLANNA @1591
== Z#Nob2 @1592
== BYLANNA @1593
= @1594
== Z#Nob3 @1595
DO ~EscapeArea()~
== Z#Nob1 @1512
DO ~EscapeArea()~
== Z#Nob2 @1596
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#NoblesLeft","Z#1002",1)
SetGlobal("Z#TrialClear","GLOBAL",2)
RealSetGlobalTimer("Z#NoblesLeftT","Z#1002",1)
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1002")
Global("Z#TrialClear","GLOBAL",2)
Global("Z#ByePostBribe","Z#1002",0)
Global("Z#NoblesLeft","Z#1002",1)~ THEN BYLANNA Z#BylBribeFreeToGo
@1597
== Z#KIYOJ @1598
DO ~AddexperienceParty(36000)
SetGlobal("Z#ByePostBribe","Z#1002",1)
AddJournalEntry(@5041,QUEST_DONE)
ReputationInc(1)~ EXIT

CHAIN
IF ~AreaCheck("AR1000")
Global("Z#KiyoneComplainBylBribe","LOCALS",0)
Global("Z#TrialClear","GLOBAL",2)~ THEN Z#KIYOJ GetBackAtByl
@1599
DO ~SetGlobal("Z#KiyoneComplainBylBribe","LOCALS",1)~
== Z#KOVAJ @1600
== Z#KIYOJ @1601
== Z#KOVAJ @1602
== Z#KIYOJ @1603
== Z#KOVAJ @1604
== Z#KIYOJ @1605
== Z#KOVAJ @1606
== Z#KIYOJ IF ~Dead("Z#MESSEN")~ THEN @1607
== Z#KIYOJ IF ~!Dead("Z#MESSEN")~ THEN @1608
= @1609
EXIT

// Trial All Clear

CHAIN
IF ~~ THEN BYLANNA Z#TrialAllClear
@1503
= @1610
= @1611
= @1581
== Z#Nob3 @1582
== Z#Nob1 @1579
== Z#Nob2 @1612
== Z#Nob3 @1613
== BYLANNA @1614
== Z#Nob1 @1615
== Z#Nob2 @1616
== BYLANNA @1617
== Z#Nob3 @1590
== BYLANNA @1591
== Z#Nob2 @1592
== Z#Nob1 @1618
== BYLANNA @1593
= @1594
== Z#Nob3 @1595
DO ~EscapeArea()~
== Z#Nob1 @1512
DO ~EscapeArea()~
== Z#Nob2 @1596
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#NoblesLeft","Z#1002",1)
SetGlobalTimer("Z#Part7Timer","GLOBAL",TWO_DAYS)
SetGlobal("Z#TrialClear","GLOBAL",3)
RealSetGlobalTimer("Z#NoblesLeftT","Z#1002",2)
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1002")
Global("Z#TrialClear","GLOBAL",3)
Global("Z#NoblesLeft","Z#1002",1)
RealGlobalTimerExpired("Z#NoblesLeftT","Z#1002")~ THEN BYLANNA Z#TrialNoblesLeft
@1619
DO ~SetGlobal("Z#NoblesLeft","Z#1002",2)~
= @1620
== BYLANNA @1492
= @1493
== BYLANNA @1494
== BYLANNA @1495
== Corneil @1496
== BYLANNA @1497
== Corneil @1498
== BYLANNA @1499
== Corneil @1500
== BYLANNA @1621
== Corneil @1502
== BYLANNA @1622
= @1623
= @1624
= @1625
= @1626
DO ~SetCutSceneLite(TRUE)
PlaySound("kktrialc") PlaySong(0)
AddexperienceParty(48000)
ReputationInc(1)
AddJournalEntry(@5042,QUEST_DONE)
RealSetGlobalTimer("Z#NoblesLeftT","Z#1002",2) // (move to AR1002)
SetGlobal("Z#TrialClear","GLOBAL",4)~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1002")
RealGlobalTimerExpired("Z#NoblesLeftT","Z#1002")
Global("Z#TrialClear","GLOBAL",4)~ THEN BYLANNA Z#PostAcquittal
@1627
DO ~SetGlobal("Z#TrialClear","GLOBAL",5)~
== Z#MESSEN @1628
== BYLANNA @1629
= @1630
== Z#KIYOJ @1631
== BYLANNA @1632
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN @1633
== Z#KIYOJ IF ~!GlobalGT("KKRomance","GLOBAL",1)~ THEN @1634
== Z#KOVAJ @1635
== Z#KIYOJ @1636
== Z#KOVAJ @1637
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN @1638
== BYLANNA @1639
== Z#MESSEN @1640
EXIT

CHAIN
IF ~GlobalGT("Z#TrialClear","GLOBAL",2)
Global("Z#postfullacquit","LOCALS",0)
AreaCheck("AR1000")~ THEN Z#KOVAJ Z#postfullacquit
@1641
DO ~SetGlobal("Z#postfullacquit","LOCALS",1)
PlaySound("kktrialc") PlaySong(0)~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")~ THEN @1642
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Global("AnomenIsKnight","GLOBAL",1)~ THEN @1643
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") Global("AnomenIsKnight","GLOBAL",1)~ THEN @1644
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN @1645
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy")~ THEN @1646
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN @1647
= @1648
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN @1649
= @1650
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")~ THEN @1651
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN @1652
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN @1653
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis")~ THEN @1654
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN @1655
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN @1656
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN @1657
== Z#KOVAJ @1658
== Z#KIYOJ @1659
== Z#KOVAJ @1660
== Z#KIYOJ @1661
== Z#KOVAJ @1662
== Z#KIYOJ @1663
= @1664
== Z#KOVAJ @1665
== Z#KIYOJ @1666
== Z#KOVAJ @1667
== Z#KIYOJ @1668
== Z#KOVAJ @1669
= @1670
== Z#KIYOJ @1671
== Z#KOVAJ IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN @1672
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN @1673
EXIT

// BTL Part 7

CHAIN
IF ~~ THEN PRISONK1 seidacaptive
@1674
= @1675
= @1676
DO ~SetGlobal("Z#BTLPart7","GLOBAL",1)~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR1005")
!GlobalTimerExpired("Z#Part7Timer","GLOBAL")
Global("Dayven","GLOBAL",13)
Global("Z#BTLPart7","GLOBAL",1)~ THEN DAYVEN youlookingseida
@1677
DO ~SetGlobal("Z#BTLPart7","GLOBAL",2)~
= @1678
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1679
== DAYVEN IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN @1680
== DAYVEN @1681
END
IF ~OR(2)
CheckStatGT(LastTalkedToBy,13,INT)
CheckStatGT(LastTalkedToBy,13,WIS)~ THEN REPLY @1682 EXTERN DAYVEN dangerprison
IF ~~ THEN REPLY @1683 EXTERN DAYVEN whatifcatchguard
IF ~~ THEN REPLY @1684 EXTERN DAYVEN thankyoudayven

CHAIN
IF ~~ THEN DAYVEN dangerprison
@1685
DO ~SetGlobal("Z#BTLPart7Prison","GLOBAL",1)~
END
IF ~~ THEN REPLY @1684 EXTERN DAYVEN thankyoudayven

CHAIN
IF ~~ THEN DAYVEN whatifcatchguard
@1686
END
IF ~OR(2)
CheckStatGT(LastTalkedToBy,11,INT)
CheckStatGT(LastTalkedToBy,11,WIS)~ THEN REPLY @1687 EXTERN DAYVEN dangerprison
IF ~~ THEN REPLY @1684 EXTERN DAYVEN thankyoudayven

CHAIN
IF ~~ THEN DAYVEN thankyoudayven
@1688
EXTERN DAYVEN ribaldeye

CHAIN
IF ~~ THEN DAYVEN ribaldeye
@1689
= @1690
= @1691
DO ~AddJournalEntry(@5060,QUEST)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BTLPart7","GLOBAL",2)
!GlobalTimerExpired("Z#Part7Timer","GLOBAL")
!PartyHasItem("Z#Eye")~ THEN DAYVEN noribaldeye
@1692
EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BTLPart7","GLOBAL",2)
!GlobalTimerExpired("Z#Part7Timer","GLOBAL")
PartyHasItem("Z#Eye")~ THEN DAYVEN gotribaldeye
@1693
DO ~SetGlobal("Z#BTLPart7","GLOBAL",3)
TakePartyItem("Z#Eye") DestroyItem("Z#Eye")
AddJournalEntry(@5062,QUEST)
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~GlobalTimerExpired("Z#Part7Timer","GLOBAL")
Global("Dayven","GLOBAL",13)
GlobalLT("Dayvensaynocanhelp","LOCALS",2)
GlobalGT("Z#BTLPart7","GLOBAL",0)
GlobalLT("Z#BTLPart7","GLOBAL",3)~ THEN DAYVEN z#seidagone
@1694
DO ~IncrementGlobal("Dayvensaynocanhelp","LOCALS",1)~ EXIT

EXTEND_BOTTOM RIBALD 0
IF ~Global("z#ribaldeye","LOCALS",0)
Global("Z#BTLPart7","GLOBAL",2)~ THEN REPLY @1695 EXTERN RIBALD z#mentioneye
IF ~Global("z#ribaldeye","LOCALS",1)
GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY @1696 DO ~GiveGoldForce(4000)~ EXTERN RIBALD z#returneye
IF ~Global("z#ribaldeye","LOCALS",1)
!GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY @1696 DO ~GiveGoldForce(2000)~ EXTERN RIBALD z#returneye
IF ~Global("z#ribaldeye","LOCALS",2)
GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY @1696 DO ~GiveGoldForce(3000)~ EXTERN RIBALD z#returneye
IF ~Global("z#ribaldeye","LOCALS",2)
!GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY @1696 DO ~GiveGoldForce(1500)~ EXTERN RIBALD z#returneye
END

CHAIN
IF ~~ THEN RIBALD z#mentioneye
@1697
= @1698
= @1699
= @1700
= @1701
END
IF ~PartyGoldGT(5999)~ THEN REPLY @1702 DO ~SetGlobal("z#ribaldeye","LOCALS",1)
TakePartyGold(6000) DestroyGold(6000)~ EXTERN RIBALD z#giveeye
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY @1703 EXTERN RIBALD z#bargaineye
IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY @1703 EXTERN RIBALD z#nobargaineye
IF ~~ THEN REPLY @1704 EXTERN RIBALD 1

CHAIN
IF ~~ THEN RIBALD z#bargaineye
@1705
= @1706
END
IF ~PartyGoldGT(4499)~ THEN REPLY @1702 DO ~SetGlobal("z#ribaldeye","LOCALS",2)
TakePartyGold(4500) DestroyGold(4500)~ EXTERN RIBALD z#giveeye
IF ~~ THEN REPLY @1704 EXTERN RIBALD 1

CHAIN
IF ~~ THEN RIBALD z#nobargaineye
@1707
END
IF ~PartyGoldGT(5999)~ THEN REPLY @1702 DO ~SetGlobal("z#ribaldeye","LOCALS",1)
TakePartyGold(6000) DestroyGold(6000)~ EXTERN RIBALD z#giveeye
IF ~~ THEN REPLY @1704 EXTERN RIBALD 1

CHAIN
IF ~~ THEN RIBALD z#giveeye
@1708
DO ~GiveItemCreate("Z#Eye",Player1,0,0,0) AddJournalEntry(@5061,QUEST)~
= @1709
EXIT

CHAIN
IF ~~ THEN RIBALD z#returneye
@1710
DO ~SetGlobal("z#ribaldeye","LOCALS",3)
TakePartyItem("Z#Eye") DestroyItem("Z#Eye")
EraseJournalEntry(@5061)
AddJournalEntry(@5065,QUEST_DONE)~
= @1711
EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#TellSeidaFree","GLOBAL",2)~ THEN Z#MESSEN z#seidafree
@1712
== Z#MESSEN IF ~Global("Z#BTLPart7","GLOBAL",3)~ THEN @1713
== Z#MESSEN @1714
DO ~SetGlobal("Z#BTLPart7","GLOBAL",5)
SetGlobal("Z#TellSeidaFree","GLOBAL",3)
AddJournalEntry(@5059,QUEST_DONE) EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BTLPart7","GLOBAL",4)
Global("Z#BTLPart7Prison","GLOBAL",1)~ THEN DAYVEN z#dayvenalivereport
@1715
= @1716
= @1717
= @1718
= @1719
DO ~GiveItemCreate("Z#Eye",Player1,0,0,0)
SetGlobal("Z#BTLPart7","GLOBAL",7)
AddJournalEntry(@5063,QUEST) EscapeArea()~ EXIT

CHAIN
IF ~~ THEN CORNEIL z#showcorneye
@1720
DO ~StorePartyLocations()
ActionOverride(Player1,LeaveAreaLUA("Z#1005","",[10000.10000],0))~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#KharenMove","GLOBAL",6)
AreaCheckObject("AR1002",Player1)~ THEN CORNEIL z#postshowcorneye
@1721
DO ~SetGlobal("Z#KharenMove","GLOBAL",7)~
= @1722
= @1723
= @1724
== CORNEIL IF ~Global("BribedCowled","GLOBAL",0)~ THEN @1725
DO ~SetGlobal("BribedCowled","GLOBAL",1)~
== CORNEIL @1726
DO ~SetCutSceneLite(FALSE)
SetGlobal("Z#BTLPart7","GLOBAL",10)
AddexperienceParty(36000)
EraseJournalEntry(@5060)
EraseJournalEntry(@5062)
EraseJournalEntry(@5063)
AddJournalEntry(@5064,QUEST_DONE)
ReputationInc(1)
SetGlobal("BribeCorn","GLOBAL",1)
SetGlobalTimer("KKCowlT","GLOBAL",999999999)
SetGlobal("KKCowl","GLOBAL",0)~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1005")
Global("Z#KharenMove","GLOBAL",3)~ THEN Z#SEID16 hikharen
@1727
== KHAREN16 @1728
== Z#SEID16 @1729
== KHAREN16 @1730
== Z#SEID16 @1731
== KHAREN16 @1732
DO ~ApplySpell("Z#Seid16",DRYAD_TELEPORT)
SetGlobal("Z#KharenMove","GLOBAL",4)
SetCutSceneLite(TRUE)
ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT


// Meeting Rillifane

EXTEND_BOTTOM SUAVATAR 13
IF ~InParty("Kova") InParty("Kiyone") GlobalGT("KKRomance","GLOBAL",1)~ THEN EXTERN SUAVATAR KKTalkRillifane
END

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane
@1733
END
IF ~CheckStatGT(Player1,12,INT)~ THEN REPLY @1734 EXTERN SUAVATAR KKTalkRillifane1
IF ~~ THEN REPLY @1735 EXTERN SUAVATAR KKTalkRillifane2
IF ~~ THEN REPLY @1736 EXTERN SUAVATAR KKTalkRillifane3

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane1
@1737
EXTERN Z#KIYOJ KyTalkRillifane

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane2
@1738
= @1739
EXTERN Z#KIYOJ KyTalkRillifane

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane3
@1740
= @1739
EXTERN Z#KIYOJ KyTalkRillifane

CHAIN
IF ~~ THEN Z#KIYOJ KyTalkRillifane
@1741
DO ~SetGlobal("KKMetRillifane","GLOBAL",1)~
== SUAVATAR @1742
== Z#KOVAJ @1743
= @1744
== SUAVATAR @1745
= @1746
== Z#KOVAJ @1747
== SUAVATAR @1748
== Z#KOVAJ @1749
== Z#KIYOJ @1750
== SUAVATAR @1751
= @1752
= @1753
COPY_TRANS SUAVATAR 11

// rejoining after Temple of Rillifane

CHAIN
IF ~AreaCheck("AR2800")
Global("ElvenAvatar","GLOBAL",1)
Global("Z#KKLeftForTrial","GLOBAL",2)~ THEN Z#KOVAP z#comebackfromtrial
@1754
= @1755
== Z#KIYOP @1756
= @1757
= @1758
== Z#KOVAP @1759
== Z#KIYOP @1760
END
IF ~~ THEN REPLY @1761 EXTERN Z#KIYOP z#trialask
IF ~~ THEN REPLY @1762 EXTERN Z#KIYOP z#trialask
IF ~~ THEN REPLY @1763 EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY @1764 EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY @1765 EXTERN Z#KIYOP z#getlost

CHAIN
IF ~~ THEN Z#KIYOP z#rejoinme
@1766
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~
== Z#KOVAP @1767
DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()
SetGlobal("KKJoin","GLOBAL",1)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOP z#trialask
@1768
== Z#KOVAP @1769
== Z#KIYOP @1770
== Z#KOVAP @1771
== Z#KIYOP @1772
END
IF ~~ THEN REPLY @1763 EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY @1764 EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY @1765 EXTERN Z#KIYOP z#getlost


CHAIN
IF ~~ THEN Z#KIYOP z#getlost
@1773
DO ~EscapeArea()~
== Z#KOVAP @1774
= @1775
DO ~EscapeArea()~ EXIT


// Proposal

CHAIN
IF ~AreaCheck("AR2900")
GlobalGT("KKRomance","GLOBAL",1)
GlobalGT("Z#TrialClear","GLOBAL",2)
Global("Z#Proposal","GLOBAL",0) ~ THEN Z#KIYOJ Z#Proposal1
@1776
DO ~SetGlobal("Z#Proposal","GLOBAL",1)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAJ @1777
= @1778
== Z#KIYOJ @1779
== Z#KOVAJ @1780
== Z#KIYOJ @1781
== Z#KOVAJ @1782
== Z#KIYOJ @1783
== Z#KOVAJ @1784
== Z#KOVAJ @1785
= @1786
== Z#KIYOJ @1787
= @1788
== Z#KOVAJ @1789
== Z#KIYOJ @1790
DO ~SetCutSceneLite(TRUE)
RealSetGlobalTimer("Z#ProposalT","AR2900",3)~ EXIT

CHAIN
IF ~AreaCheck("AR2900")
GlobalGT("KKRomance","GLOBAL",1)
GlobalGT("Z#TrialClear","GLOBAL",2)
RealGlobalTimerExpired("Z#ProposalT","AR2900")
Global("Z#Proposal","GLOBAL",1)~ THEN Z#KOVAJ Z#Proposal2
@1791
DO ~SetGlobal("Z#Proposal","GLOBAL",2)~
== Z#KIYOJ @893
== Z#KOVAJ @1792
== Z#KIYOJ @1793
= @1794
== Z#KOVAJ @1795
= @1796
== Z#KIYOJ @1797
== Z#KOVAJ @1798
== Z#KIYOJ @1799
== Z#KOVAJ @1800
== Z#KIYOJ @1801
== Z#KOVAJ @1802
== Z#KIYOJ @1803
== Z#KOVAJ @1804
EXIT


BEGIN Z#ELF1
BEGIN Z#ELF2
BEGIN Z#ELF3

// Resurrection in Temple

CHAIN
IF WEIGHT #-1 ~Global("Z#KiyoneUp","Z#2803",0)~ THEN Z#ELF1 z#shescomingto
@1805
DO ~PlaySound("kkrom1") PlaySong(0)~
== Z#KIYOJ @1806
DO ~SetGlobal("Z#KiyoneUp","Z#2803",1)~
== Z#ELF2 @1807
== Z#ELF1 @1808
== Z#ELF2 @1809
== Z#KIYOJ @1810
= @1811
= @1812
== Z#ELF1 @1813
== Z#KIYOJ @1814
== Z#ELF2 @1815
== Z#KIYOJ @1816
DO ~SetCutSceneLite(TRUE)
SetSequence(SEQ_AWAKE)~ EXIT

// outside the Temple

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",0)
InMyArea("Kova")~ THEN Z#KIYOJ z#damnweakness
@1817
DO ~SetGlobal("Z#KKProposal","Z#2800",1)~
== Z#KOVAJ @1818
DO ~SetCutSceneLite(TRUE) MoveToPoint([3895.1910])~ EXIT

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",1)
LOS("Kiyone",5)~ THEN Z#KOVAJ z#relieftoseeyouawake
@1819
DO ~SetGlobal("Z#KKProposal","Z#2800",2)~
== Z#KIYOJ @1820
== Z#KOVAJ @1821
= @1822
== Z#KIYOJ @1823
== Z#KOVAJ @1824
== Z#KIYOJ @1825
= @1826
== Z#KOVAJ @1827
= @1828
== Z#KIYOJ @1829
= @1830
== Z#KOVAJ @1831
== Z#KIYOJ @1832
== Z#KOVAJ @1833
== Z#KIYOJ @1834
= @1835
== Z#KOVAJ @1836
== Z#KIYOJ @893
== Z#KOVAJ @1837
= @1838
DO ~SetCutSceneLite(TRUE) RealSetGlobalTimer("Z#proposalT","Z#2800",2)~ EXIT

// Proposal Accepted

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",2)
RealGlobalTimerExpired("Z#proposalT","Z#2800")~ THEN Z#KIYOJ z#ladyofmyword
@1839
DO ~SetGlobal("Z#KKProposal","Z#2800",3) PlaySound("kkrom2") PlaySong(0)~
== Z#KOVAJ @1840
== Z#KIYOJ @1841
= @1842
== Z#KOVAJ @1843
== Z#KOVAJ @1844
== Z#KIYOJ @1845
= @1846
== Z#KOVAJ @1847
== Z#KIYOJ @1848
== Z#KOVAJ @1849
== Z#KIYOJ @1850
== Z#KOVAJ @1851
== Z#KIYOJ @1852
== Z#KOVAJ @1853
== Z#KIYOJ @1854
DO ~SetCutSceneLite(TRUE) RealSetGlobalTimer("Z#proposalT","Z#2800",4)~ EXIT

// Wait 3 seconds

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",3)
RealGlobalTimerExpired("Z#proposalT","Z#2800")~ THEN Z#KIYOJ z#ladyofmyword
@1855
DO ~SetGlobal("Z#KKProposal","Z#2800",4)~
== Z#KOVAJ @1856
== Z#KIYOJ @1857
= @1858
== Z#KOVAJ @1859
= @1860
= @1861
== Z#KIYOJ @1862
== Z#KOVAJ @1863
== Z#KIYOJ @1864
== Z#KOVAJ @1865
== Z#KIYOJ @1866
== Z#KOVAJ @1867
== Z#KIYOJ @1868
DO ~SetCutSceneLite(TRUE)
RealSetGlobalTimer("Z#proposalT","Z#2800",1)~ EXIT

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",4)
RealGlobalTimerExpired("Z#proposalT","Z#2800")~ THEN Z#ELF3 z#ladyofmyword
@1869
DO ~SetGlobal("Z#KKProposal","Z#2800",5)~
== Z#KOVAJ @1870
DO ~SetGlobal("Z#Proposal","GLOBAL",3)~
== Z#KIYOJ @1871
== Z#KOVAJ @688
= @1872
== Z#KIYOJ @1873
== Z#KOVAJ @1874
== Z#KIYOJ @1875
DO ~MoveToPoint([3325.2495])~
== Z#KOVAJ @1876
DO ~SetCutSceneLite(TRUE)
MoveToPoint([3325.2495])
FadeToColor([10.0],0)
Wait(2)
ChangeRace(Myself,ELF)
ReallyForceSpell(Myself,GAIN_ONE_DEX_PERMANENT)
ReallyForceSpell(Myself,GAIN_ONE_WIS_PERMANENT)
ReallyForceSpell(Myself,GAIN_ONE_WIS_PERMANENT)
ReallyForceSpell(Myself,GAIN_ONE_CHA_PERMANENT)
ReallyForceSpell(Myself,GAIN_ONE_CHA_PERMANENT)
ChangeRace("Kiyone",ELF)
ReallyForceSpell("Kiyone",GAIN_ONE_DEX_PERMANENT)
ReallyForceSpell("Kiyone",GAIN_ONE_WIS_PERMANENT)
ReallyForceSpell("Kiyone",GAIN_ONE_WIS_PERMANENT)
ReallyForceSpell("Kiyone",GAIN_ONE_CHA_PERMANENT)
ReallyForceSpell("Kiyone",GAIN_ONE_CHA_PERMANENT)
ActionOverride("Kiyone",LeaveAreaLUA("AR2812","",[420.274],7))
LeaveAreaLUA("AR2812","",[365.290],9)~ EXIT

// Mention of Marriage

EXTEND_BOTTOM SUELLE2 18
IF ~InParty("Kova") InParty("Kiyone")
Global("Z#Proposal","GLOBAL",3)~ THEN EXTERN SUELLE2 z#mentionmarriage
IF ~InParty("Kova") InParty("Kiyone")
!Global("Z#Proposal","GLOBAL",3)
Global("z#suldgoodbye","AR2812",0)
Alignment(Player1,MASK_EVIL)~ THEN EXTERN Z#KIYOJ z#suldgoodbye
END

CHAIN
IF ~~ THEN Z#KIYOJ z#suldgoodbye
@1877
DO ~SetGlobal("z#suldgoodbye","AR2812",1)~
= @1878
== Z#KOVAJ @1879
= @1880
== Z#KIYOJ @1881
DO ~LeaveParty() GivePartyAllEquipment() SetGlobal("KiyoJoined","LOCALS",0) EscapeArea()~
== Z#KOVAJ @1882
DO ~LeaveParty() GivePartyAllEquipment() SetGlobal("KovaJoined","LOCALS",0) EscapeArea()~
COPY_TRANS SUELLE2 18

CHAIN
IF ~~ THEN SUELLE2 z#mentionmarriage
@1883
= @1884
== Z#KOVAJ @1885
== Z#KIYOJ @1886
== Z#KOVAJ @1887
== Z#KIYOJ @1888
END
IF ~~ THEN REPLY @1889 EXTERN Z#KOVAJ z#letsgowedding
IF ~~ THEN REPLY @1890 EXTERN Z#KOVAJ z#letsgowedding
IF ~~ THEN REPLY @1891 EXTERN Z#KIYOJ z#letsnotgowedding
IF ~~ THEN REPLY @1892 EXTERN Z#KIYOJ z#letsnotgowedding

CHAIN
IF ~~ THEN Z#KOVAJ z#letsgowedding
@1893
== Z#KIYOJ @1894
DO ~ActionOverride(Player2,LeaveAreaLUA("Z#2812","",[488.312],8))~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ z#letsnotgowedding
@1895
== Z#KOVAJ @1896
DO ~SetGlobal("Z#Proposal","GLOBAL",10)
GiveItemCreate("KvRing1","Kova",1,0,0)
GiveItemCreate("KyRing1","Kiyone",1,1,0)~
COPY_TRANS SUELLE2 18


BEGIN Z#KVWED
BEGIN Z#KYWED

// Marriage in Suldanessellar

BEGIN Z#DEMIN

CHAIN
IF ~AreaCheck("Z#2812")
Global("Z#Proposal","GLOBAL",4)
GlobalGT("z#spawndemin","Z#2812",0)~ THEN Z#DEMIN z#marriagestart
@1897
DO ~PlaySound("kkwed") PlaySong(0)~
== Z#KVWED @1898
== Z#DEMIN @1899
== Z#KYWED @1900
== Z#DEMIN @1901
== Z#KVWED @1902
== Z#DEMIN @1903
== Z#KVWED @1904
== Z#DEMIN @1905
== Z#KYWED @1904
== Z#DEMIN @1906
== Z#KYWED @1907
== Z#DEMIN @1908
== Z#KVWED @1909
== Z#DEMIN @1910
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#Proposal","GLOBAL",5)
RealSetGlobalTimer("Z#weddingT","Z#2812",2)
ActionOverride("Z#KvWed",MoveToPointNoInterrupt([460.265])
ActionOverride("Z#KyWed",MoveToPointNoInterrupt([516.265])~ EXIT

CHAIN
IF ~Global("Z#Proposal","GLOBAL",5)
RealGlobalTimerExpired("Z#weddingT","Z#2812")~ THEN Z#DEMIN z#declarehusbwife
@1911
== Z#KYWED @1912
== Z#KVWED @1913
= @1914
== Z#KYWED @1915
== Z#DEMIN @1916
== Z#KYWED @1917
== Z#DEMIN @1918
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#Proposal","GLOBAL",6)
RealSetGlobalTimer("Z#weddingT","Z#2812",1)
ActionOverride("Z#KvWed",MoveToPointNoInterrupt([478.265])
ActionOverride("Z#KyWed",MoveToPointNoInterrupt([498.265])~ EXIT

CHAIN
IF ~Global("Z#Proposal","GLOBAL",6)
RealGlobalTimerExpired("Z#weddingT","Z#2812")~ THEN Z#KYWED z#notbad
@1919
DO ~SetGlobal("Z#Proposal","GLOBAL",7)~
== Z#KVWED @1920
DO ~SetGlobal("Z#Married","GLOBAL",1)~
== Z#KYWED @1921
== Z#KVWED @1922
== Z#KYWED @1923
== Z#DEMIN @1924
DO ~SetCutSceneLite(TRUE)
FadeToColor([90.0],0)
RealSetGlobalTimer("Z#weddingT","Z#2812",3)
ActionOverride("Z#KvWed",Face(0))
ActionOverride("Z#KyWed",Face(0))~ EXIT

CHAIN
IF ~!Alignment(Player1,MASK_EVIL)
Global("Z#Proposal","GLOBAL",7)
AreaCheck("Z#2812")~ THEN PLAYER1 postwednight
@1925
= @1926
END
IF ~~ THEN REPLY @1927
DO ~Explore()
SetGlobal("Z#Proposal","GLOBAL",8)
ActionOverride(Player1,	ApplySpellRES("Z#HIDE",Myself))
ActionOverride(Player1,LeaveAreaLUA("Z#2801","",[2000.2000],7))~ EXIT
IF ~ReputationLT(Player1,10)~ THEN REPLY @1928
DO ~ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100a")~ EXIT
IF ~ReputationGT(Player1,9)~ THEN REPLY @1928
DO ~ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100b")~ EXIT

CHAIN
IF ~Alignment(Player1,MASK_EVIL)
Global("Z#Proposal","GLOBAL",7)
AreaCheck("Z#2812")~ THEN PLAYER1 postwedevilbye
@1929
== Z#KYWED @1877
DO ~SetGlobal("z#suldgoodbye","AR2812",1)~
== Z#KVWED @1930
= @1931
== Z#KYWED @1932
== Z#KVWED @1933
= @1880
== Z#KYWED @1881
DO ~ActionOverride("Kiyone",LeaveParty())
ActionOverride("Kiyone",DestroyItem("KyRing1"))
ActionOverride("Kiyone",GivePartyAllEquipment())
ActionOverride("Kiyone",SetGlobal("KiyoJoined","LOCALS",0))
ActionOverride("Kiyone",EscapeArea())~
== Z#KVWED @1934
DO ~ActionOverride("Kova",LeaveParty())
ActionOverride("Kova",DestroyItem("KvRing1"))
ActionOverride("Kova",GivePartyAllEquipment())
ActionOverride("Kova",SetGlobal("KovaJoined","LOCALS",0))
ActionOverride("Kova",EscapeArea())~
COPY_TRANS SUELLE2 18

CHAIN
IF ~AreaCheck("Z#2801")
Global("Z#night","Z#2801",0)~ THEN Z#KYWED wednight1
@1935
DO ~SetGlobal("Z#night","Z#2801",1)~
= @1936
= @1937
= @1938
== Z#KVWED @1939
== Z#KYWED @1940
== Z#KVWED @1941
== Z#KYWED @1942
== Z#KVWED @1943
== Z#KYWED @1944
== Z#KVWED @1945
== Z#KYWED @1946
END
IF ~~ THEN REPLY @1947 DO ~Explore()
CreateCreature("observe",[310.460],0)~ EXTERN Z#KVWED wednight2
IF ~ReputationLT(Player1,10)~ THEN REPLY @1928
DO ~ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100a")~ EXIT
IF ~ReputationGT(Player1,9)~ THEN REPLY @1928
DO ~SetGlobal("Z#night","Z#2801",5)
ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100b")~ EXIT

CHAIN
IF ~~ THEN Z#KVWED wednight2
@1948
== Z#KYWED @1949
DO ~SetCutSceneLite(TRUE)
MoveViewObject("observe",INSTANT)
RealSetGlobalTimer("Z#weddingT","Z#2801",3)
ReallyForceSpell(Myself,CLERIC_HEAL)
ActionOverride("Z#KvWed",MoveToPoint([635.355]))~ EXIT

CHAIN
IF ~AreaCheck("Z#2801")
Global("Z#night","Z#2801",2)
RealGlobalTimerExpired("Z#weddingT","Z#2801")~ THEN Z#KVWED wednight3
@1950
DO ~SetGlobal("Z#night","Z#2801",3)~
== Z#KYWED @1951
== Z#KVWED @1952
== Z#KYWED @139
== Z#KVWED @1953
== Z#KYWED @1954
DO ~FadeToColor([10.0],0)
ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)~
COPY_TRANS SUELLE2 18