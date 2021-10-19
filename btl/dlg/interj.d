// Hell

INTERJECT_COPY_TRANS2 PLAYER1 25 z#kkinhell
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@0
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
@1
END

EXTEND_BOTTOM HELLJON 7
IF ~InParty("Kova") InMyArea("Kova") Global("z#helljontalk","GLOBAL",0)~ THEN
DO ~SetGlobal("z#helljontalk","GLOBAL",1)~ EXTERN Z#KOVAJ z#helljon78
END

EXTEND_BOTTOM HELLJON 8
IF ~InParty("Kova") InMyArea("Kova") Global("z#helljontalk","GLOBAL",0)~ THEN
DO ~SetGlobal("z#helljontalk","GLOBAL",1)~ EXTERN Z#KOVAJ z#helljon78
END

EXTEND_BOTTOM HELLJON 9
IF ~InParty("Kiyone") InMyArea("Kiyone") Global("z#helljontalk","GLOBAL",0)~ THEN
DO ~SetGlobal("z#helljontalk","GLOBAL",1)~ EXTERN Z#KIYOJ z#helljon910
END

EXTEND_BOTTOM HELLJON 10
IF ~InParty("Kiyone") InMyArea("Kiyone") Global("z#helljontalk","GLOBAL",0)~ THEN
DO ~SetGlobal("z#helljontalk","GLOBAL",1)~ EXTERN Z#KIYOJ z#helljon910
END

CHAIN
IF ~~ THEN Z#KOVAJ z#helljon78
@2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@3
COPY_TRANS HELLJON 7

CHAIN
IF ~~ THEN Z#KIYOJ z#helljon910
@4
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
@5
COPY_TRANS HELLJON 9



// Suldanessellar -

// Lanthorn to Elhan

INTERJECT_COPY_TRANS2 C6ELHAN2 73 z#c6elhan2-73
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
@6
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InMyArea("Kova") InParty("Kova")~ THEN
@7
END

INTERJECT_COPY_TRANS2 C6ELHAN2 81 z#c6elhan2-81
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone")~ THEN
@8
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
@9
END

// Children in the City

EXTEND_BOTTOM SUELF5 2
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ suelf5-2
END

CHAIN
IF ~~ THEN Z#KIYOJ suelf5-2
@10
EXTERN SUELF5 4

INTERJECT_COPY_TRANS2 SUELF4 6 z#suelf4-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@11
END

CHAIN
IF ~AreaCheck("AR2800")
!InMyArea("suelf4") !InMyArea("suelf5")
Global("Z#SuldKids","LOCALS",0)~ THEN Z#KIYOJ Z#SuldKids
@12
DO ~SetGlobal("Z#SuldKids","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@13
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@15
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@16
EXIT

// Dragon

INTERJECT_COPY_TRANS2 DRAGBLAC 0 dragblac-0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") Global("DerminJob","GLOBAL",1)~ THEN
@18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@19
END

// Priestess Demin

INTERJECT_COPY_TRANS2 SUDEMIN 16 z#sudemin16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@20
END

INTERJECT_COPY_TRANS2 SUDEMIN 22 z#sudemin22
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@21
END

INTERJECT_COPY_TRANS2 SUDEMIN 40 z#sudemin40
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@22
DO ~LeaveParty() Enemy()~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@23
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 SUDEMIN 45 z#sudemin45
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@24
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@25
END

// Avatar of Rillifane

INTERJECT_COPY_TRANS2 SUAVATAR 5 z#suavatar5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@26
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@27
END

// Tree of Life Dialogue

INTERJECT PLAYER1 33 Z#KKTreePlayer1
== PLAYER1 IF ~InParty("Kova") InParty("Kiyone")~ THEN
@28
= @29
END
IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN REPLY @30 EXTERN Z#KIYOJ KyTree1
IF ~!GlobalGT("KKRomance","GLOBAL",1)~ THEN REPLY @31 EXTERN Z#KIYOJ KyTree2
IF ~~ THEN REPLY @32 EXTERN Z#KIYOJ KyTree3
IF ~~ THEN REPLY @33 EXTERN Z#KIYOJ KyTree4

CHAIN
IF ~~ THEN Z#KIYOJ KyTree1
@34
== Z#KOVAJ @35
COPY_TRANS PLAYER1 33

CHAIN
IF ~~ THEN Z#KIYOJ KyTree2
@36
== Z#KOVAJ @37
COPY_TRANS PLAYER1 33

CHAIN
IF ~~ THEN Z#KIYOJ KyTree3
@38
== Z#KOVAJ @39
COPY_TRANS PLAYER1 33

CHAIN
IF ~~ THEN Z#KIYOJ KyTree4
@40
== Z#KOVAJ @41
COPY_TRANS PLAYER1 33

// Ellesime SUELLEAP - nothing from the apparition,as we assume only Player1 can see it

// SUJON 14 - where Jah,Minsc,Imoen comment.
// considering BTL chars are not part of his imprisonment,they should stay silent.


// Watcher's Keep

// Odren

INTERJECT_COPY_TRANS2 GORODR1 17 gorodr1-17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@42
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@43
END

// Archivist

INTERJECT_COPY_TRANS2 GORARC1 5 gorarc1-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@44
END

// Statues in level 1

CHAIN
IF ~Global("Z#CommWKStatue","LOCALS",0)
See("gorsta08")
!ActuallyInCombat()
Allegiance("gorsta08",NEUTRAL)
AreaCheck("AR3001")~ THEN Z#KOVAJ watcherkeep1statues
@45
DO ~SetGlobal("Z#CommWKStatue","LOCALS",1)~ EXIT

// Priest in level 1

INTERJECT_COPY_TRANS2 GORPRI1 0 gorpri1-0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
Global("gorarc1-5","GLOBAL",1) PartyHasItem("PLOT01P")~ THEN
@46
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
Global("gorarc1-5","GLOBAL",1) !PartyHasItem("PLOT01P")~ THEN
@47
END

// Chromatic Demon GorChr

INTERJECT_COPY_TRANS2 GORCHR 0 gorchr0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@48
END

INTERJECT_COPY_TRANS2 GORCHR 3 gorchr3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@49
END

// Yakman

INTERJECT_COPY_TRANS2 GORMAD1 8 gormad1-8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@50
END

INTERJECT_COPY_TRANS2 GORMAD1 16 gormad1-16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@51
END

INTERJECT_COPY_TRANS2 GORMAD1 16 gormad1-16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@52
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@53
END

INTERJECT_COPY_TRANS2 GORMAD1 34 gormad1-34
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@54
== Z#KIYOJ IF ~!GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)
OR(2) !InParty("Kova") !InMyArea("Kova")
InParty("Kiyone") InMyArea("Kiyone")~ THEN
@55
END

EXTEND_BOTTOM GORMAD1 41
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ gormad1-41
IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN EXTERN Z#KIYOJ gormad1-41
END

CHAIN
IF ~~ THEN Z#KIYOJ gormad1-41
@56
DO ~IncrementGlobal("Break","LOCALS",1)~ EXTERN GORMAD1 39

CHAIN
IF ~~ THEN Z#KOVAJ gormad1-41
@57
DO ~IncrementGlobal("Break","LOCALS",1)
ActionOverride("Kiyone",IncrementGlobal("Break","LOCALS",1))~ EXTERN GORMAD1 39

INTERJECT_COPY_TRANS2 GORTAN1 6 gortan1-6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@58
END

INTERJECT_COPY_TRANS2 GORBAT1 7 gorbat1-7
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@58
END

INTERJECT_COPY_TRANS2 GORCAMB 5 gorcamb5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@59
END

INTERJECT_COPY_TRANS2 GORCAMB 21 gorcamb21
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@60
END

INTERJECT_COPY_TRANS2 GORCAMB 53 gorcamb53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@61
== Z#KIYOJ IF ~
InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@62
END

INTERJECT_COPY_TRANS2 GORAPR 16 gorapr16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)~ THEN
@63
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)~ THEN
@64
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)~ THEN
@65
END

INTERJECT_COPY_TRANS2 GORSAL 10 gorsal10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@66
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@67
END

INTERJECT_COPY_TRANS2 GORCAR 15 gorcar15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@68
END

INTERJECT_COPY_TRANS2 GORAPP1 3 gorapp1-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@69
END

INTERJECT_COPY_TRANS2 GORAPP1 17 gorapp1-17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@70
= @71
END

// Bodhi Final

INTERJECT_COPY_TRANS2 C6BODHI 0 c6bodhi-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@72
== C6BODHI IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@73
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@74
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@75
END

// Bodhi Ambient

INTERJECT_COPY_TRANS2 BODHIAMB 6 bodhiamb6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@76
== BODHIAMB IF ~InParty("Kova") InMyArea("Kova")~ THEN
@77
END

// Seeking Aran for Vampire Help 78

INTERJECT_COPY_TRANS2 ARAN 78 aran78
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@78
END

INTERJECT_COPY_TRANS2 ARAN 85 aran85
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@79
END

// 89 - yes 101,102,104 - no

INTERJECT_COPY_TRANS2 ARAN 89 aran89
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@80
END

INTERJECT_COPY_TRANS2 ARAN 101 aran101
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@81
END

INTERJECT_COPY_TRANS2 ARAN 102 aran102
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@81
END

INTERJECT_COPY_TRANS2 ARAN 104 aran104
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@81
END


// Seeking Radiant Heart for Vampire Help 61 60 57 55 46 - yes

EXTEND_BOTTOM HPRELATE 55
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("OrderFightBodhi","GLOBAL",2)~ EXTERN Z#KOVAJ hprelatenofight
END

EXTEND_BOTTOM HPRELATE 57
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("OrderFightBodhi","GLOBAL",2)~ EXTERN Z#KOVAJ hprelatenofight
END

EXTEND_BOTTOM HPRELATE 60
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("OrderFightBodhi","GLOBAL",2)~ EXTERN Z#KOVAJ hprelatenofight
END

EXTEND_BOTTOM HPRELATE 61
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("OrderFightBodhi","GLOBAL",2)~ EXTERN Z#KOVAJ hprelatenofight
END

CHAIN
IF ~~ THEN Z#KOVAJ hprelatenofight
@82
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@83
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@84
EXIT

INTERJECT_COPY_TRANS2 HPRELATE 46 hprelate-46
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@85
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@86
END

// Drizzt

INTERJECT_COPY_TRANS2 C6DRIZZ1 5 c6drizz1-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@87
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@88
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 9 c6drizz1-9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@87
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@88
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 18 c6drizz1-18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@87
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@88
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 37 c6drizz1-37
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@89
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@90
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 41 c6drizz1-41
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@87
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@88
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 48 c6drizz1-48
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@87
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@88
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 55 c6drizz1-55
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@87
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@88
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 53 c6drizz1-53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@91
END

// Elhan

INTERJECT_COPY_TRANS2 C6ELHAN2 28 c6elhan2-28
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@92
END

INTERJECT_COPY_TRANS2 C6ELHAN2 45 c6elhan2-45
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@93
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@94
== C6ELHAN2 IF ~InParty("Kova") InMyArea("Kova")~ THEN
@95
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@96
END

// General Solivadaas

INTERJECT_COPY_TRANS2 C6GENER 1 c6gener1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@97
END



// MindFlayer Area

INTERJECT_COPY_TRANS2 UDSIMYAZ 5 udsimyaz5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@98
END

INTERJECT_COPY_TRANS2 UDSIMYAZ 16 udsimyaz16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@99
END

CHAIN
IF ~OR(9)
		Dead("Slave100")
		Dead("Slave101")
		Dead("Slave102")
		Dead("Slave103")
		Dead("Slave104")
		Dead("Slave105")
		Dead("Slave106")
		Dead("Slave107")
		Dead("udilsla2")
AreaCheck("AR2400")
Global("Z#illithidslavedie","LOCALS",0)~ THEN Z#KOVAJ Z#illithidslavedie
@100
DO ~SetGlobal("Z#illithidslavedie","LOCALS",1)
IncrementGlobal("Break","LOCALS",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@101
DO ~IncrementGlobal("Break","LOCALS",1)~
EXIT

CHAIN
IF ~Detect("udgolem")
!Dead("udmaster")
AreaCheck("AR2400")
Global("Z#killmasterbrain","LOCALS",0)~ THEN Z#KIYOJ Z#killmasterbrain
@102
DO ~SetGlobal("Z#killmasterbrain","LOCALS",1)~ EXIT

INTERJECT_COPY_TRANS2 UDSIMYAZ 50 udsimyaz50
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@103
END


// Drow Gates

EXTEND_BOTTOM UDDOOR02 5
IF ~InParty("Kiyone") See("Kiyone")~ THEN EXTERN Z#KIYOJ uddoor02-5
IF ~InParty("Kova") Detect("Kova")
OR(2) !InParty("Kiyone") !See("Kiyone")~ THEN EXTERN Z#KOVAJ uddoor02-5
END

CHAIN
IF ~~ THEN Z#KIYOJ uddoor02-5
@104
EXTERN UDDOOR02 7

CHAIN
IF ~~ THEN Z#KOVAJ uddoor02-5
@105
EXTERN UDDOOR02 6


// Return to Adalon

INTERJECT_COPY_TRANS2 UDSILVER 43 udsilver43
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@106
== UDSILVER IF ~InParty("Kova") InMyArea("Kova")~ THEN
@107
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@108
== UDSILVER IF ~InParty("Kova") InMyArea("Kova")~ THEN
@109
END



// Visaj / Jarlaxle / Deirex

INTERJECT_COPY_TRANS2 BREG01 17 breg01-17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@110
== BREG01 IF ~InParty("Kova") InMyArea("Kova")~ THEN
@111
END

INTERJECT_COPY_TRANS2 JARLAXLE 16 jarlaxle16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@112
END

// Bargaining with the Demon - unwritten,no player of MASK_EVIL

// Matron Mother Ardulace UDARDUL

INTERJECT_COPY_TRANS2 UDARDUL 16 udardul16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
!PartyHasItem("misca8") // Eyestalk of an Elder Orb
!PartyHasItem("misca7") // Kuo-Toan's Blood
!PartyHasItem("miscbv") // Elder Brain Blood
~ THEN
@113
= @114
END

INTERJECT_COPY_TRANS2 UDARDUL 53 udardul53
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Dead("Phaere")
!Global("MatronHasFakeEggs","GLOBAL",1)~ THEN
@115
DO ~ActionOverride("Kova",JumpToPoint([1025.285]) // Matron Mother at 992.283
ActionOverride("Kova",Hide())
Attack("udardul")~
END

// Phaere UDPHAE01

INTERJECT_COPY_TRANS2 UDPHAE01 24 udphae01-24
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@116
END

INTERJECT_COPY_TRANS2 UDPHAE01 53 udphae01-53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@117
END

INTERJECT_COPY_TRANS2 UDPHAE01 61 udphae01-61
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@118
== UDPHAE01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@119
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@120
END

INTERJECT_COPY_TRANS2 UDPHAE01 88 udphae01-88
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@121
END

CHAIN
IF ~Global("PhaereInnuendo","GLOBAL",3)
AreaCheck("AR2200")
Gender(Player1,MALE)
Detect(Player1)
Global("Z#commentphaere","LOCALS",0)~ THEN Z#KOVAJ Z#commentphaere1
@122
DO ~SetGlobal("Z#commentphaere","LOCALS",1)~
END
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Z#commentphaere
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN EXIT

CHAIN
IF ~Global("PhaereInnuendo","GLOBAL",2)
AreaCheck("AR2204")
Gender(Player1,MALE)
Detect(Player1)
Global("Z#commentphaere","LOCALS",0)~ THEN Z#KOVAJ Z#commentphaere2
@123
DO ~SetGlobal("Z#commentphaere","LOCALS",1)~
END
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Z#commentphaere
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN EXIT

CHAIN
IF ~~ THEN Z#KIYOJ Z#commentphaere
@124
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKRomance","GLOBAL",0)~ THEN
@125
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKRomance","GLOBAL",0)~ THEN
@126
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKRomance","GLOBAL",0)~ THEN
@127
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance","GLOBAL",1)~ THEN
@128
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance","GLOBAL",1)~ THEN
@129
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance","GLOBAL",1)~ THEN
@130
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance","GLOBAL",1)~ THEN
@131
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance","GLOBAL",1)~ THEN
@132
EXIT

EXTEND_BOTTOM UDPHAE01 159
IF ~Global("PhaereHasFakeEggs","GLOBAL",0) InMyArea("Kiyone") InParty("Kiyone")~ THEN EXTERN Z#KIYOJ udphae01-159
END

CHAIN
IF ~~ THEN Z#KIYOJ udphae01-159
@133
DO ~ActionOverride("Kova",JumpToPoint([1005.315])
ActionOverride("Kova",Hide())~
EXTERN UDPHAE01 162


// Solaufein UDSOLA01

INTERJECT_COPY_TRANS2 UDSOLA01 10 udsola01-10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@134
END

INTERJECT_COPY_TRANS2 UDSOLA01 107 udsola01-107
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@135
END

INTERJECT_COPY_TRANS2 UDSOLA01 120 udsola01-120
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1) InParty("Kiyone") InMyArea("Kiyone")~ THEN
@136
== Z#KOVAJ IF ~GlobalGT("KKRomance","GLOBAL",1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@137
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@138
END

INTERJECT_COPY_TRANS2 UDSOLA01 125 udsola01-125
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1) InParty("Kiyone") InMyArea("Kiyone")~ THEN
@136
== Z#KOVAJ IF ~GlobalGT("KKRomance","GLOBAL",1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@137
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@138
END

INTERJECT_COPY_TRANS2 UDSOLA01 132 udsola01-132
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@139
END

INTERJECT_COPY_TRANS2 UDSOLA01 140 udsola01-140
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@139
END

INTERJECT_COPY_TRANS2 UDSOLA01 145 udsola01-145
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@139
END

INTERJECT_COPY_TRANS2 UDSOLA01 152 udsola01-152
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@140
END

INTERJECT_COPY_TRANS2 UDSOLA01 161 udsola01-161
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@140
END

// Svirnefblin Patrol Leader

INTERJECT_COPY_TRANS2 UDSVIR08 1 udsvir08-1
== Z#KIYOJ IF ~Global("SolaufeinJob","GLOBAL",7) InParty("Kiyone") InMyArea("Kiyone")~ THEN
@141
DO ~IncrementGlobal("Break","LOCALS",1)~
== Z#KOVAJ IF ~Global("SolaufeinJob","GLOBAL",7) InParty("Kova") InMyArea("Kova")~ THEN
@142
DO ~IncrementGlobal("Break","LOCALS",1)~
END

INTERJECT_COPY_TRANS2 UDSVIR08 13 udsvir08-13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@143
END

INTERJECT_COPY_TRANS2 UDSVIR08 9 udsvir08-9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@144
END


// Aboleth

EXTEND_BOTTOM DAABOL 9
IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ EXTERN Z#KIYOJ daabol-9
END

CHAIN
IF ~~ THEN Z#KIYOJ daabol-9
@145
== DAABOL @146
= @147
== Z#KOVAJ
@148
EXTERN DAABOL 25


// Ghaunadaur drow

INTERJECT_COPY_TRANS2 DADROW17 3 dadrow17-3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@149
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@150
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@151
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@152
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@153
END

// Drow Chase

CHAIN
IF ~GlobalGT("AmbientStartRun","AR2200",3)
InMyArea("DADROW6")
AreaCheck("AR2200")
InParty("Kiyone") InMyArea("Kiyone")
Global("Z#drowchase","LOCALS",0)~ THEN Z#KOVAJ Z#drowchase
@154
DO ~SetGlobal("Z#drowchase","LOCALS",1)~
== Z#KIYOJ @155
= @156
EXIT

// Adalon

INTERJECT_COPY_TRANS2 UDSILVER 9 udsilver-9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@157
END

INTERJECT_COPY_TRANS2 UDSILVER 14 udsilver-14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@158
END

INTERJECT_COPY_TRANS2 UDSILVER 25 udsilver-25
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@159
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@160
END

EXTEND_BOTTOM UDSILVER 36
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ udsilver-36
END

CHAIN
IF ~~ THEN Z#KIYOJ udsilver-36
@161
EXTERN UDSILVER 37

INTERJECT_COPY_TRANS2 UDSILVER 49 udsilver-49
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@162
END


// Sentry open Balor Door

INTERJECT_COPY_TRANS2 UDSVIR06 2 udsvir06-2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@163
END


// Goldander

EXTEND_BOTTOM UDSVIR03 7
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ udsvir03-7
END

CHAIN
IF ~~ THEN Z#KIYOJ udsvir03-7
@164
EXTERN UDSVIR03 8


// Therndle Daglefodd

INTERJECT_COPY_TRANS2 UDSVIR05 7 udsvir05-7
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@165
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@166
END

// On Trapped Facets

CHAIN
IF ~Global("Z#stopfree","LOCALS",0)
!InMyArea("udtrap01")
!InMyArea("udtrap02")
!InMyArea("udtrap03")
!InMyArea("udtrap04")
!InMyArea("udtrap05")
!InMyArea("udtrap06")
AreaCheck("AR2100")
OR(6)
Global("face1","AR2100",2)
Global("face2","AR2100",2)
Global("face3","AR2100",2)
Global("face4","AR2100",2)
Global("face5","AR2100",2)
Global("face6","AR2100",2)~ THEN Z#KOVAJ Z#stopfree
@167
DO ~SetGlobal("Z#stopfree","LOCALS",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@168
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@169
EXIT


// Vithal

INTERJECT_COPY_TRANS2 UDVITH 19 udvith-19
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@170
= @171
END

INTERJECT_COPY_TRANS2 UDVITH 31 udvith-31
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@172
END

INTERJECT_COPY_TRANS2 UDVITH 47 udvith-47
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@173
END

CHAIN
IF ~GlobalGT("dwVithal","GLOBAL",17)
AreaCheck("AR2100")
Dead("udvith")
GLOBAL("z#vithdead","LOCALS",0)~ THEN Z#KIYOJ vithdead
@174
= @175
DO ~SetGlobal("z#vithdead","LOCALS",1)
IncrementGlobal("Break","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@176
DO ~IncrementGlobal("Break","LOCALS",1)~
EXIT


// Dwarves on Neckbiter and Mage

INTERJECT_COPY_TRANS2 UDDUER01 17 udduer01-17
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("udduer01-6","GLOBAL",0)~
@177
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone") Global("udduer01-6","GLOBAL",0)~ THEN
@178
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone") Global("udduer01-6","GLOBAL",0)~ THEN
@179
END

EXTEND_BOTTOM UDDUER01 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ udduer01-6
END

CHAIN
IF ~~ THEN Z#KIYOJ udduer01-6
@177
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@178
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@179
EXTERN UDDUER01 8

// Underdark First Visit

CHAIN
IF ~AreaCheck("AR2100")
Global("EnteredArea","AR2100",1)
Global("Z#SayUnderdark","LOCALS",0)~ THEN Z#KOVAJ sayunderdark
@180
DO ~SetGlobal("Z#SayUnderdark","LOCALS",1)~
== MAZZYJ IF ~InParty("Mazzy")~ THEN
@181
== JAHEIRAJ IF ~InParty("Jaheira") !InParty("Mazzy")~ THEN
@182
== NALIAJ IF ~InParty("Nalia") !InParty("Mazzy") !InParty("Jaheira")~ THEN
@183
== Z#KOVAJ IF ~OR(3) InParty("Nalia") InParty("Mazzy") InParty("Jaheira")~ THEN
@184
== Z#KOVAJ
@185
= @186
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@187
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@188
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@189
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@190
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@191
= @192
EXIT



// Sahuagin City

// Priestess Senityili on entrance

INTERJECT_COPY_TRANS2 SAHPR1 10 sahpr1-10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@193
END

INTERJECT_COPY_TRANS2 SAHPR1 12 sahpr1-12
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@194
END

INTERJECT_COPY_TRANS2 SAHPR1 20 sahpr1-20
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@195
END

INTERJECT_COPY_TRANS2 SAHPR3 1 sahpr3-1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@196
END

// King Ixilthel

INTERJECT_COPY_TRANS2 SAHKNG01 6 sahkng01-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@197
END

INTERJECT_COPY_TRANS2 SAHKNG01 46 sahkng01-46
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@198
END

// Priestess Senityili on rebels

INTERJECT_COPY_TRANS2 SAHPR1 59 sahpr1-59
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@199
= @200
END

INTERJECT_COPY_TRANS2 SAHPR1 69 sahpr1-69
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@201
= @202
END

// Imps

INTERJECT_COPY_TRANS2 SAHIMP02 6 sahimp02-6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@203
END

// Beholder

EXTEND_BOTTOM SAHBEH01 27
IF ~InParty("Kova") See("Kova") !CheckStatGT(LastTalkedToBy,12,WIS)~ THEN EXTERN Z#KOVAJ sahbeh01-27
END

CHAIN
IF ~~ THEN Z#KOVAJ sahbeh01-27
@204
EXTERN SAHBEH01 33

EXTEND_BOTTOM SAHBEH01 34
IF ~InParty("Kiyone") See("Kiyone") !CheckStatGT(LastTalkedToBy,12,WIS)~ THEN EXTERN Z#KIYOJ sahbeh01-34
END

CHAIN
IF ~~ THEN Z#KIYOJ sahbeh01-34
@205
EXTERN SAHBEH01 35

EXTEND_BOTTOM SAHBEH01 38
IF ~InParty("Kova") See("Kova")~ THEN EXTERN Z#KOVAJ sahbeh01-38
END

CHAIN
IF ~~ THEN Z#KOVAJ sahbeh01-38
@206
EXTERN SAHBEH01 39

// Prince Vilynaty

INTERJECT_COPY_TRANS2 SAHPR2 12 sahpr2-12
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@207
END

EXTEND_BOTTOM SAHPR2 19
IF ~InParty("Kova") See("Kova") Global("Z#sahpr2-19","GLOBAL",0)~ THEN
DO ~SetGlobal("Z#sahpr2-19","GLOBAL",1)~ EXTERN Z#KOVAJ sahpr2-19
END

CHAIN
IF ~~ THEN Z#KOVAJ sahpr2-19
@208
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@209
== Z#KOVAJ
@210
EXTERN SAHPR2 14

// Ending Help Prince

INTERJECT_COPY_TRANS2 SAHPR2 4 sahpr2-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@211
END

// Ending Help King

INTERJECT_COPY_TRANS2 SAHKNG01 56 sahkng01-56
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@212
END



// Meeting Baron Ployer

INTERJECT_COPY_TRANS2 JAHEIRAJ 30 jaheiraj-30
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@213
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 31 jaheiraj-31
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@213
END

// Belgrade

INTERJECT_COPY_TRANS2 BERNARD 4 bernard21
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") !Dead("Jaheira")~ THEN
@214
== Z#KIYOJ IF ~OR(2) !InMyArea("Kova") !InParty("Kova")
InParty("Kiyone") InMyArea("Kiyone") !Dead("Jaheira")~ THEN
@215
END

INTERJECT_COPY_TRANS2 BERNARD 21 bernard21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@216
== JAHEIRAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@217
END

// post Baron Ployer

CHAIN
IF ~AreaCheck("AR0409")
Dead("Ployer")
!InParty("Jaheira")
GlobalGT("JaheiraCursed","GLOBAL",0)
Global("z#ployer","LOCALS",0)~ THEN Z#KIYOJ ployerdead
@218
DO ~SetGlobal("z#ployer","LOCALS",1)~ EXIT

INTERJECT_COPY_TRANS2 JAHEIRAJ 72 jaheiraj-72
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@219
== JAHEIRAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@220
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 73 jaheiraj-73
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@221
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 74 jaheiraj-74
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@222
== JAHEIRAJ
@223
END

INTERJECT_COPY_TRANS2 JAGALVAR 3 jagalvar-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@224
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 124 jaheiraj-124
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@225
END

EXTEND_BOTTOM JAGALVAR 44
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~EraseJournalEntry(4838)
EraseJournalEntry(4840)
EraseJournalEntry(4841)
EraseJournalEntry(47980)
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",EscapeArea())
SetGlobal("JaheiraAbandoned","GLOBAL",1)
SetGlobal("HarperFight","GLOBAL",1)~
EXTERN Z#KIYOJ fightharp1
END

EXTEND_BOTTOM JAGALVAR 46
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~EraseJournalEntry(4838)
EraseJournalEntry(4840)
EraseJournalEntry(4841)
EraseJournalEntry(47980)
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",EscapeArea())
SetGlobal("JaheiraAbandoned","GLOBAL",1)
SetGlobal("HarperFight","GLOBAL",1)~
EXTERN Z#KIYOJ fightharp1
END

EXTEND_BOTTOM JAHEIRAJ 143
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~EraseJournalEntry(4838)
EraseJournalEntry(4840)
EraseJournalEntry(4841)
EraseJournalEntry(47980)
SetGlobal("HarperFight","GLOBAL",1)
SetGlobal("JaheiraTraitor","GLOBAL",1)~
EXTERN Z#KIYOJ fightharp1
END

CHAIN
IF ~~ THEN Z#KIYOJ fightharp1
@226
= @227
EXIT

// Reviane

EXTEND_BOTTOM JAREVIA 7
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~Enemy()~ EXTERN Z#KIYOJ fightharp2
END

EXTEND_BOTTOM JAREVIA 9
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~Enemy()~ EXTERN Z#KIYOJ fightharp2
END

CHAIN
IF ~~ THEN Z#KIYOJ fightharp2
@228
EXIT

EXTEND_BOTTOM JAREVIA 8
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~ActionOverride("jarev1",EscapeArea())
ActionOverride("jarev2",EscapeArea())
ActionOverride("jarev3",EscapeArea())
ActionOverride("jarev4",EscapeArea())
EscapeArea()~ EXTERN Z#KIYOJ nofightharp2
END

CHAIN
IF ~~ THEN Z#KIYOJ nofightharp2
@229
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@230
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@231
EXIT

// Dermin

INTERJECT_COPY_TRANS2 JADERMIN 6 jadermin-6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@232
== Z#KIYOJ IF ~OR(2) !InParty("Kova") !InMyArea("Kova")
InParty("Kiyone") !InMyArea("Kiyone")~ THEN
@233
END

CHAIN
IF ~Global("JaheiraNotHarper","GLOBAL",1)
GlobalGT("BKiyoJaheira","GLOBAL",2)
Global("ElminsterForgives","GLOBAL",0)
InParty("Jaheira") InMyArea("Jaheira")
Global("BKiyoJahHarp","GLOBAL",0) ~THEN Z#KIYOB KyJahHarp
@234
DO ~SetGlobal("BKiyoJahHarp","GLOBAL",1)~
== BJAHEIR @235
== Z#KIYOB @236
== BJAHEIR @237
== Z#KIYOB @238
= @239
== BJAHEIR @240
== Z#KIYOB @241
= @242
== BJAHEIR
@243
== Z#KIYOB
@244
== BJAHEIR
@245
== Z#KIYOB
@246
== BJAHEIR
@247
EXIT

CHAIN
IF ~Global("ElminsterForgives","GLOBAL",1)
GlobalLT("BKiyoJahHarp","GLOBAL",2)
PartyHasItem("MISC5X")
InParty("Jaheira") InMyArea("Jaheira")~ THEN Z#KIYOJ JahHarpCongrats
@248
== JAHEIRAJ
@249
== Z#KIYOJ
@250
= @251
== JAHEIRAJ IF ~Global("BKiyoJahHarp","GLOBAL",0)~ THEN
@252
== Z#KIYOJ IF ~Global("BKiyoJahHarp","GLOBAL",0)~ THEN
@253
== JAHEIRAJ
@254
== Z#KIYOJ
@255
DO ~SetGlobal("BKiyoJahHarp","GLOBAL",2)~ EXIT

// Saemon Asks Out / Back to Brynnlaw

INTERJECT_COPY_TRANS2 PPSAEM2 19 ppsaem2-19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@256
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@257
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
@258
END

INTERJECT_COPY_TRANS2 PPSAEM3 1 ppsaem3-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@259
== PPSAEM3 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@260
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@261
END

INTERJECT_COPY_TRANS2 PPSAEM3 29 ppsaem3-29
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone")~ THEN
@262
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova") InMyArea("Kiyone") InParty("Kiyone")~ THEN
@263
END

INTERJECT_COPY_TRANS2 PPGITH 3 ppgith-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@264
END


// Irenicus

INTERJECT_COPY_TRANS2 PPWANEV2 4 ppwanev2-4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@265
END

EXTEND_BOTTOM PPIRENI2 39
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~AddXPObject(Player1,68500)
AddXPObject(Player2,68500)
AddXPObject(Player3,68500)
AddXPObject(Player4,68500)
AddXPObject(Player5,68500)
AddXPObject(Player6,68500)
Unlock("Door01")
Unlock("Door02")
Unlock("Door05")
Unlock("Door06")
Unlock("Door07")
Unlock("Door08")
Unlock("Door10")
OpenDoor("Door01")
OpenDoor("Door02")
OpenDoor("Door05")
OpenDoor("Door06")
OpenDoor("Door07")
OpenDoor("Door08")
OpenDoor("Door10")
SetGlobal("OpenJonBedroom","GLOBAL",1)
SetGlobal("YoshimoTeleport","GLOBAL",1)
ApplySpell(Myself,DRYAD_TELEPORT)~ EXTERN Z#KIYOJ ppireni2-39
END

CHAIN
IF ~~ THEN Z#KIYOJ ppireni2-39
@266
EXIT

// Player1 Lonk is Dead
/*
INTERJECT_COPY_TRANS2 PLAYER1 15 player1-15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We haven't much time to waste,so let us go about gathering these mages against Irenicus.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Not too fast though,lest they mistake us for their enemies.~
END
*/

// Saemon Ask Mages

EXTEND_BOTTOM PPSAEM2 8
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~SetGlobal("WackoArmy","GLOBAL",1)
OpenDoor("DOOR12")
EscapeArea()~ EXTERN Z#KIYOJ ppsaem2-8
END

CHAIN
IF ~~ THEN Z#KIYOJ ppsaem2-8
@267
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@268
== Z#KIYOJ
@269
EXIT

// Spectres - free

EXTEND_BOTTOM ELEARB11 3
IF ~InParty("Kova") InMyArea("Kova")~ THEN
DO ~TriggerActivation("Tran1516",TRUE)
AddXPObject(Player1,51250)
AddXPObject(Player2,51250)
AddXPObject(Player3,51250)
AddXPObject(Player4,51250)
AddXPObject(Player5,51250)
AddXPObject(Player6,51250)
DestroySelf()~
EXTERN Z#KOVAJ elearb11-3
END

CHAIN
IF ~~ THEN Z#KOVAJ elearb11-3
@270
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@271
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@272
EXIT

// Spellhold - AR1512 AR1513 AR1515

// Player1 Slayer Transformation

CHAIN
IF ~!Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)
OR(3)
	AreaCheck("AR1512")
	AreaCheck("AR1513")
	AreaCheck("AR1514")
InParty("Kiyone") InMyArea("Kiyone")
Global("Z#KvAskSlayer","GLOBAL",0)
OR (2)
Global("DrowTalk","GLOBAL",5)
Global("SelfTalk","GLOBAL",3)
Global("speakWhenLonkDead","GLOBAL",0)~ THEN Z#KOVAJ postslayer
@273
DO ~SetGlobal("Z#KvAskSlayer","GLOBAL",1)~
== Z#KIYOJ
@274
EXIT

// Player1 - Step Falters

CHAIN
IF ~!Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)
AreaCheck("AR1512")
Global("Z#KyAskFalter","GLOBAL",0)
Global("SelfTalk","GLOBAL",2)
Global("speakWhenLonkDead","GLOBAL",0)~ THEN Z#KIYOJ postfalter
@275
DO ~SetGlobal("Z#KyAskFalter","GLOBAL",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@276
EXIT

// Bodhi Exit

INTERJECT_COPY_TRANS2 PPBODHI4 19 ppbodhi4-19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@277
== Z#KOVAJ IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
@278
END

// Dayce

INTERJECT_COPY_TRANS2 PPJOYE 1 ppjoye-1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@279
END

EXTEND_BOTTOM PPJOYE2 12
IF ~InParty("Kova") InMyArea("Kova")~ THEN
DO ~EraseJournalEntry(61348)
SetGlobal("AsylumDaceGone","GLOBAL",1)
CreateVisualEffectObject("spholy",Myself)
PlaySound("EFF_P15")
DestroySelf()~ EXTERN Z#KOVAJ ppjoye2-12
END

CHAIN
IF ~~ THEN Z#KOVAJ ppjoye2-12
@280
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@281
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@282
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@283
EXIT

// Final Yoshimo redemption

EXTEND_BOTTOM SLILMAT 0
IF ~PartyHasItem("miscbu")
GlobalGT("BKovaYoshi","GLOBAL",2)
InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ giveyoshheart
END

CHAIN
IF ~~ THEN Z#KOVAJ giveyoshheart
@284
== SLILMAT @285
== Z#KOVAJ @286
EXTERN SLILMAT 11

INTERJECT_COPY_TRANS2 SLILMAT 13 slilmat13
== Z#KOVAJ IF ~GlobalGT("BKovaYoshi","GLOBAL",2)
InParty("Kova") InMyArea("Kova")~ THEN
@287
= @288
END

// After Yoshimo dies

CHAIN
IF ~!ActuallyInCombat()
AreaCheck("AR1516")
Dead("Yoshimo")
GlobalGT("BKovaYoshi","GLOBAL",2)
Global("Z#YoshDie","GLOBAL",0)~ THEN Z#KOVAJ yoshdie
@289
DO ~SetGlobal("Z#YoshDie","GLOBAL",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@290
== Z#KOVAJ
@291
EXIT

// Killing Yoshimo YOSHIMOX

EXTEND_BOTTOM YOSHIMOX 2
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Enemy()~ EXTERN Z#KOVAJ yoshimox2
END

CHAIN
IF ~~ THEN Z#KOVAJ yoshimox2
@292
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@293
== YOSHIMOX IF ~GlobalGT("BKovaYoshi","GLOBAL",2)~
@294
== Z#KOVAJ IF ~GlobalGT("BKovaYoshi","GLOBAL",2)~
@295
== YOSHIMOX IF ~GlobalGT("BKovaYoshi","GLOBAL",2)~
@296
EXIT

// ~let our blood washed away our debts forever.~

INTERJECT_COPY_TRANS2 YOSHIMOX 5 yoshimox5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@297
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@298
== YOSHIMOX IF ~InParty("Kova") InMyArea("Kova")~ THEN
@299
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@300
END

// Yoshimo's Betrayal

INTERJECT_COPY_TRANS2 YOSHJ 64 yoshj64
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@301
END

INTERJECT_COPY_TRANS2 YOSHJ 113 yoshj-113
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@302
== Z#KOVAJ IF ~InParty("Kova") !GlobalGT("BKovaYoshi","GLOBAL",2)~ THEN
@303
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("BKovaYoshi","GLOBAL",2)~ THEN
@304
== YOSHJ IF ~InParty("Kova") GlobalGT("BKovaYoshi","GLOBAL",2)~ THEN
@305
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("BKovaYoshi","GLOBAL",2)~ THEN
@306
END

// Yoshimo and Perth

INTERJECT_COPY_TRANS2 YOSHJ 120 yoshj-120
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@307
END

// Yoshimo and Saemon

INTERJECT_COPY_TRANS2 PPSAEM 62 ppsaem62
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") !GlobalGT("BKovaYoshi","GLOBAL",2)~ THEN
@308
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
OR (3)
!InParty("Kova")
!InMyArea("Kova")
GlobalGT("BKovaYoshi","GLOBAL",2)~ THEN
@309
END



// Dumping Imoen

INTERJECT_COPY_TRANS2 IMOEN2 22 imoen22
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@310
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
OR (2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
@311
END



// after Bodhi's chat,PPBODHI2

CHAIN
IF ~Global("AsylumPlot","GLOBAL",41)
AreaCheck("AR1512")
Global("KKAsylumNote","GLOBAL",0)~ THEN Z#KOVAJ SpellholdMaze
@312
DO ~SetGlobal("KKAsylumNote","GLOBAL",1)~
== Z#KIYOJ
@313
== Z#KOVAJ
@314
== Z#KOVAJ IF ~GlobalGT("KKRomance","GLOBAL",0)~ THEN
@315
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",0)~ THEN
@316
== Z#KOVAJ IF ~GlobalGT("KKRomance","GLOBAL",0)~ THEN
@317
EXIT

// Irenicus

INTERJECT_COPY_TRANS2 ppireni1 40 ppireni1-40
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@318
= @319
END

// Lonk the Sane Tour

INTERJECT_COPY_TRANS2 PPDILI 0 ppdili0
== Z#KIYOJ IF ~InParty("Kiyone") Global("ppdili6","GLOBAL",0)~ THEN
@320
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone") Global("ppdili6","GLOBAL",0)~ THEN
@321
END

INTERJECT_COPY_TRANS2 PPWANEV 2 ppwanev2
== Z#KOVAJ IF ~InParty("Kova") Global("ppireni1-14","GLOBAL",0)~ THEN
@322
END

INTERJECT_COPY_TRANS2 PPTIAX 1 pptiax1
== Z#KIYOJ IF ~InParty("Kiyone") Global("pptiax6","GLOBAL",0)~ THEN
@323
END

INTERJECT_COPY_TRANS2 PPIMOEN 0 ppimoen0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@324
= @325
END


// Irenicus' Spellhold Tour

INTERJECT_COPY_TRANS2 PPIRENI1 4 ppireni1-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@326
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@327
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
@328
END

INTERJECT_COPY_TRANS2 PPDILI 6 ppdili6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@320
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@329
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@330
END

INTERJECT_COPY_TRANS2 PPIRENI1 14 ppireni1-14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@331
END

INTERJECT_COPY_TRANS2 PPTIAX 6 pptiax6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@332
END

INTERJECT_COPY_TRANS2 PPIMOEN 6 ppimoen6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@333
END

EXTEND_BOTTOM PPIRENI1 29
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ ppireni1-29
END

CHAIN
IF ~~ THEN Z#KIYOJ ppireni1-29
@334
EXTERN PPIRENI1 30


// Brynnlaw Chapter 4

// Saemon Havarian with Aran PPSAEM 42+ PPARAN2 PPSIME

INTERJECT_COPY_TRANS2 PPSAEM 44 ppsaem44
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@335
END

INTERJECT_COPY_TRANS2 PPSAEM 53 ppsaem53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@336
END

INTERJECT_COPY_TRANS2 PPSIME 3 ppsime3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@337
END

INTERJECT_COPY_TRANS2 PPSIME 6 ppsime6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@338
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@339
END

INTERJECT_COPY_TRANS2 PPSANIK 8 ppsanik8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@340
END

// Innkeeper

EXTEND_BOTTOM PPINN01 5
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("SpawnAssasin","ar1602",3)
SetGlobal("SanikPlot","GLOBAL",1)~ EXTERN Z#KOVAJ ppinn01-5
IF ~!InParty("Kova")
!InParty("Valygar")
!InParty("Edwin")
!InParty("Mazzy")
InParty("Kiyone")~ THEN DO ~SetGlobal("SpawnAssasin","ar1602",3)
SetGlobal("SanikPlot","GLOBAL",1)~ EXTERN Z#KIYOJ ppinn01-5
END

CHAIN
IF ~~ THEN Z#KOVAJ ppinn01-5
@341
END
IF ~InParty("Valygar")~ THEN EXTERN VALYGARJ 80
IF ~!InParty("Valygar")
InParty("Mazzy")~ THEN EXTERN EDWINJ 102
IF ~!InParty("Valygar")
!InParty("Mazzy")
InParty("Edwin")~ THEN EXTERN MAZZYJ 169
IF ~!InParty("Valygar")
!InParty("Edwin")
!InParty("Mazzy")
InParty("Kiyone")~ THEN EXTERN Z#KIYOJ ppinn01-5
IF ~!InParty("Valygar")
!InParty("Edwin")
!InParty("Mazzy")
!InParty("Kiyone")~ THEN REPLY @342 EXTERN PPINN01 6

CHAIN
IF ~~ THEN Z#KIYOJ ppinn01-5
@343
EXTERN PPINN01 6

// Andante and Dirbish

EXTEND_BOTTOM PPDUELC 2
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN DO ~ActionOverride("ppduel1",EscapeArea())
ActionOverride("ppduel2",EscapeArea())
EscapeArea()~ EXTERN Z#KIYOJ ppduelc2
END

CHAIN
IF ~~ THEN Z#KIYOJ ppduelc2
@344
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@345
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@346
EXIT

// Ason

EXTEND_BOTTOM PIRKID01 3
IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN DO ~EscapeArea()~ EXTERN Z#KIYOJ pirkid01
END

EXTEND_BOTTOM PIRKID01 5
IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN DO ~EscapeArea()~ EXTERN Z#KIYOJ pirkid01
END

CHAIN
IF ~~ THEN Z#KIYOJ pirkid01
@347
== Z#KOVAJ
@348
== Z#KIYOJ
@349
== Z#KOVAJ
@350
EXIT

// Ginia

INTERJECT_COPY_TRANS2 PIRCOR02 17 pircor02-27
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@351
END

EXTEND_BOTTOM PIRCOR02 27
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO
~SetGlobal("HelpGinia","GLOBAL",3)
ActionOverride("pirkid01",EscapeArea())
AddexperienceParty(9000)
EraseJournalEntry(51885)
EraseJournalEntry(51888)
EraseJournalEntry(53242)
EraseJournalEntry(54288)
EraseJournalEntry(54289)
EraseJournalEntry(54291)
EscapeArea()~ EXTERN Z#KOVAJ pircor02-27
END

CHAIN
IF ~~ THEN Z#KOVAJ pircor02-27
@352
= @353
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@354
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@355
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@356
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@357
EXIT

// Galvena

EXTEND_BOTTOM PIRMUR01 2
IF ~InParty("Kiyone") !InParty("Keldorn")~ THEN EXTERN Z#KIYOJ pirmur01-2
END

CHAIN
IF ~~ THEN Z#KIYOJ pirmur01-2
@358
EXTERN pirmur01 4

// Perth

INTERJECT_COPY_TRANS2 PPCOWLED 2 ppcowled2
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
@359
DO ~Hide()~
END

// Prior to seeing Pirate Lord

EXTEND_BOTTOM PPDOOR 6
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Unlock("PirateDoor")
OpenDoor("PirateDoor")
SetGlobal("PirateOpen","GLOBAL",1)
SetGlobal("AsylumPlot","GLOBAL",10)~
EXTERN Z#KOVAJ ppdoor
END

EXTEND_BOTTOM PPDOOR 7
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Unlock("PirateDoor")
OpenDoor("PirateDoor")
SetGlobal("PirateOpen","GLOBAL",3)
SetGlobal("AsylumPlot","GLOBAL",10)~
EXTERN Z#KOVAJ ppdoor
END

EXTEND_BOTTOM PPDOOR 8
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Unlock("PirateDoor")
OpenDoor("PirateDoor")
SetGlobal("PirateOpen","GLOBAL",2)
SetGlobal("AsylumPlot","GLOBAL",10)~
EXTERN Z#KOVAJ ppdoor
END

CHAIN
IF ~~ THEN Z#KOVAJ ppdoor
@360
= @361
EXIT








// Tarnor the Hatchetman

INTERJECT_COPY_TRANS2 tarnor 1 tarnor1
== Z#KOVAJ IF ~InParty("Kova") PartyGoldGT(1999) XPLT(Player1,1000000)~ THEN
@362
== Z#KOVAJ IF ~InParty("Kova") !XPLT(Player1,1000000)~ THEN
@363
END

// Salvanas

CHAIN
IF ~!InPartySlot(LastTalkedToBy,0)
Global("KiyoSalv","GLOBAL",0)
Name("Kiyone",LastTalkedToBy)~ THEN SALVANAS TalkKiyone1
@364
DO ~SetGlobal("KiyoSalv","GLOBAL",1)~
== Z#KIYOJ
@365
== SALVANAS
@366
== Z#KIYOJ
@367
== SALVANAS
@368
== Z#KIYOJ
@369
== SALVANAS
@370
== Z#KIYOJ
@371
== SALVANAS
@372
== Z#KIYOJ
@373
EXIT

CHAIN
IF ~!InPartySlot(LastTalkedToBy,0)
GlobalGT("KiyoSalv","GLOBAL",0)
Name("Kiyone",LastTalkedToBy)~ THEN SALVANAS TalkKiyone2
@374
== Z#KIYOJ
@375
== SALVANAS
@376
== Z#KIYOJ @377
= @378
== SALVANAS
@379
== Z#KIYOJ
@380
EXIT



// Serving Aran Linvail - 1st

INTERJECT_COPY_TRANS2 ARAN 4 aran4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@381
= @382
= @383
END

// Mook
EXTEND_BOTTOM MOOK 1
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ mook1
END

CHAIN
IF ~~ THEN Z#KIYOJ mook1
@384
EXTERN MOOK 3

// Lassal

EXTEND_BOTTOM LASSAL 4
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("LassalTalk","LOCALS",1)
ReallyForceSpell(Myself,VAMPIRE_GAS_FORM_CHANGE)~ EXTERN Z#KOVAJ lassal4
END

CHAIN
IF ~~ THEN Z#KOVAJ lassal4
@385
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@386
EXIT

// Serving Aran Linvail - 2nd

INTERJECT_COPY_TRANS2 ARAN 20 aran20
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@387
= @388
END

// Jaylos & Caehan

INTERJECT_COPY_TRANS2 JAYLOS 0 jaylos0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@389
END

EXTEND_BOTTOM JAYLOS 1
IF ~InParty("Kova") InMyArea("Kova")~ THEN REPLY @390 EXTERN Z#KOVAJ jaylos1
END

CHAIN
IF ~~ THEN Z#KOVAJ jaylos1
@391
== CAEHAN
@392
= @393
== JAYLOS
@394
== Z#KOVAJ
@395
== JAYLOS
@396
== Z#KOVAJ
@397
= @398
== JAYLOS
@399
== Z#KOVAJ
@400
= @401
= @402
== JAYLOS
@403
== Z#KOVAJ
@404
== JAYLOS
@405
== Z#KOVAJ
@406
= @407
DO ~SetCutSceneLite(TRUE)
EquipMostDamagingMelee()
Hide()
ReallyForceSpell(Myself,WIZARD_INVISIBILITY)
JumpToPoint([625.788])
SetGlobal("JaylosFree","GLOBAL",1)
SmallWait(5)
CreateCreature("BODFGT03",[610.773],6)
ActionOverride("BODFGT03",ChangeAIScript("",OVERRIDE))~ EXIT

BEGIN BODFGTSP

CHAIN
IF ~Global("JaylosFree","GLOBAL",1)
!Dead("Jaylos") !Dead("Caehan")~ THEN BODFGTSP bodfgtsp1
@408
== JAYLOS
@409
== BODFGTSP
@410
== JAYLOS
@411
== BODFGTSP
@412
DO ~SetGlobal("gracentold","GLOBAL",1)~
== CAEHAN
@413
== JAYLOS
@414
== BODFGTSP
@415
= @416
== CAEHAN
@417
== BODFGTSP
@418
DO ~SetCutSceneLite(TRUE)
SetGlobal("JaylosFree","GLOBAL",2)
Face(6)
Enemy()
ActionOverride("Kova",Attack("BODFGT03")
Wait(1)
ActionOverride("Kova",ReallyForceSpell("BODFGT03",WIZARD_FLAME_ARROW)~ EXIT

CHAIN
IF ~Global("JaylosFree","GLOBAL",2)
Dead("BODFGT03")~ THEN JAYLOS gracendead
@419
== CAEHAN
@420
== Z#KOVAJ
@421
= @422
END
IF ~~ THEN REPLY @423 EXTERN Z#KOVAJ freejaycae
IF ~~ THEN REPLY @424 EXTERN Z#KOVAJ killjaycae

CHAIN
IF ~~ THEN Z#KOVAJ killjaycae
@425
== JAYLOS @426
DO ~ActionOverride("CAEHAN",Enemy())
SetGlobal("JaylosFree","GLOBAL",7)
Enemy() ~ EXIT

CHAIN
IF ~~ THEN Z#KOVAJ freejaycae
@427
= @428
== JAYLOS @429
== Z#KOVAJ @430
= @431
== JAYLOS @432
DO ~SetGlobal("JaylosSpawn","AR0511",2)
ActionOverride("CAEHAN",EscapeArea())
SetGlobal("JaylosFree","GLOBAL",3)
RealSetGlobalTimer("jaylosfreeT","GLOBAL",12)
EscapeArea() ~ EXIT

CHAIN
IF ~RealGlobalTimerExpired("jaylosfreeT","GLOBAL")
InParty("Kova")
!Dead("Jaylos")
!Dead("Caehan")
Global("JaylosFree","GLOBAL",3)~ THEN Z#KIYOJ letjaylosgo
@433
DO ~SetGlobal("JaylosFree","GLOBAL",4)
SetGlobal("JaylosSpawn","AR0511",2)
SetGlobal("Sprite_Is_DeadJaylos","GLOBAL",1)
SetGlobal("Sprite_Is_DeadCaehan","GLOBAL",1)~
== Z#KOVAJ
@434
== Z#KIYOJ
@435
== Z#KOVAJ
@436
== Z#KIYOJ
@437
= @438
== Z#KOVAJ
@439
== Z#KIYOJ
@440
= @441
== Z#KOVAJ
@442
= @443
== Z#KIYOJ
@444
= @445
== Z#KOVAJ
@446
== Z#KIYOJ
@447
== Z#KOVAJ
@448
== Z#KIYOJ
@449
DO ~SetGlobal("JaylosSpawn","AR0511",2)~ EXIT

// Serving Aran Linvail - 3rd

INTERJECT_COPY_TRANS2 ARAN 22 aran22
== ARAN IF ~InParty("Kova") InMyArea("Kova")~ THEN
@450
= @451
DO ~IncrementGlobal("ShadowHunt","GLOBAL",1)~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@452
== ARAN IF ~InParty("Kova") InMyArea("Kova")~ THEN
@453
END

INTERJECT_COPY_TRANS2 ARAN 14 aran14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@454
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@455
END

EXTEND_BOTTOM LASSAL02 7
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Enemy()~ EXTERN Z#KOVAJ lassal02-7
END

CHAIN
IF ~~ THEN Z#KOVAJ lassal02-7
@456
EXIT

// After Ending Lassal

INTERJECT_COPY_TRANS2 ARAN 42 aran42
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@457
END

INTERJECT_COPY_TRANS2 ARAN 45 aran45
== ARAN IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@458
== Z#KIYOJ IF ~InParty("Kiyone")
GlobalGT("JermClue","GLOBAL",0)
GlobalGT("DayvClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)~ THEN
@459
== Z#KIYOJ IF ~InParty("Kiyone")
OR(3)
Global("JermClue","GLOBAL",0)
Global("DayvClue","GLOBAL",0)
Global("LOAClue","GLOBAL",0)~ THEN
@460
= @461
END

INTERJECT_COPY_TRANS2 ARAN 48 aran48
== Z#KIYOJ IF ~InParty("Kiyone")
OR(3)
Global("JermClue","GLOBAL",0)
Global("DayvClue","GLOBAL",0)
Global("LOAClue","GLOBAL",0)~ THEN
@462
== Z#KIYOJ IF ~InParty("Kiyone")
GlobalGT("JermClue","GLOBAL",0)
GlobalGT("DayvClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)~ THEN
@463
END






// Planar Sphere

// Tolgerias
INTERJECT_COPY_TRANS2 MADEEN 1 madeen1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@464
= @465
END

INTERJECT_COPY_TRANS2 TOLGER 75 tolger75
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@466
END

INTERJECT_COPY_TRANS2 TOLGER 18 tolger18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@467
= @468
END

// Valygar
INTERJECT_COPY_TRANS2 VALYGAR 4 valygar4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@469
= @470
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@471
END

INTERJECT_COPY_TRANS2 VALYGAR 8 valygar8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@469
= @470
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@471
END

INTERJECT_COPY_TRANS2 VALYGAR 12 valygar12
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@469
= @470
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@471
END

INTERJECT_COPY_TRANS2 VALYGAR 28 valygar28
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@472
DO ~LeaveParty() Enemy()
ActionOverride("Valygar",Enemy())~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@473
DO ~LeaveParty() Enemy()
ActionOverride("Valygar",Enemy())~
END

INTERJECT_COPY_TRANS2 VALYGAR 43 valygar43
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@474
END

INTERJECT_COPY_TRANS2 VALYGAR 44 valygar44
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@475
= @476
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@477
END

// Knight of Solamnia
INTERJECT_COPY_TRANS2 OBSSOL01 2 obssol01-2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@478
END

// Lavok
INTERJECT_COPY_TRANS2 LAVOK 2 lavok-2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@479
END

INTERJECT_COPY_TRANS2 LAVOK 33 lavok-33
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@480
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@481
END

INTERJECT_COPY_TRANS2 LAVOK 26 lavok-26
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@482
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@481
END

// Tolgerias Dead
CHAIN
IF ~Dead("tolger")
AreaCheck("AR0412")
!ActuallyInCombat()
Global("tolgerdie","LOCALS",0)~ THEN Z#KOVAJ tolgerdie
@483
DO ~SetGlobal("tolgerdie","LOCALS",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@484
== Z#KOVAJ IF ~InParty("Valygar")~ THEN
@485
== VALYGARJ IF ~InParty("Valygar")~ THEN
@486
EXIT

// End of Lavok
INTERJECT_COPY_TRANS2 LAVOK 57 lavok-57
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@487
END

INTERJECT_COPY_TRANS2 VALYGARP 5 valygarp5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@488
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@489
END

INTERJECT_COPY_TRANS2 VALYGARJ 110 valygarj110
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@488
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@489
END


EXTEND_BOTTOM LAVOK 27
IF ~InParty("Kova") !InParty("Valygar")~ THEN DO ~
DestroyItem("MINHP1")
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
Kill(Myself)~ EXTERN Z#KOVAJ lavokdie
END

CHAIN
IF ~~ THEN Z#KOVAJ lavokdie
@490
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@489
EXIT

EXTEND_BOTTOM LAVOK 30
IF ~InParty("Kova") !InParty("Valygar")~ THEN DO ~
DestroyItem("MINHP1")
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("PCSphere","GLOBAL",1)
Kill(Myself)~ EXTERN Z#KOVAJ lavokdie
END

EXTEND_BOTTOM LAVOK 60
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~
DestroyItem("MINHP1")
EraseJournalEntry(6509)
EraseJournalEntry(6534)
EraseJournalEntry(7994)
EraseJournalEntry(7995)
EraseJournalEntry(8126)
EraseJournalEntry(8127)
EraseJournalEntry(8128)
EraseJournalEntry(8129)
EraseJournalEntry(10128)
EraseJournalEntry(16302)
EraseJournalEntry(16343)
EraseJournalEntry(16524)
EraseJournalEntry(16544)
EraseJournalEntry(16569)
EraseJournalEntry(20179)
EraseJournalEntry(20365)
EraseJournalEntry(20453)
EraseJournalEntry(23371)
EraseJournalEntry(23409)
EraseJournalEntry(3422)
EraseJournalEntry(6557)
EraseJournalEntry(7241)
EraseJournalEntry(9705)
EraseJournalEntry(9919)
EraseJournalEntry(10047)
EraseJournalEntry(23551)
SetGlobal("PlayerHasStronghold","GLOBAL",1)
SetGlobal("PCSphere","GLOBAL",1)~ EXTERN Z#KOVAJ lavokdienosun
END

CHAIN
IF ~~ THEN Z#KOVAJ lavokdienosun
@491
== Z#KOVAJ IF ~!InParty("Valygar")~ THEN
@492
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Valygar")~ THEN
@493
EXIT



// Mekrath and Planar Prison

INTERJECT_COPY_TRANS2 RAELIS 33 raelis33
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@494
END

INTERJECT_COPY_TRANS2 RAELIS 35 raelis35
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@495
END

INTERJECT_COPY_TRANS2 RAELIS 47 raelis47
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@496
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@497
END

INTERJECT_COPY_TRANS2 RAELIS 51 raelis51
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@498
END

INTERJECT_COPY_TRANS2 RAELIS 45 raelis45
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@499
END

INTERJECT_COPY_TRANS2 HAERDA 198 haerda198
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@500
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@501
END

INTERJECT_COPY_TRANS2 RAELIS 9 raelis9
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@502
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@503
END

INTERJECT_COPY_TRANS2 BOUNHA 4 bounha4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@504
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@505
END

INTERJECT_COPY_TRANS2 MEKRAT 0 mekrat0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@506
END

EXTEND_BOTTOM MEKRAT 1
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ mekrat1
END

CHAIN
IF ~~ THEN Z#KOVAJ mekrat1
@507
EXTERN MEKRAT 7

INTERJECT_COPY_TRANS2 HAERDA 25 haerda25
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@508
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
@509
END

INTERJECT_COPY_TRANS2 HAERDA 0 haerda0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@510
END

INTERJECT_COPY_TRANS2 PBHUNT01 1 pbhunt01-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@511
END

INTERJECT_COPY_TRANS2 PBHUNT01 5 pbhunt01-5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@512
END

INTERJECT_COPY_TRANS2 PTAGGET 2 ptagget2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@513
END

INTERJECT_COPY_TRANS2 PTAGGET 17 ptagget17
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@514
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@515
END

INTERJECT_COPY_TRANS2 PTAGGET 27 ptagget27
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@516
END

EXTEND_BOTTOM PTAGGET 35
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~AddexperienceParty(5000)
EscapeArea()~ EXTERN Z#KOVAJ ptagget35
END

CHAIN
IF ~~ THEN Z#KOVAJ ptagget35
@517
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@518
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@519
EXIT

INTERJECT_COPY_TRANS2 RAELIS 59 raelis59
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@520
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@521
END

INTERJECT_COPY_TRANS2 RAELIS 60 raelis60
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@520
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@521
END




// Firkraag's Quest

INTERJECT_COPY_TRANS2 PALKNI05 0 palkni05-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@522
END

INTERJECT_COPY_TRANS2 GARREN 1 garren1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@523
= @524
END

INTERJECT_COPY_TRANS2 GARREN 7 garren7
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@525
END

INTERJECT_COPY_TRANS2 GARREN 24 garren24
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@526
= @527
END

INTERJECT_COPY_TRANS2 GARREN 25 garren25
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@528
= @527
END

INTERJECT_COPY_TRANS2 GARREN 35 garren35
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@529
END

INTERJECT_COPY_TRANS2 GARREN 36 garren36
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@529
END

INTERJECT_COPY_TRANS2 GARREN 37 garren37
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@529
END

EXTEND_BOTTOM GARJUM 5
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
DO ~GiveItem("misc6u",Player1)
EscapeArea()~ EXTERN Z#KIYOJ firkchal
END

CHAIN
IF ~~ THEN Z#KIYOJ firkchal
@530
== Z#KIYOJ IF ~InParty("Kova") Global("gotaskabtfirk","GLOBAL",0)~ THEN
@531
END
IF ~!Global("KKJoin","GLOBAL",1)~ THEN EXTERN Z#KIYOJ firkchalfindkova
IF ~Global("gotaskabtfirk","GLOBAL",1)~ THEN EXIT
IF ~Global("KKJoin","GLOBAL",1) !InParty("Kova")~ THEN EXIT
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("gotaskabtfirk","GLOBAL",1)~ EXTERN Z#KOVAJ kvabtfirk

CHAIN
IF ~~ THEN Z#KIYOJ firkchalfindkova
@532
EXIT

CHAIN
IF ~AreaCheck("AR1200")
InParty("Kova")
!RealGlobalTimerNotExpired("askabtfirk","GLOBAL")
Global("KKJoin","GLOBAL",1)
Global("gotaskabtfirk","GLOBAL",0)
!Dead("firrak01")
Global("Kidnap","GLOBAL",3)~ THEN Z#KIYOJ askabtfirk
@533
= @534
DO ~SetGlobal("gotaskabtfirk","GLOBAL",1)~
== Z#KOVAJ
@535
== Z#KIYOJ
@536
== Z#KOVAJ
@537
= @538
== Z#KIYOJ
@539
EXTERN Z#KOVAJ kvabtfirk

CHAIN
IF ~~ THEN Z#KOVAJ kvabtfirk
@540
== Z#KIYOJ
@541
== Z#KOVAJ
@542
= @543
== Z#KIYOJ
@544
== Z#KOVAJ
@545
EXIT

INTERJECT_COPY_TRANS2 FIRORC01 0 firorc01-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@546
== FIRORC01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@547
END

// Werewolf Ambush

INTERJECT_COPY_TRANS2 FIRWLF01 2 firwlf01-2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@548
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
@549
END

// GarKid

INTERJECT_COPY_TRANS2 GARKID01 28 garkid01-28
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@550
== Z#KIYOJ IF ~InParty("Kova") InParty("Kova")~ THEN
@551
END

INTERJECT_COPY_TRANS2 GARKID02 27 garkid02-27
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@550
== Z#KIYOJ IF ~InParty("Kova") InParty("Kova")~ THEN
@551
END

// Firkraag

INTERJECT_COPY_TRANS2 FIRKRA02 0 firkra02-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@552
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@553
END

INTERJECT_COPY_TRANS2 FIRKRA02 15 firkra02-15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@554
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@555
END

INTERJECT_COPY_TRANS2 FIRKRA02 21 firkra02-21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@556
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@557
END

INTERJECT_COPY_TRANS2 FIRMAG01 0 firmag01-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@558
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@559
END



// Samia

INTERJECT_COPY_TRANS2 SAMIA 12 samia12
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@560
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Kova")~ THEN
@561
END

INTERJECT_COPY_TRANS2 SAMIA 24 samia24
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@562
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@563
END



// Mae'var's Guild

INTERJECT_COPY_TRANS2 RENAL 24 renal24
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@564
END

CHAIN
IF ~AreaCheck("AR0300")
InParty("Kiyone")
Global("RenalJob","GLOBAL",1)
Global("postrenal","LOCALS",0)~ THEN Z#KIYOJ renjob1
@565
DO ~SetGlobal("postrenal","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@566
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@567
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@568
== Z#KIYOJ IF ~OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
@569
EXIT

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedTo(0)
InParty("Kova")
See("Kova")~ THEN MAEVAR MaeSeeKova0
@570
= @571
EXTERN Z#KOVAJ MaeSeeMe

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedToGT(0)
InParty("Kova")
See("Kova")~ THEN MAEVAR MaeSeeKova1
@572
EXTERN Z#KOVAJ MaeSeeMe

CHAIN
IF ~~ THEN Z#KOVAJ MaeSeeMe
@573
DO ~SetGlobal("MaeSeeKova","LOCALS",1)~
== MAEVAR @574
= @575
DO ~Shout(89) Enemy()~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@576
EXIT

INTERJECT_COPY_TRANS2 EDWIN 8 edwin8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@577
END

CHAIN
IF ~GlobalGT("EdwinJob","GLOBAL",0)
AreaCheck("AR0300")
Global("sayedwin","LOCALS",0)~ THEN Z#KOVAJ notlikeedwin
@578
DO ~SetGlobal("sayedwin","LOCALS",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@579
EXIT

INTERJECT_COPY_TRANS2 EDWIN 26 edwin26
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@580
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@581
END

INTERJECT_COPY_TRANS2 RENAL 52 renal52
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@582
= @583
END

EXTEND_BOTTOM EMBARL 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ embarl0
END

CHAIN
IF ~~ THEN Z#KIYOJ embarl0
@584
EXTERN EMBARL 2

INTERJECT_COPY_TRANS2 EMBARL 3 embarl3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@585
END

CHAIN
IF ~PartyHasItem("MISC4U")
Global("KvEmbarl","LOCALS",0)
!Dead("Embarl")
!InMyArea("Embarl")~ THEN Z#KOVAJ embarlok
@586
DO ~SetGlobal("KvEmbarl","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@587
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@588
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@589
EXIT

INTERJECT_COPY_TRANS2 RENAL 53 renal53
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@582
= @583
END

INTERJECT_COPY_TRANS2 RENAL 63 renal63
== Z#KIYOJ IF ~InParty("Kiyone") ~ THEN
@590
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@591
END

INTERJECT_COPY_TRANS2 RENAL 69 renal69
== Z#KIYOJ IF ~InParty("Kiyone")
!InParty("Kova")
Global("KKJoin","GLOBAL",0)~ THEN
@592
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)
ReputationInc(-2)~
END

// INTERJECT_COPY_TRANS2 SHTHLT01 shthlt01-44 // Goshan kill pple 44 to 47 Option 1
// INTERJECT_COPY_TRANS2 SHTHLT01 shthlt01-44 // Morsa Slaves pple 96 to 99 Option 1

/*
== Z#KOVAJ ~I'm sorry,but I cannot continue with one who condones such misdeeds. Good day,<CHARNAME>,we will not meet again.~
== Z#KIYOJ ~This act you have sanctioned is an affront to all that is just. In memory of our time together,I will not lift my hand against you,but our travels together end today,forever. If we meet again it will be as enemies.~
*/



// Slaver Compound

EXTEND_BOTTOM HLSION 1
IF ~Global("HeardOfSlaveLords","GLOBAL",0)
InParty("Kiyone")~ THEN EXTERN Z#KIYOJ hlsion1
END

CHAIN
IF ~~ THEN Z#KIYOJ hlsion1
@593
EXTERN HLSION 2

CHAIN
IF ~AreaCheck("AR0906")
!ActuallyInCombat()
Global("HeardOfSlaveLords","GLOBAL",0)
Global("TalkedToHlsion","GLOBAL",4)~ THEN Z#KIYOJ slavecomp1
@594
DO ~SetGlobal("sionplace","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@595
== Z#KIYO IF ~InParty("Kova") InMyArea("Kova")~ THEN
@596
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@597
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@598
EXIT



// Cromwell

CHAIN
IF WEIGHT #-1 ~InParty("Kova") InMyArea("Kova")
Global("KKFindCrom","GLOBAL",1)~ THEN WSMITH01 KKFindCrom
@599
== WSMITH01 IF ~Global("GreetCrom","GLOBAL",0)~ THEN
@600
DO ~SetGlobal("GreetCrom","GLOBAL",1)~
= @601
== Z#KOVAJ
@602
DO ~SetGlobal("KKFindCrom","GLOBAL",2)~
== WSMITH01
@603
== Z#KOVAJ
@604
== WSMITH01
@605
= @606
= @607
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)
Global("YoshiKnowCrom","GLOBAL",0)~ THEN
@608
DO ~SetGlobal("YoshiKnowCrom","GLOBAL",1)~
== Z#KOVAJ
@609
== WSMITH01
@610
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@611
== WSMITH01
@612
== Z#KOVAJ
@613
= @614
== WSMITH01
@615
EXIT

EXTEND_BOTTOM WSMITH01 58
IF ~InParty("Yoshimo") InMyArea("Yoshimo")
Global("BKovaYoshi","GLOBAL",3)
InParty("Kova") InMyArea("Kova")
Global("YoshiKnowCrom","GLOBAL",0)~ EXTERN YOSHJ YoshiKvCrom
END

CHAIN
IF ~~ THEN YOSHJ YoshiKvCrom
@616
DO ~SetGlobal("YoshiKnowCrom","GLOBAL",1)~
== Z#KOVAJ
@617
== YOSHJ
@618
COPY_TRANS WSMITH01 58
// EXTERN WSMITH01 13

INTERJECT_COPY_TRANS2 WSMITH01 0 wsmith01-0
== WSMITH01 IF ~InParty("Kova") InMyArea("Kova")
Global("GreetCrom","GLOBAL",0)~ THEN
@619
= @620
== Z#KOVAJ
@621
== WSMITH01
@622
DO ~SetGlobal("GreetCrom","GLOBAL",1)~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
@616
DO ~SetGlobal("YoshiKnowCrom","GLOBAL",1)~
== Z#KOVAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
@617
END

INTERJECT_COPY_TRANS2 WSMITH01 58 wsmith01-58
== WSMITH01 IF ~InParty("Kova")
InMyArea("Kova")
Global("GreetCrom","GLOBAL",0)~ THEN
@623
= @620
== Z#KOVAJ
@621
== WSMITH01
@624
DO ~SetGlobal("GreetCrom","GLOBAL",1)~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
@616
DO ~SetGlobal("YoshiKnowCrom","GLOBAL",1)~
== Z#KOVAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
@625
END



// Fallen Paladins

// Ryan Trawl
INTERJECT_COPY_TRANS2 KAYL2 6 kayl2-6
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@626
== Z#KIYOJ IF ~InParty("Kiyone") InParty("Kova") ~ THEN
@627
== Z#KOVAJ IF ~InParty("Kiyone") InParty("Kova") ~ THEN
@628
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Kova") ~ THEN
@629
END

INTERJECT_COPY_TRANS2 KAYL2 14 kayl14
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@630
= @631
= @632
END

INTERJECT_COPY_TRANS2 KAYL2 18 kayl18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@633
= @634
END

INTERJECT_COPY_TRANS2 KAYPAL02 6 kaypal02-6
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@635
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
@636
END

// Anarg
/* overkill
INTERJECT_COPY_TRANS2 KAYPAL01 0 kaypal01-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We have changed our minds and decided not to join you.~
== KAYPAL01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You dare refuse my offer? But wait,you are not the voice of this band.~
= ~Well,the decision lies with you,<CHARNAME>. Will you join or will you test me?~
END
*/






//Buried Alive

// Tirdir
INTERJECT_COPY_TRANS2 TIRDIR 0 tirdir0
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@637
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Kova") ~ THEN
@638
END

// See Camitis Running Away
CHAIN
IF ~See("Camitis")
AreaCheck("AR0500")
Global("Camitis","LOCALS",0)~ THEN Z#KIYOJ Camitis
@639
DO ~SetGlobal("Camitis","LOCALS",1)~
== CAMITIS
@640
DO ~Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@641
EXIT

// Elgea
INTERJECT_COPY_TRANS2 Elgea 0 elgea0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@642
== Z#KIYOJ IF ~InParty("Kiyone") InParty("Kova") InMyArea("Kova") InMyArea("Kiyone")~ THEN
@643
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
@644
END

EXTEND_BOTTOM ELGEA 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ elgea6
END

CHAIN
IF ~~ THEN Z#KIYOJ elgea6
@645
= @646
DO ~IncrementGlobal("Break","LOCALS",1)~
== ELGEA
@647
EXTERN elgea 10







// Kangaxx's Skull
INTERJECT_COPY_TRANS2 HLSKULL 1 hlskull1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@648
END

INTERJECT_COPY_TRANS2 HLSKULL 7 hlskull7
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@649
END

INTERJECT_COPY_TRANS2 HLSKULL 10 hlskull10
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
@650
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
@651
END

EXTEND_BOTTOM hlskull 14
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ hlskull14
END

CHAIN
IF ~~ THEN Z#KIYOJ hlskull14
@652
== HLSKULL
@653
DO ~SetGlobal("UsedCrypt0331","GLOBAL",2)
TakePartyItem("miscaw") // Golden Arm and Leg
TakePartyItem("miscay") // Golden Torso
CreateVisualEffect("SPRAISED",[633.518])
Wait(4)
CreateCreature("HLKANG",[633.518],2) // Kangaxx the Lich
DestroySelf()~
EXIT

EXTEND_BOTTOM HLKANG 3
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~ReallyForceSpell(Myself,ZOMBIE_SICKNESS)
ScreenShake([5.5],5)
ReallyForceSpell(Myself,LICH_REPLACE_SELF)~ EXTERN Z#KOVAJ hlkang3
END

CHAIN
IF ~~ THEN Z#KOVAJ hlkang3
@654
EXIT




// Twisted Rune Area
CHAIN
IF ~AreaCheck("AR1008")
Global("twistedrune","LOCALS",0)~ THEN Z#KOVAJ twistedrune
@655
DO ~SetGlobal("twistedrune","LOCALS",1)~
EXIT

// Shangalar
EXTEND_BOTTOM HLSHANG 4
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554]) Wait(1)
CreateVisualEffect("SPFLSRIN",[962.554])
ActionOverride("hlshang",JumpToPoint([532.744]))
SetGlobal("ShangalarMove","AR1008",1)~
EXTERN Z#KOVAJ hlshang47
END

EXTEND_BOTTOM HLSHANG 7
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554]) Wait(1)
CreateVisualEffect("SPFLSRIN",[962.554])
ActionOverride("hlshang",JumpToPoint([532.744]))
SetGlobal("ShangalarMove","AR1008",1)~
EXTERN Z#KOVAJ hlshang47
END

CHAIN
IF ~~ THEN Z#KOVAJ hlshang47
@656
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@657
EXIT




// Enter Illithid Lair

CHAIN
IF ~AreaCheck("AR0711")
Global("SewerIll","LOCALS",0)
Dead("MINDAL01")
!ActuallyInCombat()~ THEN Z#KIYOJ sewerill2
@658
DO ~SetGlobal("SewerIll","LOCALS",2)~
EXIT


// Den of Seven Vales
INTERJECT_COPY_TRANS2 SEVPAT01 1 sevpat01-1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@659
END


// Kamir
INTERJECT_COPY_TRANS2 KAMIR 13 kamir13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@660
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@661
END

INTERJECT_COPY_TRANS2 KAMIR 23 kamir23
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@662
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@663
END

// Arenthis
INTERJECT_COPY_TRANS2 ARENTHIS 4 arenthis4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@664
DO ~IncrementGlobal("Break","LOCALS",1)~
END

INTERJECT_COPY_TRANS2 ARENTHIS 9 arenthis9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@665
== Z#KOVAJ IF ~InParty("Kova") Global("TalkedToKamir","GLOBAL",1)~ THEN
@666
END






// Kids Adventuring
INTERJECT_COPY_TRANS2 UHKID01 3 uhkid01-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@667
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@668
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone") GlobalGT("KKRomance","GLOBAL",0)~ THEN
@669
END




// Chicken
EXTEND_BOTTOM GEMFAR02 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ gemfar02-6
END

CHAIN
IF ~~ THEN Z#KIYOJ gemfar02-6
@670
EXTERN GEMFAR02 9

EXTEND_BOTTOM GEMFAR02 9
IF ~InParty("Kiyone") PartyGoldGT(99)~ THEN DO ~TakePartyGold(100)
DestroyGold(100)~ EXTERN Z#KIYOJ gemfar02-91
IF ~InParty("Kiyone") PartyGoldGT(49) PartyGoldLT(100)~ THEN DO ~TakePartyGold(50)
DestroyGold(50)~ EXTERN Z#KIYOJ gemfar02-92
END

CHAIN
IF ~~ THEN Z#KIYOJ gemfar02-91
@671
EXTERN GEMFAR02 14

CHAIN
IF ~~ THEN Z#KIYOJ gemfar02-92
@672
EXTERN GEMFAR02 13







// Harpers and Xzar

// Renfeld
INTERJECT_COPY_TRANS2 renfeld 8 renfeld8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@673
DO ~IncrementGlobal("Break","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@674
DO ~IncrementGlobal("Break","LOCALS",1)~
END

EXTEND_BOTTOM renfeld 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN DO ~GiveItemCreate("MISC5F",LastTalkedToBy,0,0,0) // Renfeld's Body
SetGlobalTimer("RenfeldDeath","GLOBAL",TEN_DAYS)
ActionOverride(" ",DestroySelf())~ EXTERN Z#KIYOJ renfeld6
END

CHAIN
IF ~~ THEN Z#KIYOJ renfeld6
@675
END
IF ~!InParty("Minsc")
!InParty("Aerie")
!InParty("Anomen")
!InParty("Korgan")~ EXIT
IF ~InParty("Minsc")~ EXTERN MINSCJ 125
IF ~!InParty("Minsc")
InParty("Aerie")~ EXTERN AERIEJ 86
IF ~!InParty("Minsc")
!InParty("Aerie")
InParty("Anomen")~ EXTERN ANOMENJ 219
IF ~!InParty("Minsc")
!InParty("Aerie")
!InParty("Anomen")
InParty("Korgan")~ EXTERN KORGANJ 94


// Xzar
INTERJECT_COPY_TRANS2 LYROS 24 lyros24
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@676
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@677
END

INTERJECT_COPY_TRANS2 LYROS 19 lyros19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@678
END

// Lusette
INTERJECT_COPY_TRANS2 LUSETTE 4 lusette4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@679
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@680
END





// Wellyn
INTERJECT_COPY_TRANS2 wellyn 8 wellyn8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@681
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@682
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@683
END

EXTEND_BOTTOM wellyn 9
IF ~InParty("Kiyone") PartyHasItem("MISC5L")~ THEN EXTERN Z#KIYOJ wellyn9
END

CHAIN
IF ~~ THEN Z#KIYOJ wellyn9
@684
== WELLYN
@685
DO ~AddJournalEntry(47705,QUEST_DONE)
EraseJournalEntry(34337)
AddexperienceParty(15500)
TakePartyItem("MISC5L") // Littleman The Stuffed Bear
SetGlobal("WellynPeace","GLOBAL",1)
MoveToPointNoInterrupt([1618.1760])
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()~
== Z#KIYOJ
@686
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@687
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@688
EXIT

// Llynis

EXTEND_BOTTOM llynis 0
IF ~InParty("Kiyone") Global("Littleman","GLOBAL",1)~ THEN EXTERN Z#KIYOJ llynisgo
END

EXTEND_BOTTOM llynis 13
IF ~InParty("Kiyone") Global("Littleman","GLOBAL",1)~ THEN EXTERN Z#KIYOJ llynisgo
END

CHAIN
IF ~~ THEN Z#KIYOJ llynisgo
@689
== LLYNIS
@690
= @691
== Z#KIYOJ
@692
== LLYNIS
@693
== Z#KIYOJ
@694
== LLYNIS
@695
DO ~Enemy()~
== Z#KIYOJ
@696
EXIT



// Rumar
EXTEND_BOTTOM RUMAR 11
IF ~InParty("Kova")
GlobalLT("KKRomance","GLOBAL",2)~ THEN EXTERN RUMAR rumar11
END

CHAIN
IF ~~ THEN RUMAR rumar11
@697
DO ~SetGlobal("RumarDidSpeak","AR0406",1)
ActionOverride("Tiana",EscapeAreaObject("Tran0400"))
EscapeAreaObject("Tran0400")~
== Z#KOVAJ
@698
EXIT

EXTEND_BOTTOM RUMAR 12
IF ~InParty("Kova")
GlobalLT("KKRomance","GLOBAL",2)~ THEN EXTERN PRISS rumar12
END

CHAIN
IF ~~ THEN PRISS rumar12
@699
DO ~SetGlobal("RumarDidSpeak","AR0406",1)
ActionOverride("Rumar",EscapeAreaObject("Tran0400"))
EscapeAreaObject("Tran0400")~
== Z#KOVAJ
@700
EXIT

// Bubbles
INTERJECT_COPY_TRANS2 Bubbles 1 bubbles1
== Z#KOVAJ IF ~InParty("Kova")
GlobalLT("KKRomance","GLOBAL",2)~ THEN
@701
= @702
END



// Bridge Murders

// Aegisfield
INTERJECT_COPY_TRANS2 INSPECT 9 inspect9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@703
END

INTERJECT_COPY_TRANS2 INSPECT 13 inspect13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@704
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@705
END

INTERJECT_COPY_TRANS2 INSPECT 29 inspect29
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@706
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@707
== INSPECT
@708
END


// Rampah

EXTEND_BOTTOM murdbegg 8
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ murdbegg8
END

CHAIN
IF ~~ THEN Z#KIYOJ murdbegg8
@709
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
@710
END
IF ~PartyGoldGT(99)~ THEN REPLY @711
DO ~GiveItem("MISC5G",LastTalkedToBy) // Exotic Hide
TakePartyGold(100)~ EXTERN MURDBEGG 12
IF ~~ THEN REPLY @712 EXTERN MURDBEGG 9

// Rose
INTERJECT_COPY_TRANS2 murdgirl 0 murdgirl0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@713
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@714
END

INTERJECT_COPY_TRANS2 murdgirl 1 murdgirl1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@713
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") GlobalGT("KKRomance","GLOBAL",0)~ THEN
@714
END

INTERJECT_COPY_TRANS2 murdgirl 24 murdgirl24
== Z#KIYOJ IF ~InParty("Kiyone")
Global("MerchantHide","GLOBAL",1)~ THEN
@715
== Z#KIYOJ IF ~InParty("Kiyone")
!Global("MerchantHide","GLOBAL",1)~ THEN
@716
END

INTERJECT_COPY_TRANS2 murdgirl 25 murdgirl25
== Z#KIYOJ IF ~InParty("Kiyone")
Global("MerchantHide","GLOBAL",1)~ THEN
@715
== Z#KIYOJ IF ~InParty("Kiyone")
!Global("MerchantHide","GLOBAL",1)~ THEN
@716
END

// Bel
INTERJECT_COPY_TRANS2 merchant 6 merchant6
== Z#KIYOJ IF ~InParty("Kiyone")
Global("TalkedToHooker2","GLOBAL",1)~ THEN
@715
== Z#KIYOJ IF ~InParty("Kiyone")
!Global("TalkedToHooker2","GLOBAL",1)~ THEN
@717
END

// Enter Den
CHAIN
IF ~AreaCheck("AR0502")
Global("tannerden","LOCALS",0)~ THEN Z#KIYOJ tannerden
@718
DO ~SetGlobal("tannerden","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@719
EXIT






// Acorns
INTERJECT_COPY_TRANS2 IDRYAD1 13 idryad13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@720
END

// Jermien
INTERJECT_COPY_TRANS2 JUGJER01 2 jugjer01-2
== Z#KOVAJ IF ~InParty("Kova") Global("AddRayic","GLOBAL",2)~ THEN
@721
= @722
END

// Darsidian

INTERJECT_COPY_TRANS2 TRSKIN06 5 trskin06-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@723
END


INTERJECT_COPY_TRANS2 TRSKIN06 21 trskin06-21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@724
END

INTERJECT_COPY_TRANS2 TRSKIN01 7 trskin01-7
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@725
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@726
END

INTERJECT_COPY_TRANS2 TRSKIN01 19 trskin01-19
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@727
== Z#KOVAJ IF ~GlobalLT("KKRomance","GLOBAL",2) InParty("Kova") InMyArea("Kova")~ THEN
@728
END

// Neb
EXTEND_BOTTOM Neb 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ neb01
END

EXTEND_BOTTOM Neb 1
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ neb01
END

CHAIN
IF ~~ THEN Z#KIYOJ neb01
@729
== NEB @730
== Z#KIYOJ @731
== NEB @732
== Z#KIYOJ @733
== NEB @734
DO ~Enemy()~ EXIT

CHAIN
IF ~Dead("neb")
Global("nebdie","LOCALS",0)
AreaCheck("AR0529")
!ActuallyInCombat()~ THEN Z#KIYOJ nebdie
@735
DO ~SetGlobal("nebdie","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@736
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@737
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@738
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@739
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@740
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@741
EXIT





// Umar Hills

INTERJECT_COPY_TRANS2 Delon 3 Delon3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@742
END

INTERJECT_COPY_TRANS2 Delon 4 Delon4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@742
END

EXTEND_BOTTOM Delon 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Delon67
END

EXTEND_BOTTOM Delon 7
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Delon67
END

CHAIN
IF ~~ THEN Z#KIYOJ Delon67
@743
EXTERN DELON 19

INTERJECT_COPY_TRANS2 UHMAY01 4 uhmay01-4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@744
END

INTERJECT_COPY_TRANS2 UHMAY01 18 uhmay01-18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@745
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@746
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@747
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone")
GlobalGT("KKRomance","GLOBAL",0)~ THEN
@748
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone")
!GlobalGT("KKRomance","GLOBAL",0)~ THEN
@749
END

INTERJECT_COPY_TRANS2 UHOGRE01 7 uhogre01-7
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@750
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@751
END

EXTEND_BOTTOM UHMAY01 59
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN UHMAY01 uhmay01-59
END

CHAIN
IF ~~ THEN UHMAY01 uhmay01-59
@752
DO ~AddJournalEntry(19272,QUEST)
AddexperienceParty(27500)
SetGlobal("Lloydy","GLOBAL",1)
SetGlobalTimer("MakeAlliance","GLOBAL",1200)
EscapeArea()~
== Z#KOVAJ
@753
EXIT

INTERJECT_COPY_TRANS2 UHOGRE01 22 uhogre01-22
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@754
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@755
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@756
END

CHAIN
IF ~Dead("Madulf")
AreaCheck("AR1100")
!ActuallyInCombat()
Global("madulfdie","LOCALS",0)~ THEN Z#KOVAJ madulfdie
@757
DO ~SetGlobal("madulfdie","LOCALS",0)
IncrementGlobal("Break","LOCALS",1)~ EXIT

CHAIN
IF ~AreaCheck("AR1102")
Global("incabin","LOCALS",0)
!Global("villagesaved","GLOBAL",1)~ THEN Z#KIYOJ incabin
@758
DO ~SetGlobal("incabin","LOCALS",1)~
EXIT

// Anath in Cave
INTERJECT_COPY_TRANS2 RNGWLF01 6 rngwlf01-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@759
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@760
END

// Anath's Death
EXTEND_BOTTOM RNGWLF03 1
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ rngwlf03-1
END

CHAIN
IF ~~ THEN Z#KOVAJ rngwlf03-1
@761
= @762
DO ~ActionOverride("rngwlf03",Kill(Myself))~ EXIT

// Enter Temple
CHAIN
IF ~AreaCheck("AR1401")
Global("darktemple","LOCALS",0)
!Global("villagesaved","GLOBAL",1)~ THEN Z#KOVAJ darktemple
@763
DO ~SetGlobal("darktemple","LOCALS",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@764
EXIT

// Mazzy
EXTEND_BOTTOM Mazzy 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Mazzy0
END

CHAIN
IF ~~ THEN Z#KIYOJ Mazzy0
@765
== MAZZY
@766
== Z#KIYOJ
@767
== MAZZY
@768
DO ~SetGlobal("MazzyTold","GLOBAL",1)~
EXTERN MAZZY 5

EXTEND_BOTTOM Mazzy 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Mazzy6
END

CHAIN
IF ~~ THEN Z#KIYOJ Mazzy6
@769
DO ~SetGlobal("MazzyFreed","GLOBAL",1) IncrementGlobal("Break","LOCALS",1)~
EXTERN MAZZY 13

INTERJECT_COPY_TRANS2 Mazzy 21 Mazzy21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@770
== MAZZY IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@771
END

// Ghosts beside Amauna
INTERJECT_COPY_TRANS2 SHAGHO02 11 shagho01-11
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@772
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@773
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@774
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@775
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@776
END

INTERJECT_COPY_TRANS2 SHAGHO02 13 shagho01-13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@772
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@773
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@774
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@775
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@776
END

INTERJECT_COPY_TRANS2 SHAGHO02 14 shagho01-14
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@772
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@773
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@774
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@775
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@777
END

CHAIN
IF ~Dead("shagho01")
Dead("shagho02")
AreaCheck("AR1401")
!Global("villagesaved","GLOBAL",1)
PartyHasItem("misc6p")
Global("amaunaghost","LOCALS",0)~ THEN Z#KOVAJ amaunaghost
@778
= @779
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@780
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@781
EXIT

EXTEND_BOTTOM shadel 7
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ shadel7
END

CHAIN
IF ~~ THEN Z#KIYOJ shadel7
@782
DO ~ActionOverride("rngsha02",Enemy())
ActionOverride("shadel",Enemy())~ EXIT

EXTEND_BOTTOM UHRANG01 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ uhrang01-0
END

CHAIN
IF ~~ THEN Z#KIYOJ uhrang01-0
@783
DO ~ActionOverride("uhrang01",Kill(Myself))~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@784
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@785
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@786
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@787
EXIT










// Viconia's burning
INTERJECT_COPY_TRANS2 VICG1 4 vicg1-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@788
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@789
END

INTERJECT_COPY_TRANS2 VICONI 2 viconi2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@790
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@791
== VICONI IF ~InParty("Kova") InMyArea("Kova")~ THEN
@792
END

INTERJECT_COPY_TRANS2 VICONI 11 viconi11
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@793
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@794
DO ~IncrementGlobal("Break","LOCALS",1)~
END






// The Unseeing Eye
INTERJECT_COPY_TRANS2 CSGAAL 11 csgaal11
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@795
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@796
== ANOMENJ IF ~InParty("Kova") InParty("Anomen") InParty("Kiyone")
!Global("AnomenIsKnight","GLOBAL",1)~ THEN
@797
== Z#KOVAJ IF ~InParty("Kova") InParty("Anomen") InParty("Kiyone")~ THEN
@798
END

INTERJECT_COPY_TRANS2 BHARVAL 10 bharval10
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@799
END

INTERJECT_COPY_TRANS2 BHOISIG 11 bhoisig11
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@799
END

EXTEND_BOTTOM KELDOR 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ keldor0
END

CHAIN
IF ~~ THEN Z#KIYOJ keldor0
@800
EXTERN KELDOR 18

INTERJECT_COPY_TRANS2 GAAL 2 gaal2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@801
END

INTERJECT_COPY_TRANS2 GAAL 4 gaal4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@802
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@803
END

INTERJECT_COPY_TRANS2 RIFTG03 5 riftg03-5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@804
= @805
END

CHAIN
IF ~PartyHasItem("Leat13")
OR(2)
	AreaCheck("AR0206")
	AreaCheck("AR0201")
Global("TheshalDie","LOCALS",0)
!ActuallyInCombat()~ THEN Z#KOVAJ TheshalDie
@806
DO ~SetGlobal("TheshalDie","LOCALS",1)~
= @807
EXIT

INTERJECT_COPY_TRANS2 BHEYE 0 bheye0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@808
END

INTERJECT_COPY_TRANS2 BHEYE 1 bheye1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@808
END

CHAIN
IF ~Dead("UnseeingEye")
OR(2)
	AreaCheck("AR0205")
	AreaCheck("AR0202")
Global("UEyeDie","LOCALS",0)~ THEN Z#KIYOJ UEyeDie
@809
DO ~SetGlobal("UEyeDie","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@810
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@811
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@812
EXIT

INTERJECT_COPY_TRANS2 RIFTG03 29 riftg03-29
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@813
END

CHAIN
IF ~Global("RiftGo","GLOBAL",1)
AreaCheck("AR0203")
Global("AmaGone","LOCALS",0)~ THEN Z#KIYOJ AmaGone
@814
= @815
DO ~SetGlobal("AmaGone","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@816
= @817
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@818
= @819
EXIT

// Sculptor Quest
INTERJECT_COPY_TRANS2 SCTELWYN 8 sctelwyn8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@820
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@821
END

INTERJECT_COPY_TRANS2 SCSAIN 8 scsain8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@820
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@821
END

INTERJECT_COPY_TRANS2 SCBUTLER 3 scbutler3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@822
END

INTERJECT_COPY_TRANS2 SCSARLES 2 scsarles2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@823
= @824
END

INTERJECT_COPY_TRANS2 SCJERLIA 4 scjerlia4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@825
END

INTERJECT_COPY_TRANS2 SCJERLIA 9 scjerlia9
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@826
END

INTERJECT_COPY_TRANS2 SCJERLIA 20 scjerlia20
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@827
END

INTERJECT_COPY_TRANS2 SCJERLIA 25 scjerlia25
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@828
= @829
END

INTERJECT_COPY_TRANS2 SCSARLES 26 scsarles26
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@830
= @831
END

INTERJECT_COPY_TRANS2 BHOISIG 47 bhoisig47
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@832
== ANOMENJ IF ~InParty("Kova") InParty("Anomen")
!Global("AnomenIsKnight","GLOBAL",1)~ THEN
@833
== Z#KOVAJ IF ~InParty("Kova") InParty("Anomen")~ THEN
@834
END

INTERJECT_COPY_TRANS2 BHARVAL 45 bharval45
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@835
= @836
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone")
Global("AmaGone","LOCALS",1)~ THEN
@837
END

INTERJECT_COPY_TRANS2 SCSAIN 34 scsain34
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@838
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@839
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@840
END

EXTEND_BOTTOM TRAVIN 1
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ travin1
END

CHAIN
IF ~~ THEN Z#KIYOJ travin1
@841
== TRAVIN
@842
== Z#KIYOJ
@843
DO ~EquipMostDamagingMelee() MoveToObject("travin")~
== TRAVIN
@844
DO ~EscapeAreaDestroy(3) SetGlobal("Z#TravinRun","GLOBAL",1)~ EXIT

CHAIN
IF ~Global("Z#TravinRun","GLOBAL",1)
!InMyArea("travin")
AreaCheck("AR0400")~ THEN Z#KIYOJ travinrun
@845
DO ~SetGlobal("Z#TravinRun","GLOBAL",2)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@846
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@847
EXIT

INTERJECT_COPY_TRANS2 BORINALL 0 borinall0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@848
END

EXTEND_BOTTOM BORINALL 4
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN BORINALL SeeKova
END

APPEND BORINALL
	IF ~~ THEN BEGIN SeeKova
	SAY @849
	= @850
	= @851
	IF ~~ THEN DO ~CreateCreatureObjectOffset("Z#Assas1",Player1,[100.100])
		CreateCreatureObjectOffset("Z#Assas1",Player1,[100.-100])
		CreateCreatureObjectOffset("Z#Assas2",Player1,[-100.-100])
		CreateCreatureObjectOffset("Z#Assas2",Player1,[-100.100])
		CreateCreatureObjectOffset("Z#Arch1",Myself,[-100.-100])
		CreateCreatureObjectOffset("Z#Arch2",Myself,[0.-100])
		Enemy()~ EXIT
	END
END





// Trademeet

// Flydian
INTERJECT_COPY_TRANS2 Messen 3 Messen3
==Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@852
= @853
END

// Global("loganjob1","GLOBAL",1) AR2007

INTERJECT_COPY_TRANS2 CELOGAN 11 celogan11
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@854
==Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@855
==Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
@856
END

INTERJECT_COPY_TRANS2 CERND 0 cernd0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@857
/* overkill
= ~I doubt he is one of those responsible for the current unhappy situation in this town.~
*/
END

// Faldorn
EXTEND_BOTTOM ~CeFaldor~ 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ CeFaldor6
END

CHAIN
IF ~~ THEN Z#KIYOJ CeFaldor6
@858
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@859
EXTERN CeFaldor 0

// After Faldorn dead,leaving Grove
CHAIN
IF ~Dead("CEFALD01")
AreaCheck("AR1900")
InParty("Kiyone")
Global("FaldDie","LOCALS",0)~ THEN Z#KOVAJ FaldDie
@860
DO ~SetGlobal("FaldDie","LOCALS",1)~
== Z#KIYOJ
@861
EXIT

INTERJECT_COPY_TRANS2 trgeni01 7 trgeni01-7
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@862
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@863
END

// See Ihtafeer
CHAIN
IF ~!Dead("trrak01")
AreaCheck("AR1902")
Global("SeeIhta","LOCALS",0)~ THEN Z#KIYOJ SeeIhta
@864
DO ~SetGlobal("SeeIhta","LOCALS",1)~
EXIT

// Itona first appearance
INTERJECT_COPY_TRANS2 trthf01 0 TrThf01-0
== TRTHF01 IF ~See("Kova") InParty("Kova")~ THEN
@865
== Z#KOVAJ IF ~See("Kova") InParty("Kova")~ THEN
@866
DO ~SetGlobal("ItonaSeeKova","GLOBAL",1)~
== TRTHF01 IF ~See("Kova") InParty("Kova")~ THEN
@867
== Z#KOVAJ IF ~See("Kova") InParty("Kova")~ THEN
@868
== TRTHF01 IF ~See("Kova") InParty("Kova")~ THEN
@869
= @870
END

// Itona returns
CHAIN
IF WEIGHT #-1 ~!Dead("TRTHF01")
Global("ItonaSeeKova","GLOBAL",2)
Dead("TRRAK01")
AreaCheck("AR1900")~ THEN TRTHF01 Thanks
@871
= @872
== Z#KOVAJ @873
== TRTHF01 @874
= @875
DO ~SetGlobal("KKThief","GLOBAL",1)~ EXIT

// Itona Dead
CHAIN
IF ~Dead("TRTHF01")
Global("ItonaSeeKova","GLOBAL",2)
AreaCheck("AR1900")
!ActuallyInCombat()~ THEN Z#KOVAJ ItonaDead
@876
= @877
DO ~SetGlobal("ItonaSeeKova","GLOBAL",3) ~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@878
== Z#KOVAJ
@879
= @880
EXIT

// On Mantle Start
INTERJECT_COPY_TRANS2 TRCUT07 8 trcut07-8
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~
@881
END

// On Open Tomb
INTERJECT_COPY_TRANS2 CELOGAN 85 celogan85
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@882
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@883
END

// On Nobles Dead
CHAIN
IF ~Dead("trfued01") Dead("trfued05")
GlobalGT("feudplot","GLOBAL",1)
Global("trnobledie","LOCALS",0)~ THEN Z#KOVAJ trnobledie
@884
DO ~SetGlobal("trnobledie","LOCALS",1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@885
EXIT

// On Return Mantle to Logan
INTERJECT_COPY_TRANS2 CELOGAN 91 celogan91
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@886
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@887
END





// De Arnise Keep

// Nalia Intro
INTERJECT_COPY_TRANS2 Nalia 2 Nalia2
== Z#KOVAJ IF ~InParty("Kova") Global("CommentNalia","GLOBAL",0)~ THEN
@888
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") Global("CommentNalia","GLOBAL",0)~
@889
DO ~SetGlobal("CommentNalia","GLOBAL",1)~
END

INTERJECT_COPY_TRANS2 Nalia 3 Nalia3
== Z#KOVAJ IF ~InParty("Kova") Global("CommentNalia","GLOBAL",0)~ THEN
@888
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") Global("CommentNalia","GLOBAL",0)~
@889
DO ~SetGlobal("CommentNalia","GLOBAL",1)~
END

INTERJECT_COPY_TRANS2 Nalia 5 Nalia5
== Z#KOVAJ IF ~InParty("Kova") Global("CommentNalia","GLOBAL",0)~ THEN
@888
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") Global("CommentNalia","GLOBAL",0)~
@889
DO ~SetGlobal("CommentNalia","GLOBAL",1)~
END

INTERJECT_COPY_TRANS2 Nalia 12 Nalia12
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@890
== NALIA IF ~InParty("Kova") InMyArea("Kova")~ THEN
@891
END

INTERJECT_COPY_TRANS2 Nalia 28 Nalia28
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@892
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@893
END

// Daleson
EXTEND_BOTTOM ~Daleson~ 13
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Daleson13
END

CHAIN
IF ~~ THEN Z#KIYOJ Daleson13
@894
= @895
EXTERN Daleson 14

EXTEND_BOTTOM ~Daleson~ 42
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ DalesonEnd
END

EXTEND_BOTTOM ~Daleson~ 43
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ DalesonEnd
END

CHAIN
IF ~~ THEN Z#KOVAJ DalesonEnd
@896
= @897
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@898
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@899
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@900
EXIT

// Glaicas
INTERJECT_COPY_TRANS2 NaliaJ 157 NaliaJ157
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@901
END

// Lady Delcia Caan
INTERJECT_COPY_TRANS2 DELCIA 16 delcia16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@902
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@903
END

// Golems
/* overkill
CHAIN
IF ~OR(6)
	See("kpgol01")
	See("kpgol02")
	See("kpgol03")
	See("kpgol04")
	See("kpgol05")
	See("kpgol06")
Global("DeArniseGolem","LOCALS",0)
AreaCheck("AR1303")~ THEN Z#KOVAJ DeArniseGolem
~These golems seem to be guarding something,and I think they are unlikely to attack unless we take hold of what they protect.~
DO ~SetGlobal("DeArniseGolem","LOCALS",1)~ EXIT
*/

// Torgal Death
CHAIN
IF ~Dead("TorGal")
Global("TorgalDie","LOCALS",0)
AreaCheck("AR1301")~ THEN Z#KIYOJ TorgalDie
@904
DO ~SetGlobal("TorgalDie","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@905
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@906
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@907
EXIT

// Nalia's Proposal
INTERJECT_COPY_TRANS2 Nalia 87 Nalia87
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~
@908
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@909
END

INTERJECT_COPY_TRANS2 NaliaJ 69 NaliaJ69
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~
@910
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@909
END




// Copper Coronet / Slaver Compound

// Kova Sees Madam Nin
CHAIN
IF ~InParty("Kiyone") !Dead("Kiyone")
See("Madam")
Global("SeeNin","LOCALS",0)~ THEN Z#KOVAJ SeeNin
@911
DO ~SetGlobal("SeeNin","LOCALS",1)~
== Z#KIYOJ @912
== Z#KOVAJ @913
END
IF ~!GlobalGT("KKRomance","GLOBAL",0)~ THEN EXIT
IF ~GlobalGT("KKRomance","GLOBAL",0)~ THEN EXTERN Z#KIYOJ KovaSeeNin

CHAIN
IF ~~ THEN Z#KIYOJ KovaSeeNin
@914
= @915
== Z#KOVAJ @916
= @917
== Z#KIYOJ @918
== ANOMENJ IF ~InParty("Anomen") !Dead("Anomen")
!Global("AnomenIsKnight","GLOBAL",1)~ THEN
@919
== Z#KIYOJ IF ~InParty("Anomen") !Dead("Anomen")
!Global("AnomenIsKnight","GLOBAL",1)~ THEN
@920
EXIT

// Watching Slave Fight
INTERJECT_COPY_TRANS2 Anno1 0 SeeFight
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~
@921
== Z#KIYOJ IF ~InParty("Kiyone") !Dead("Kiyone")~
@922
END

// Guards of Hendak
EXTEND_BOTTOM ~Guard3~ 0
IF ~InParty("Kiyone") !Dead("Kiyone")~ THEN EXTERN Z#KIYOJ Guard3
END

CHAIN
IF ~~ THEN Z#KIYOJ Guard3
@923
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~ THEN
@924
== GUARD3
@925
DO ~SetGlobal("CopperGuards","GLOBAL",1) Enemy()~
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~ THEN
@926
EXIT

// Hendak In Cell
EXTEND_BOTTOM ~Hendak~ 0
IF ~InParty("Kiyone") !Dead("Kiyone")
!PartyHasItem("MISC4Z")~ THEN EXTERN Z#KIYOJ Hendak0NoKey
IF ~InParty("Kiyone") !Dead("Kiyone")
PartyHasItem("MISC4Z")~ THEN EXTERN Z#KIYOJ Hendak0Key
END

CHAIN
IF ~~ THEN Z#KIYOJ Hendak0NoKey
@927
EXTERN Hendak 4

CHAIN
IF ~~ THEN Z#KIYOJ Hendak0Key
@927
EXTERN Hendak 38

// Beastmaster
EXTEND_BOTTOM ~Beast~ 0
IF ~InParty("Kiyone") !Dead("Kiyone")~ THEN EXTERN Z#KIYOJ Beast
END

CHAIN
IF ~~ THEN Z#KIYOJ Beast
@928
EXTERN BEAST 1

// Hendak Free

INTERJECT_COPY_TRANS2 Hendak 14 Hendak14
== Z#KIYOJ IF ~InParty("Kiyone") !Dead("Kiyone")~
@929
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~
@930
END

// See Hendak Fight
INTERJECT_COPY_TRANS2 Lehtin 16 Lehtin16
== Z#KIYOJ IF ~InParty("Kiyone") !Dead("Kiyone")~ THEN
@931
DO ~EquipRanged() Attack("Lehtinan")~
END

// Hendak abt Slavers

INTERJECT_COPY_TRANS2 ~Hendak~ 19 hendak19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@932
DO ~SetGlobal("MoreSlavers","GLOBAL",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@933
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@934
END

// Slaver Compound Guard
EXTEND_BOTTOM ~Slaver1~ 0
IF ~InParty("Kiyone") Global("MoreSlavers","GLOBAL",1)~ THEN EXTERN Z#KIYOJ Slaver1
END

CHAIN
IF ~~ THEN Z#KIYOJ Slaver1
@935
EXTERN Slaver1 6

// Slaver Moving Slave
INTERJECT_COPY_TRANS2 ~Slaver4~ 6 Slaver4-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
@936
= @937
END

// Slaver Wizard
INTERJECT_COPY_TRANS2 ~SlaverM~ 0 SlaverM
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~
@938
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~
@939
END

// Haegan 0 and 4
EXTEND_BOTTOM ~Haegan~ 4
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Haegan4
END

CHAIN
IF ~~ THEN Z#KIYOJ Haegan4
@940
EXTERN HAEGAN 3

EXTEND_BOTTOM ~Haegan~ 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Haegan0
END

CHAIN
IF ~~ THEN Z#KIYOJ Haegan0
@941
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
@942
EXTERN HAEGAN 3

// Girl with Trolls
INTERJECT_COPY_TRANS2 Girl2 0 Girl2-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@943
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
@944
END

INTERJECT_COPY_TRANS2 Girl2 1 Girl2-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@945
END

// Back to Hendak
INTERJECT_COPY_TRANS2 Hendak 30 Hendak30
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@946
END

// After killing Quallo's friend
CHAIN
IF ~Dead("sewcc")
Global("QualloCC","LOCALS",0)
AreaCheck("AR0404")~ THEN Z#KIYOJ QualloC
@947
DO ~SetGlobal("QualloCC","LOCALS",1)~
/* overkill
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~He might be under a spell,Kiyone,and this could be a step towards freeing him.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I hope you are right.~
*/
EXIT








// Aerie's Circus Interjections

EXTEND_BOTTOM ~CircG1~ 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ CircG1
END

EXTEND_BOTTOM ~CircG1~ 4
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ CircG1
END

INTERJECT_COPY_TRANS2 Aerie 0 Aerie0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@948
END

/* overkill
INTERJECT_COPY_TRANS2 KSlave01 0 KSlave01-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You can tell him I look forward to seeing him and ending this madness.~
== KSLAVE01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Then you are worthy of nothing but to be placed beyond nothingness in his wrath.~
END
*/

INTERJECT_COPY_TRANS2 Kalah2 4 Kalah2-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@949
END

EXTEND_BOTTOM ~Kalah2~ 7
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ Kalah2
END

CHAIN
IF ~~ THEN Z#KOVAJ Kalah2
@950
DO ~SetGlobal("KovaKalah","GLOBAL",1)~
== KALAH2
@951
EXTERN KALAH2 9

APPEND Z#KIYOJ
	IF ~~ THEN BEGIN CircG1
	SAY @952
	IF ~~ THEN EXTERN CircG1 6
	END

	IF ~AreaCheck("AR0600")
	!StateCheck(Player1,STATE_SLEEPING)
	Global("InCircus","LOCALS",0)~ THEN BEGIN IntoCircus
	SAY @953
	IF ~~ THEN DO ~SetGlobal("InCircus","LOCALS",1)~ EXIT
	END
END

CHAIN
IF ~InMyArea("Kova")
InParty("Kova")
RandomNum(2,1)
Global("celvankova","AR0300",0)~ THEN CELVAN kvhaiku
@954
DO ~SetGlobal("celvankova","AR0300",1)~
== Z#KOVAJ
@955
= @956
EXTERN CELVAN 1

CHAIN
IF ~InMyArea("Kiyone")
InParty("Kiyone")
RandomNum(2,1)
Global("celvankiyo","AR0300",0)~ THEN CELVAN kyhaiku
@957
DO ~SetGlobal("celvankiyo","AR0300",1)~
== Z#KIYOJ
@958
EXTERN CELVAN 1

// Trademeet Fortune Teller

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0)
Name("Kiyone",LastTalkedToBy)~ THEN GOTO kiyofortune
IF ~!InPartySlot(LastTalkedToBy,0)
Name("Kova",LastTalkedToBy)~ THEN GOTO kovafortune
END

CHAIN
IF ~~ THEN TRGYP02 kiyofortune
@959
== Z#KIYOJ
@960
EXIT

CHAIN
IF ~~ THEN TRGYP02 kovafortune
@961
== Z#KOVAJ
@962
EXIT



// Killing tough Baddies

CHAIN
IF ~Global("Z#KKKillHard","GLOBAL",1)
	InParty("Kova")
	InParty("Kiyone")
	!ActuallyInCombat()
	Global("Z#KKHardFight","GLOBAL",1)~ THEN Z#KIYOJ KillHard1
@963
DO ~SetGlobal("Z#KKHardFight","GLOBAL",0)
IncrementGlobal("Z#KKKillHard","GLOBAL",1)~
== Z#KOVAJ @964
== Z#KIYOJ @965
== Z#KOVAJ @966
== Z#KIYOJ @967
== Z#KOVAJ @968
EXIT

CHAIN
IF ~Global("Z#KKKillHard","GLOBAL",3)
	InParty("Kova")
	InParty("Kiyone")
	!ActuallyInCombat()
	Global("Z#KKHardFight","GLOBAL",1)~ THEN Z#KOVAJ KillHard2
@969
DO ~SetGlobal("Z#KKHardFight","GLOBAL",0)
IncrementGlobal("Z#KKKillHard","GLOBAL",1)~
== Z#KIYOJ @970
== Z#KOVAJ @971
== Z#KIYOJ @972
== Z#KOVAJ @973
== Z#KIYOJ @974
EXIT

// Kova's First Resurrection

CHAIN
IF ~Global("KovaDied","GLOBAL",1)
!ActuallyInCombat()
InParty(Myself)~ THEN Z#KOVAJ FirstKvRes
@975
DO ~SetGlobal("KovaDied","GLOBAL",2)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@976
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@977
== Z#KOVAJ IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
@978
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
@979
== Z#KOVAJ
@980
= @981
EXIT

// Kiyone's First Resurrection

CHAIN
IF ~Global("KiyoDied","GLOBAL",1)
!ActuallyInCombat()
InParty(Myself)~ THEN Z#KIYOJ FirstKyRes
@982
DO ~SetGlobal("KiyoDied","GLOBAL",2)~
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("KKRomance","GLOBAL",0)~ THEN
@983
== Z#KIYOJ
@984
= @985
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("KKRomance","GLOBAL",1)~ THEN
@986
== Z#KIYOJ
@987
= @988
EXIT


