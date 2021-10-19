/* ---------------- *
 *  PC with Kiyone  *
 * ---------------- */
BEGIN ~Z#KIYOB~

CHAIN
IF ~InMyArea(Player1)
Global("BKiyoPC","GLOBAL",0)~ THEN Z#KIYOB PC1
@0
DO ~SetGlobal("BKiyoPC","GLOBAL",1)~ 
= @1
END
IF ~~ THEN REPLY @2 GOTO PC1-1
IF ~~ THEN REPLY @3 GOTO PC1-2
IF ~~ THEN REPLY @4 GOTO PC1-3
IF ~~ THEN REPLY @5 GOTO PC1-4

CHAIN
IF ~~ THEN Z#KIYOB PC1-4
@6
DO ~IncrementGlobal("Break","LOCALS",1)
SetGlobal("BKiyoPC","GLOBAL",50)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC1-1
@7
EXTERN Z#KIYOB PC1-2

CHAIN
IF ~~ THEN Z#KIYOB PC1-3
@8
EXTERN Z#KIYOB PC1-2

CHAIN
IF ~~ THEN Z#KIYOB PC1-2
@9
END
IF ~~ THEN REPLY @10 GOTO PC1-2ext
IF ~~ THEN REPLY @11 GOTO PC1-2-1
IF ~~ THEN REPLY @12 GOTO PC1-2-2
IF ~~ THEN REPLY @13 GOTO PC1-2-3
IF ~~ THEN REPLY @14 GOTO PC1-2-4
IF ~~ THEN REPLY @15 GOTO PC1-4

CHAIN
IF ~~ THEN Z#KIYOB PC1-2ext
@16
= @17
= @18
END
IF ~~ THEN REPLY @11 GOTO PC1-2-1
IF ~~ THEN REPLY @12 GOTO PC1-2-2
IF ~~ THEN REPLY @13 GOTO PC1-2-3
IF ~~ THEN REPLY @14 GOTO PC1-2-4
IF ~~ THEN REPLY @15 GOTO PC1-4

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-1
@19
EXTERN Z#KIYOB PC1-End1

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-2
@20
EXTERN Z#KIYOB PC1-End2

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-3
@21
EXTERN Z#KIYOB PC1-End1

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-4
@22
EXTERN Z#KIYOB PC1-End2

CHAIN 
IF ~~ THEN Z#KIYOB PC1-End2
@23
EXIT

CHAIN 
IF ~~ THEN Z#KIYOB PC1-End1
@24
= @25
EXIT


CHAIN
IF ~InMyArea(Player1)
Global("BKiyoPC","GLOBAL",1)
GlobalGT("BKKChat","GLOBAL",6)~ THEN Z#KIYOB PC2-0
@26
DO ~SetGlobal("BKiyoPC","GLOBAL",2)~
= @27
END
IF ~~ THEN REPLY @28 GOTO PC2-01
IF ~~ THEN REPLY @29 GOTO PC2-02
IF ~~ THEN REPLY @30 GOTO PC2-04
IF ~~ THEN REPLY @31 GOTO PC2-04
IF ~~ THEN REPLY @32 GOTO PC2-05

CHAIN
IF ~~ THEN Z#KIYOB PC2-05
@33
DO ~IncrementGlobal("Break","LOCALS",1)
SetGlobal("BKiyoPC","GLOBAL",50)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC2-01
@34 
= @35
EXTERN Z#KIYOB PC2-1

CHAIN
IF ~~ THEN Z#KIYOB PC2-02
@36 
= @37
EXTERN Z#KIYOB PC2-1

CHAIN
IF ~~ THEN Z#KIYOB PC2-04
@38
EXTERN Z#KIYOB PC2-1

CHAIN
IF ~~ THEN Z#KIYOB PC2-1
@39
END
IF ~~ THEN REPLY @40 GOTO PC2-11
IF ~~ THEN REPLY @41 GOTO PC2-12
IF ~~ THEN REPLY @42 GOTO PC2-13
IF ~~ THEN REPLY @43 GOTO PC2-14

CHAIN
IF ~~ THEN Z#KIYOB PC2-14
@44
DO ~IncrementGlobal("Break","LOCALS",1)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC2-13
@45
EXTERN Z#KIYOB PC2-2

CHAIN
IF ~~ THEN Z#KIYOB PC2-12
@46
= @47
EXTERN Z#KIYOB PC2-2

CHAIN
IF ~~ THEN Z#KIYOB PC2-11
@48
= @49
EXTERN Z#KIYOB PC2-2

CHAIN
IF ~~ THEN Z#KIYOB PC2-2
@50
= @51
= @52
= @53
= @54
END
IF ~~ THEN REPLY @55 GOTO PC2-21
IF ~~ THEN REPLY @56 GOTO PC2-21
IF ~~ THEN REPLY @57 GOTO PC2-23

CHAIN
IF ~~ THEN Z#KIYOB PC2-23
@58
EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC2-21
@59
EXIT

CHAIN
IF ~InMyArea(Player1)
GlobalGT("AsylumPlot","GLOBAL",40)
Global("KyBT","GLOBAL",0)~ THEN Z#KIYOB KyBT0
@60 
DO ~SetGlobal("KyBT","GLOBAL",1)~
= @61
= @62
END
IF ~~ THEN REPLY @63 GOTO KyBT01
IF ~~ THEN REPLY @64 GOTO KyBT02
IF ~~ THEN REPLY @65 GOTO KyBT02
IF ~~ THEN REPLY @66 GOTO KyBT04
IF ~~ THEN REPLY @67 GOTO KyBT04

CHAIN
IF ~~ THEN Z#KIYOB KyBT01
@68
END 
IF ~Global("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1pre
IF ~GlobalGT("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1post

CHAIN 
IF ~~ THEN Z#KIYOB KyBT02
@69
= @70
END 
IF ~Global("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1pre
IF ~GlobalGT("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1post

CHAIN 
IF ~~ THEN Z#KIYOB KyBT04
@71
END 
IF ~Global("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1pre
IF ~GlobalGT("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1post

CHAIN
IF ~~ THEN Z#KIYOB KyBTend
@72
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre
@73
= @74
END
IF ~~ THEN REPLY @75 GOTO KyBT1pre1
IF ~~ THEN REPLY @76 GOTO KyBT1pre2
IF ~~ THEN REPLY @77 GOTO KyBT1pre3
IF ~~ THEN REPLY @78 GOTO KyBT1pre4

CHAIN 
IF ~~ THEN Z#KIYOB KyBT1pre1
@79
= @80
END
IF ~~ THEN REPLY @81 DO ~IncrementGlobal("Break","LOCALS",1)~ GOTO KyBTend
IF ~~ THEN REPLY @82 GOTO KyBTend
IF ~~ THEN REPLY @83 GOTO KyBT1pre3
IF ~~ THEN REPLY @78 GOTO KyBT1pre4

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre2
@84
END
IF ~~ THEN REPLY @81 DO ~IncrementGlobal("Break","LOCALS",1)~ GOTO KyBTend
IF ~~ THEN REPLY @82 GOTO KyBTend
IF ~~ THEN REPLY @83 GOTO KyBT1pre3
IF ~~ THEN REPLY @78 GOTO KyBT1pre4

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre4
@85
= @86
END
IF ~~ THEN REPLY @81 DO ~IncrementGlobal("Break","LOCALS",1)~ GOTO KyBTend
IF ~~ THEN REPLY @87 GOTO KyBTend
IF ~~ THEN REPLY @88 GOTO KyBT1pre3

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre3
@89
= @90
END
IF ~OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN GOTO KyBT2
IF ~!GlobalGT("DrowTalk","GLOBAL",4) 
!GlobalGT("SelfTalk","GLOBAL",2)~ THEN GOTO KyBT1end

CHAIN
IF ~~ THEN Z#KIYOB KyBT1end
@91
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post
@92
= @93
END
IF ~~ THEN REPLY @75 GOTO KyBT1post1
IF ~~ THEN REPLY @76 GOTO KyBT1post2
IF ~~ THEN REPLY @77 GOTO KyBT1post3
IF ~~ THEN REPLY @94 GOTO KyBT1post4

CHAIN 
IF ~~ THEN Z#KIYOB KyBT1post1
@79
= @95
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post2
@96
= @97
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post3
@98
= @99
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post4
@100
= @99
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT2
@101
= @102
END
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY @103 GOTO KyBT21
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY @104 GOTO KyBT21
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY @105 GOTO KyBT23
IF ~!GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY @106 GOTO KyBT24
IF ~!GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY @107 GOTO KyBT25
IF ~!GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY @108 GOTO KyBT26

CHAIN
IF ~~ THEN Z#KIYOB KyBT21
@109
= @110
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT23
@111
= @110
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT24
@112
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT25
@113
= @114
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT26
@115
= @114
EXIT


/* -------------- *
 *  PC with Kova  *
 * -------------- */
BEGIN ~Z#KOVAB~

IF ~InMyArea(Player1)
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaPC","GLOBAL",0)~ THEN BEGIN PC1
SAY @116
IF ~~ THEN REPLY @117 DO ~SetGlobal("BKovaPC","GLOBAL",1)~ GOTO PC1-1
IF ~~ THEN REPLY @118 DO ~SetGlobal("BKovaPC","GLOBAL",1)~ GOTO PC1-1
IF ~~ THEN REPLY @119 DO ~SetGlobal("BKovaPC","GLOBAL",1)~ GOTO PC1-3
IF ~~ THEN REPLY @120 DO ~SetGlobal("BKovaPC","GLOBAL",1)~ GOTO PC1-4
END

IF ~~ THEN BEGIN PC1-4
SAY @121
IF ~~ THEN DO ~IncrementGlobal("Break","LOCALS",1)
SetGlobal("BKovaPC","GLOBAL",50)~ EXIT
END

IF ~~ THEN BEGIN PC1-3 
SAY @122
IF ~~ THEN REPLY @123 GOTO PC1-3-1
IF ~~ THEN REPLY @124 GOTO PC1-3-2
IF ~~ THEN REPLY @125 GOTO PC1-3-1
IF ~~ THEN REPLY @126 GOTO PC1-3-4 
END 

IF ~~ THEN BEGIN PC1-3-4
SAY @127
= @128
IF ~~ THEN DO ~IncrementGlobal("Break","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN PC1-3-2
SAY @129
= @130
IF ~~ THEN DO ~IncrementGlobal("Break","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN PC1-3-1
SAY @131
= @132
IF ~~ THEN REPLY @133 GOTO PC1-1-1
IF ~~ THEN REPLY @134 GOTO PC1-1-2
IF ~~ THEN REPLY @135 GOTO PC1-1-2
IF ~~ THEN REPLY @136 GOTO PC1-1-1
END 

IF ~~ THEN BEGIN PC1-1
SAY @137
= @138
IF ~~ THEN REPLY @133 GOTO PC1-1-1
IF ~~ THEN REPLY @134 GOTO PC1-1-2
IF ~~ THEN REPLY @135 GOTO PC1-1-2
IF ~~ THEN REPLY @136 GOTO PC1-1-1
END 

IF ~~ THEN BEGIN PC1-1-1
SAY @139
= @140
= @141
= @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PC1-1-2
SAY @143
= @144
= @145
IF ~~ THEN EXIT
END

CHAIN
IF ~InMyArea(Player1)
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaPC","GLOBAL",1)
GlobalGT("BKKChat","GLOBAL",3)~ THEN Z#KOVAB PC2
@146
DO ~SetGlobal("BKovaPC","GLOBAL",2)~
= @147
END
IF ~~ THEN REPLY @148 GOTO PC2-1
IF ~~ THEN REPLY @149 GOTO PC2-1
IF ~~ THEN REPLY @150 GOTO PC2-3
IF ~~ THEN REPLY @151 GOTO PC2-4

CHAIN
IF ~~ THEN Z#KOVAB PC2-4  
@152
= @153
DO ~IncrementGlobal("Break","LOCALS",1)
SetGlobal("BKovaPC","GLOBAL",50)~ EXIT

CHAIN
IF ~~ THEN Z#KOVAB PC2-1
@154
EXTERN Z#KOVAB PC2-2

CHAIN
IF ~~ THEN Z#KOVAB PC2-3
@155
EXTERN Z#KOVAB PC2-2

CHAIN
IF ~~ THEN Z#KOVAB PC2-2
@156
END
IF ~~ THEN REPLY @157 GOTO PC2-cowl
IF ~~ THEN REPLY @158 GOTO PC2-shadow
IF ~~ THEN REPLY @159 GOTO PC2-law
IF ~~ THEN REPLY @160 GOTO PC2-End

CHAIN
IF ~~ THEN Z#KOVAB PC2-End
@161
= @162
= @163
EXIT

CHAIN
IF ~~ THEN Z#KOVAB PC2-law
@164
= @165
= @166
END
IF ~~ THEN REPLY @157 GOTO PC2-cowl
IF ~~ THEN REPLY @158 GOTO PC2-shadow
IF ~~ THEN REPLY @160 GOTO PC2-End

CHAIN
IF ~~ THEN Z#KOVAB PC2-cowl
@167
= @168
= @169
= @170
= @171
END
IF ~~ THEN REPLY @158 GOTO PC2-shadow
IF ~~ THEN REPLY @159 GOTO PC2-law
IF ~~ THEN REPLY @160 GOTO PC2-End

CHAIN
IF ~~ THEN Z#KOVAB PC2-shadow
@172
= @173
= @174
= @175
END
IF ~~ THEN REPLY @157 GOTO PC2-cowl
IF ~~ THEN REPLY @159 GOTO PC2-law
IF ~~ THEN REPLY @160 GOTO PC2-End

CHAIN
IF ~InMyArea(Player1)
GlobalGT("AsylumPlot","GLOBAL",40)
Global("KvBT","GLOBAL",0)~ THEN Z#KOVAB KvBT0
@176
DO ~SetGlobal("KvBT","GLOBAL",1)~
= @177
== Z#KOVAB IF ~OR (2) 
GlobalGT("DrowTalk","GLOBAL",4)
GlobalGT("SelfTalk","GLOBAL",2)~ THEN
@178
== Z#KOVAB @179
END 
IF ~!GlobalGT("DrowTalk","GLOBAL",4) 
!GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @180 GOTO KvBT06
IF ~!GlobalGT("DrowTalk","GLOBAL",4)
!GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @181 GOTO KvBT05
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @182 GOTO KvBT04
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @183 GOTO KvBT03
IF ~GlobalGT("GivePowerSlayer","GLOBAL",0)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @184 GOTO KvBT02
IF ~GlobalGT("GivePowerSlayer","GLOBAL",0)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY @185 GOTO KvBT01

CHAIN
IF ~~ THEN Z#KOVAB KvBT01
@186
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB  KvBT02
@187
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB KvBT03
@188
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB KvBT04
@189
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB KvBT0ext
@190
END
IF ~~ THEN REPLY @180 GOTO KvBT06
IF ~~ THEN REPLY @191 GOTO KvBT05

CHAIN
IF ~~ THEN Z#KOVAB KvBT05
@192
EXTERN Z#KOVAB KvBT1

CHAIN
IF ~~ THEN Z#KOVAB KvBT06
@193
EXTERN Z#KOVAB KvBT1

CHAIN
IF ~~ THEN Z#KOVAB KvBT1
@194
= @195
= @196
END
IF ~~ THEN REPLY @197 GOTO KvBT11
IF ~~ THEN REPLY @198 GOTO KvBT12
IF ~~ THEN REPLY @199 GOTO KvBT13
IF ~~ THEN REPLY @200 GOTO KvBT14
IF ~~ THEN REPLY @201 GOTO KvBT15

CHAIN
IF ~~ THEN Z#KOVAB KvBT11
@202
= @203
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT12
@204
= @203
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT13
@205
= @203
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT14
@206
= @207
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT15
@208
= @203
EXIT


/* ----------------------- *
 *  Kova / Kiyone Stage 0  *
 * ----------------------- */
CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",0)~ THEN Z#KOVAB KKc1
@209
DO ~SetGlobal("BKKChat","GLOBAL",1)~
== Z#KIYOB @210
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @211
== Z#KIYOB @212
== Z#KOVAB @213
== Z#KIYOB @214
== Z#KOVAB @215
== Z#KIYOB @216
== Z#KOVAB @217
== Z#KIYOB @218
== Z#KOVAB @219
== Z#KIYOB @220
== Z#KOVAB @221
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",1)~ THEN Z#KOVAB KKc2
@222
DO ~SetGlobal("BKKChat","GLOBAL",2)~
== Z#KIYOB @223
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @224
== Z#KIYOB @225
== Z#KOVAB @226
== Z#KIYOB @227
== Z#KOVAB @228
== Z#KIYOB @229
= @230
= @231
== Z#KOVAB @232
== Z#KIYOB @233
= @234
== Z#KOVAB @235
== Z#KIYOB @236
== Z#KOVAB @237
== Z#KIYOB @238
= @239
== Z#KOVAB @240
== Z#KIYOB @241
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",2)~ THEN Z#KIYOB KKc3
@242
DO ~SetGlobal("BKKChat","GLOBAL",3)~
== Z#KOVAB @243
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @244
== Z#KOVAB @245
== Z#KIYOB @246
== Z#KOVAB @247
== Z#KIYOB @248
= @249
== Z#KOVAB @250
== Z#KIYOB @251
== Z#KOVAB @252 
= @253
== Z#KIYOB @254
== Z#KOVAB @255
== Z#KIYOB @256
== Z#KOVAB @257
== Z#KIYOB @258
== Z#KOVAB @259
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",3)~ THEN Z#KIYOB KKc4
@260
DO ~SetGlobal("BKKChat","GLOBAL",4)~
== Z#KOVAB @261
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @262
== Z#KOVAB @263
== Z#KIYOB @264
== Z#KOVAB @265
== Z#KIYOB @266
== Z#KOVAB @267
= @268
== Z#KIYOB @269
== Z#KOVAB @270
== Z#KIYOB @271
== Z#KOVAB @272
== Z#KIYOB @273
== Z#KOVAB @274
== Z#KIYOB @275
== Z#KOVAB @276
== Z#KIYOB @277
== Z#KOVAB @278
== Z#KIYOB @279
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",4)~ THEN Z#KOVAB KKc5
@280
DO ~SetGlobal("BKKChat","GLOBAL",5)~
== Z#KIYOB @281
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @282
== Z#KIYOB @283
== Z#KOVAB @284
== Z#KIYOB @285
== Z#KOVAB @286
== Z#KIYOB @287
== Z#KOVAB @288
== Z#KIYOB @289
== Z#KOVAB @290
== Z#KIYOB @291
== Z#KOVAB @292
== Z#KIYOB @293
== Z#KOVAB @294
== Z#KIYOB @295
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",5)~ THEN Z#KIYOB KKc6
@296
DO ~SetGlobal("BKKChat","GLOBAL",6)~
== Z#KOVAB @297
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @298
== Z#KOVAB @299
== Z#KIYOB @300
== Z#KOVAB @301
== Z#KIYOB @302
== Z#KOVAB @303
== Z#KIYOB @304
== Z#KOVAB @305
== Z#KIYOB @306
== Z#KOVAB @307
== Z#KIYOB @308
== Z#KOVAB @309
== Z#KIYOB @310
== Z#KOVAB @311
== Z#KIYOB @312
== Z#KOVAB @313
= @314
== Z#KIYOB @315
== Z#KOVAB @316
= @317
== Z#KIYOB @318
== Z#KOVAB @319
== Z#KIYOB @320
== Z#KOVAB @321
== Z#KIYOB @322
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",6)~ THEN Z#KIYOB KKc7
@323
DO ~SetGlobal("BKKChat","GLOBAL",7) SetGlobal("KKRomance","GLOBAL",1)~
= @324
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
= @325
== Z#KOVAB @326 
= @327
= @328
== Z#KIYOB @329
== Z#KOVAB @330
== Z#KIYOB @331
== Z#KOVAB @332
== Z#KIYOB @333
== Z#KOVAB @334
= @335
= @336
= @337
== Z#KIYOB @338
== Z#KOVAB @339
== Z#KIYOB @340
== Z#KOVAB @341
== Z#KIYOB @342
== Z#KOVAB @343
== Z#KIYOB @344
== Z#KOVAB @345
== Z#KIYOB @346
EXIT


/* ---------- *
 *  KKDream1  *
 * ---------- */
CHAIN
IF ~Global("KKDream1","GLOBAL",1)
AreaType(FOREST)
InParty("Kova")
InParty("Kiyone")
Global("KKRomance","GLOBAL",0)~ THEN Z#KIYOJ KKDream11
@347
= @348
END
IF ~~ THEN REPLY @349 GOTO KKDream11re1
IF ~~ THEN REPLY @350 GOTO KKDream11re2

CHAIN
IF ~~ THEN Z#KIYOJ KKDream11re1
@351
DO ~EquipRanged() SetSequence(SEQ_READY)
SetGlobal("KKDream1","GLOBAL",2) SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ KKDream11re2
@352
DO ~EquipRanged() SetSequence(SEQ_READY) IncrementGlobal("Break","LOCALS",1)
SetGlobal("KKDream1","GLOBAL",2) SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1","GLOBAL",2)~ THEN Z#KIYOJ KKDream12
@353
DO ~SetGlobal("KKDream1","GLOBAL",3)~
== Z#KOVAJ @354 
= @355
== Z#KIYOJ @356 
== Z#KOVAJ @357
== Z#KIYOJ @358
== Z#KOVAJ @359
== Z#KIYOJ @360
DO ~EquipMostDamagingMelee() SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1","GLOBAL",3)
Range("Kiyone",5)~ THEN Z#KOVAJ KKDream13
@361
== Z#KIYOJ @362
== Z#KOVAJ @363
== Z#KIYOJ @364
END
IF ~~ THEN REPLY @365 EXTERN Z#KOVAJ KKDream13re1
IF ~~ THEN REPLY @366 EXTERN Z#KOVAJ KKDream13re1
IF ~~ THEN REPLY @367 EXTERN Z#KIYOJ KKDream13re2
IF ~~ THEN REPLY @368
EXTERN Z#KIYOJ KKDream13re2

CHAIN
IF ~~ THEN Z#KOVAJ KKDream13re1
@369
DO ~IncrementGlobal("Break","LOCALS",1)~
== Z#KIYOJ @370
== Z#KOVAJ @371
DO ~SetGlobal("KKDream1","GLOBAL",10) RestParty() 
ActionOverride(Player2,SetSequence(SEQ_READY))
ActionOverride(Player3,SetSequence(SEQ_READY))
ActionOverride(Player4,SetSequence(SEQ_READY))
ActionOverride(Player5,SetSequence(SEQ_READY))
ActionOverride(Player6,SetSequence(SEQ_READY)) SetCutSceneLite(FALSE)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ KKDream13re2
@372
== Z#KOVAJ @373
DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",RunAwayFrom("Kiyone",30)) SetGlobal("KKDream1","GLOBAL",4)
SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1","GLOBAL",4)
Range("Kova",5)~ THEN Z#KIYOJ KKDream14
@374
== Z#KOVAJ @375
== Z#KIYOJ @376
== Z#KOVAJ @377
== Z#KIYOJ @378
= @379
DO ~PlaySong(0)
ActionOverride("Kova",RunAwayFrom("Kiyone",10)) SetCutSceneLite(TRUE) 
RealSetGlobalTimer("KKDreamT","GLOBAL",1)
SetGlobal("KKDream1","GLOBAL",5)~ EXIT 

CHAIN
IF ~Global("KKDream1","GLOBAL",5)
Range("Kiyone",5)~ THEN Z#KOVAJ KKDream15
@380
DO ~PlaySound("kkrom1") PlaySong(0)~
== Z#KIYOJ @381
== Z#KOVAJ @382
== Z#KIYOJ @383
== Z#KOVAJ @384
= @385
== Z#KIYOJ @386
== Z#KOVAJ @387 
== Z#KIYOJ @388
== Z#KOVAJ @389
== Z#KIYOJ @390
== Z#KOVAJ @391
== Z#KIYOJ @392
== Z#KOVAJ @393
== Z#KIYOJ @394
== Z#KOVAJ @395
= @396
== Z#KIYOJ @397
DO ~ActionOverride("Kova",MoveToObject(Player1))
ActionOverride("Kiyone",MoveToObject(Player1))
SetGlobal("KKDream1","GLOBAL",6)
SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1","GLOBAL",6)
Range(Player1,5)~ THEN Z#KIYOJ KKDream16
@398
== Z#KOVAJ @399
= @400
== Z#KIYOJ @401
DO ~SetGlobal("KKDream1","GLOBAL",10)  RestParty() 
SetCutSceneLite(FALSE)~ EXIT


/* ----------------------- *
 *  Kova / Kiyone Stage 1  *
 * ----------------------- */

// 1
// -
CHAIN
IF ~Global("KKStage11","GLOBAL",1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",1)
Global("KKBanter11","GLOBAL",0)~ THEN Z#KOVAB KKBanter111in1
@402
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter111

CHAIN
IF ~Global("KKStage12","GLOBAL",1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",2)
Global("KKBanter11","GLOBAL",0)~ THEN Z#KOVAB KKBanter111in2
@402
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter111

CHAIN
IF ~Global("KKStage13","GLOBAL",1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",3)
Global("KKBanter11","GLOBAL",0)~ THEN Z#KOVAB KKBanter111in3
@402
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter111

CHAIN
IF ~~ THEN Z#KIYOB KKBanter111
@403
DO ~SetGlobal("KKBanter11","GLOBAL",1)~
== Z#KOVAB @404
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @405
= @406
== Z#KOVAB @407
== Z#KIYOB @408
== Z#KOVAB @409
== Z#KIYOB @410
== Z#KOVAB @411
== Z#KIYOB @412
= @413
== Z#KOVAB @414
== Z#KIYOB @415
== Z#KOVAB @416
== Z#KIYOB @417
== Z#KOVAB @418
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter11","GLOBAL",1)~ THEN Z#KIYOB KKBanter112
@419
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KOVAB @420
DO ~SetGlobal("KKBanter11","GLOBAL",2) IncrementGlobal("KKInStage1x","GLOBAL",1)~
== Z#KIYOB @421
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @422
== Z#KIYOB @423
== Z#KOVAB @424
== Z#KIYOB @425 
= @426
== Z#KOVAB @427
= @428
== Z#KIYOB @429
== Z#KOVAB @430
== Z#KIYOB @431
== Z#KOVAB @432
== Z#KIYOB @433
== Z#KOVAB @434
== Z#KIYOB @435
= @436
== Z#KOVAB @437
== Z#KIYOB @438
== Z#KOVAB @439
== Z#KIYOB @440
EXIT

// 2
// -
CHAIN
IF ~Global("KKStage11","GLOBAL",2)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",1)
Global("KKBanter12","GLOBAL",0)~ THEN Z#KOVAB KKBanter121in1
@441
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter121

CHAIN
IF ~Global("KKStage12","GLOBAL",2)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",2)
Global("KKBanter12","GLOBAL",0)~ THEN Z#KOVAB KKBanter121in2
@441
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter121

CHAIN
IF ~Global("KKStage13","GLOBAL",2)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",3)
Global("KKBanter12","GLOBAL",0)~ THEN Z#KOVAB KKBanter121in3
@441
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter121

CHAIN
IF ~~ THEN Z#KIYOB KKBanter121
@442 
DO ~SetGlobal("KKBanter12","GLOBAL",1)~
== Z#KOVAB @443
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @444
= @445
== Z#KOVAB @446
= @447
== Z#KIYOB @448
== Z#KOVAB @449
== Z#KIYOB @450
= @451
= @452
== Z#KOVAB @453
== Z#KIYOB @454
== Z#KOVAB @455
== Z#KIYOB @456
= @457
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter12","GLOBAL",1)~ THEN Z#KIYOB KKBanter122
@458
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KOVAB @459
DO ~SetGlobal("KKBanter12","GLOBAL",2) IncrementGlobal("KKInStage1x","GLOBAL",1)~
== Z#KIYOB @460
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @461
== Z#KIYOB @462
= @463
= @464
== Z#KOVAB @465 
= @466
= @467
== Z#KIYOB @468
= @469
== Z#KOVAB @470
== Z#KIYOB @471
= @472
EXIT

// 3
// -
CHAIN
IF ~Global("KKStage12","GLOBAL",3)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",2)
Global("KKBanter13","GLOBAL",0)~ THEN Z#KOVAB KKBanter131in2
@473
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter131


CHAIN
IF ~Global("KKStage13","GLOBAL",3)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x","GLOBAL",3)
Global("KKBanter13","GLOBAL",0)~ THEN Z#KOVAB KKBanter131in3
@473
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter131

CHAIN
IF ~~ THEN Z#KIYOB KKBanter131
@474
DO ~SetGlobal("KKBanter13","GLOBAL",1)~
== Z#KOVAB @475
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @476
== Z#KOVAB @477
== Z#KIYOB @478
== Z#KOVAB @479
== Z#KIYOB @480
== Z#KOVAB @481
== Z#KIYOB @482
== Z#KOVAB @483
== Z#KIYOB @484
== Z#KOVAB @485
== Z#KIYOB @486
== Z#KOVAB @487
== Z#KIYOB @488
== Z#KOVAB @489
== Z#KIYOB @490
== Z#KOVAB @491
== Z#KIYOB @492
== Z#KOVAB @493
== Z#KIYOB @494
== Z#KOVAB @495
== Z#KIYOB @496
== Z#KOVAB @497
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter13","GLOBAL",1)~ THEN Z#KIYOB KKBanter132
@498
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KOVAB @499
DO ~SetGlobal("KKBanter13","GLOBAL",2) IncrementGlobal("KKInStage1x","GLOBAL",1)~
== Z#KIYOB @500
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
= @501
== Z#KOVAB @502
== Z#KIYOB @503
== Z#KOVAB @504
== Z#KIYOB @505
== Z#KOVAB @506
= @507
== Z#KIYOB @508
== Z#KOVAB @509
== Z#KIYOB @510
== Z#KOVAB @511
== Z#KIYOB @512
== Z#KOVAB @513
== Z#KIYOB @514
EXIT

// 4
// -
CHAIN
IF ~Global("KKStage12","GLOBAL",4)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kova") InMyArea("Kova")
Global("KKInStage1x","GLOBAL",2)
Global("KKBanter14","GLOBAL",0)~ THEN Z#KIYOB KKBanter141in2
@515
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KOVAB KKBanter141

CHAIN
IF ~Global("KKStage13","GLOBAL",4)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kova") InMyArea("Kova")
Global("KKInStage1x","GLOBAL",3)
Global("KKBanter14","GLOBAL",0)~ THEN Z#KIYOB KKBanter141in3
@515
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KOVAB KKBanter141

CHAIN
IF ~~ THEN Z#KOVAB KKBanter141
@516
DO ~SetGlobal("KKBanter14","GLOBAL",1)~
== Z#KIYOB @517
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @518
= @519
== Z#KIYOB @520
== Z#KOVAB @521
= @522
== Z#KIYOB @523
== Z#KOVAB @524
= @525
== Z#KIYOB @526
== Z#KOVAB @527
== Z#KIYOB @528
== Z#KOVAB @529
== Z#KIYOB @530
== Z#KOVAB @531
== Z#KIYOB @532
== Z#KOVAB @533
== Z#KIYOB @534
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter14","GLOBAL",1)~ THEN Z#KOVAB KKBanter142
@535
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KIYOB @536 
DO ~SetGlobal("KKBanter14","GLOBAL",2) IncrementGlobal("KKInStage1x","GLOBAL",1)~
== Z#KOVAB @537
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @538
= @539 
== Z#KOVAB @540
== Z#KIYOB @541
== Z#KOVAB @542
== Z#KIYOB @543
== Z#KOVAB @544
== Z#KIYOB @545
== Z#KOVAB @546
== Z#KIYOB @547
== Z#KOVAB @548
= @549
== Z#KIYOB @550
== Z#KOVAB @551
== Z#KIYOB @552
== Z#KOVAB @553
== Z#KIYOB @554
== Z#KOVAB @555
== Z#KIYOB @556
EXIT

// 5
// -
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKInStage1x","GLOBAL",4)
Global("BKKChat","GLOBAL",7)~ THEN Z#KIYOB KKc8
@557
DO ~SetGlobal("BKKChat","GLOBAL",8) 
PlaySound("kkrom2") PlaySong(0)
SetGlobal("KKRomance","GLOBAL",2)~
== Z#KOVAB @558
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)
SetGlobal("BKKChat","GLOBAL",8)~
== Z#KIYOB @559
== Z#KOVAB @560 
== Z#KIYOB @561
== Z#KOVAB @562
== Z#KIYOB @563
== Z#KOVAB @564
== Z#KIYOB @565
== Z#KOVAB @566
DO ~SetGlobal("KKRomance","GLOBAL",2)
SetGlobal("BKKChat","GLOBAL",8)~
== Z#KIYOB @567
== Z#KOVAB @568
== Z#KIYOB @569
= @570
== Z#KOVAB @571
DO ~SetGlobal("KKRomance","GLOBAL",2)~
== Z#KIYOB @572
== Z#KOVAB @573 
= @574
== Z#KIYOB @575
== Z#KOVAB @576
== Z#KIYOB @577 
== Z#KOVAB @578
DO ~SetGlobal("KKRomance","GLOBAL",2)~ EXIT


/* ----------------- *
 *  Kova on Cooking  *
 * ----------------- */
CHAIN
IF ~Global("Z#RestInn","GLOBAL",1)
Global("Z#TrialClear","GLOBAL",0)
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",0)
Global("BKvCook","GLOBAL",0)
OR(10)
AreaCheck("AR0313") // The Thumb
AreaCheck("AR0406") // Copper Coronet
AreaCheck("AR0509") // Five Flagons
AreaCheck("AR0513") // Delosar
AreaCheck("AR0522") // Five Flagons
AreaCheck("AR0704") // Mithrest
AreaCheck("AR0709") // Den of 7 Vales
AreaCheck("AR1105") // Umar Inn
AreaCheck("AR1602") // Brynnlaw Inn
AreaCheck("AR2010") // Trademeet Inn
~ THEN Z#KIYOJ KvCook1
@579
DO ~SetGlobal("BKvCook","GLOBAL",1) SetGlobal("Z#RestInn","GLOBAL",0)
PlaySound("kkrom1") PlaySong(0)~
==Z#KOVAJ @580
= @581
==Z#KIYOJ @582
==Z#KOVAJ @583
= @584
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen")~ THEN
@585
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN
@586
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")~ THEN
@587
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis")~ THEN
@588
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN
@589
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN
@590
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN
@591
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN
@592
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN
@593
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy")~ THEN
@594
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN
@595
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN
@596
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")~ THEN
@597
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN
@598
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo")~ THEN
@599
== Z#KIYOJ @600
== Z#KOVAJ @601
== Z#KIYOJ @602
== Z#KOVAJ @603
== Z#KIYOJ @604
= @605
== Z#KOVAJ @606
== Z#KIYOJ @607
= @608
= @609
== Z#KOVAJ @345
== Z#KIYOJ @346
EXIT

CHAIN
IF ~Global("Z#RestInn","GLOBAL",1)
Global("Z#TrialClear","GLOBAL",0)
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",0)
Global("BKvCook","GLOBAL",1)
OR(10)
AreaCheck("AR0313") // The Thumb
AreaCheck("AR0406") // Copper Coronet
AreaCheck("AR0509") // Five Flagons
AreaCheck("AR0513") // Delosar
AreaCheck("AR0522") // Five Flagons
AreaCheck("AR0704") // Mithrest
AreaCheck("AR0709") // Den of 7 Vales
AreaCheck("AR1105") // Umar Inn
AreaCheck("AR1602") // Brynnlaw Inn
AreaCheck("AR2010") // Trademeet Inn
~ THEN Z#KIYOJ KvCook2
@610
DO ~SetGlobal("BKvCook","GLOBAL",2) SetGlobal("Z#RestInn","GLOBAL",0) GiveGoldForce(-3)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAJ @611
== Z#KIYOJ @612
== Z#KOVAJ @613
== Z#KIYOJ @614
== Z#KOVAJ @615
== Z#KIYOJ @616
== Z#KOVAJ @617
== Z#KIYOJ @618
= @619
== Z#KOVAJ @620
== Z#KIYOJ @621
== Z#KOVAJ @622 
= @623
== Z#KIYOJ @624
EXIT 

CHAIN
IF ~GlobalGT("KKRomance","GLOBAL",0)
	Global("Z#TrialClear","GLOBAL",0)
	InParty("Kova") InMyArea("Kova")
	Global("BKvCook","GLOBAL",3)
	RealGlobalTimerExpired("KvCookT","GLOBAL")	
	OR(10)
	AreaCheck("AR0313") // The Thumb
	AreaCheck("AR0406") // Copper Coronet
	AreaCheck("AR0509") // Five Flagons
	AreaCheck("AR0513") // Delosar
	AreaCheck("AR0522") // Five Flagons
	AreaCheck("AR0704") // Mithrest
	AreaCheck("AR0709") // Den of 7 Vales
	AreaCheck("AR1105") // Umar Inn
	AreaCheck("AR1602") // Brynnlaw Inn
	AreaCheck("AR2010") // Trademeet Inn
~ THEN Z#KIYOJ KvCook3
@625
DO ~PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAJ @626
== Z#KIYOJ @627
== Z#KOVAJ @628
DO ~SetCutSceneLite(TRUE)
SetGlobal("BKvCook","GLOBAL",4)
RealSetGlobalTimer("KvCookT","GLOBAL",5)
ActionOverride("Kiyone",RunAwayFrom(Player1,60))
FadeToColor([60.0],0)~ EXIT

CHAIN
IF ~GlobalGT("KKRomance","GLOBAL",0)
	Global("Z#TrialClear","GLOBAL",0)
	InParty("Kiyone") InMyArea("Kiyone")
	Global("BKvCook","GLOBAL",5)
	OR(10)
	AreaCheck("AR0313") // The Thumb
	AreaCheck("AR0406") // Copper Coronet
	AreaCheck("AR0509") // Five Flagons
	AreaCheck("AR0513") // Delosar
	AreaCheck("AR0522") // Five Flagons
	AreaCheck("AR0704") // Mithrest
	AreaCheck("AR0709") // Den of 7 Vales
	AreaCheck("AR1105") // Umar Inn
	AreaCheck("AR1602") // Brynnlaw Inn
	AreaCheck("AR2010") // Trademeet Inn
~ THEN Z#KOVAJ KvCook4
@629
DO ~SetGlobal("BKvCook","GLOBAL",6) SetCutSceneLite(FALSE)~
== Z#KIYOJ @630
== Z#KOVAJ @631
== Z#KIYOJ @632
== Z#KOVAJ @633
EXIT 


/* ------------------- *
 *  2 Underdark Chats  *
 * ------------------- */
CHAIN
IF WEIGHT #-1 ~Global("KKJoin","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("KKDrowFormChat","GLOBAL",0)
InParty("Kova")
InParty("Kiyone")
!ActuallyInCombat()
InMyArea("Kova")~ THEN Z#KIYOB KKDrowCh1
@634
DO ~SetGlobal("KKDrowFormChat","GLOBAL",1)~
= @635
== Z#KOVAB @636
= @637
== Z#KIYOB @638
== Z#KOVAB @639
== Z#KIYOB @640
== Z#KOVAB @641
== Z#KIYOB @642
== Z#KOVAB IF ~GlobalLT("KKRomance","GLOBAL",2)~ THEN 
@643
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@644
== Z#KOVAB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@645
= @646
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@647
== Z#KOVAB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@648
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@649
== Z#KOVAB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@650
= @651
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@652
== Z#KOVAB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@653
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@654
EXIT

CHAIN 
IF WEIGHT #-1 ~Global("KKJoin","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("KKDrowFormChat","GLOBAL",1)
InParty("Kova")
InParty("Kiyone")
!ActuallyInCombat()
InMyArea("Kova")~ THEN Z#KIYOB KKDrowCh2
@655
DO ~SetGlobal("KKDrowFormChat","GLOBAL",2)~
== Z#KOVAB @656
== Z#KIYOB @657
== Z#KOVAB @658
== Z#KIYOB @659
== Z#KOVAB @660
== Z#KIYOB @661
== Z#KOVAB @662
== Z#KIYOB @663
= @664
== Z#KOVAB @665
== Z#KIYOB @666
= @667
== Z#KOVAB @668
== Z#KIYOB @669
== Z#KOVAB @670
= @671
== Z#KIYOB @672
= @673
== Z#KOVAB @674
== Z#KIYOB @675
= @676
== Z#KOVAB @677
== Z#KIYOB @678
EXIT


/* ---------------------- *
 *  Kiyone on the Forest  *
 * ---------------------- */
CHAIN
IF WEIGHT #-1 ~AreaType(Forest)
Global("BKyForest","GLOBAL",0)
GlobalGT("KKRomance","GLOBAL",0)
RandomNumLT(7,7)
!AreaCheck("AR1404")~ THEN Z#KOVAB BKyForest1
@679
DO ~SetGlobal("BKyForest","GLOBAL",1)
PlaySound("kkrom1") PlaySong(0)~
= @680
== Z#KIYOB @681
== Z#KOVAB @682
= @683
== Z#KIYOB @684
== Z#KOVAB @685
== Z#KIYOB @686
== Z#KOVAB @687
== Z#KIYOB @688
== Z#KOVAB @689
== Z#KIYOB @690
EXIT

CHAIN
IF WEIGHT #-1 ~AreaType(Forest)
Global("BKyForest","GLOBAL",1)
GlobalGT("KKRomance","GLOBAL",0)
RandomNumLT(5,5)
!AreaCheck("AR1404")~ THEN Z#KIYOB BKyForest2
@691
DO ~SetGlobal("BKyForest","GLOBAL",2)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAB @692
== Z#KIYOB @693
== Z#KOVAB @694
= @695
== Z#KIYOB @696
== Z#KOVAB @697
= @698
== Z#KIYOB @699
= @700
== Z#KOVAB @701
== Z#KIYOB @702
= @703
== Z#KOVAB @704
== Z#KIYOB @690
== Z#KOVAB @705
== Z#KIYOB @706
== Z#KOVAB @707
== Z#KIYOB @708
= @709
== Z#KOVAB @710
= @711
== Z#KIYOB @712
= @713 
== Z#KOVAB @714
== Z#KIYOB @715
EXIT

CHAIN
IF WEIGHT #-1 ~AreaType(Forest)
Global("BKyForest","GLOBAL",2)
GlobalGT("KKRomance","GLOBAL",0)
TimeGT(7)
TimeLT(21)
!AreaCheck("AR1404")~ THEN Z#KIYOB BKyForest3
@716
DO ~SetGlobal("BKyForest","GLOBAL",3)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAB @717
= @718
== Z#KIYOB @719
== Z#KOVAB @720
== Z#KIYOB @721
== Z#KOVAB @722
= @723
== Z#KIYOB @724
== Z#KOVAB @725
= @726
== Z#KIYOB @727
== Z#KOVAB @728
== Z#KIYOB @729
= @730
== Z#KOVAB @731
== Z#KIYOB @732
== Z#KOVAB @733
== Z#KIYOB @734
== Z#KOVAB @735
== Z#KIYOB @736
= @737
== Z#KOVAB @738
== Z#KIYOB @739
== Z#KOVAB @740
EXIT


/* ----------------------- *
 *  Kova / Kiyone Stage 2  *
 * ----------------------- */

// 1
// -
CHAIN
IF ~Global("KKStage21","GLOBAL",1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone") 
Global("KKInStage2x","GLOBAL",1)
Global("KKBanter21","GLOBAL",0)~ THEN Z#KIYOB KKBanter21in1
@741
= @742
DO ~PlaySound("kkrom2") PlaySong(0)~ EXTERN Z#KIYOB KKBanter21

CHAIN
IF ~~ THEN Z#KIYOB KKBanter21
@743
DO ~SetGlobal("KKBanter21","GLOBAL",1)~
== Z#KOVAB @744
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB @745
= @746
== Z#KOVAB @747
= @748
== Z#KIYOB @749
== Z#KOVAB @750
== Z#KIYOB @751
= @752
== Z#KOVAB @753 
== Z#KIYOB @754
== Z#KOVAB @755
== Z#KIYOB @756
== Z#KOVAB @757
== Z#KIYOB @758
== Z#KOVAB @759
== Z#KIYOB @760
== Z#KOVAB @761
== Z#KIYOB @762
= @763
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter21","GLOBAL",1)~ THEN Z#KIYOB KKBanter212
@764
DO ~PlaySound("kkrom2") PlaySong(0)~ 
== Z#KOVAB @765
DO ~SetGlobal("KKBanter21","GLOBAL",2) 
IncrementGlobal("KKInStage2x","GLOBAL",1)~
== Z#KIYOB @766
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB @767
== Z#KIYOB @768
== Z#KOVAB @769
== Z#KIYOB @770
= @771
== Z#KOVAB @772
== Z#KIYOB @773
= @774
== Z#KOVAB @775
== Z#KIYOB @776
== Z#KOVAB @777
== Z#KIYOB @778 
= @779
== Z#KOVAB @780
== Z#KIYOB @781
= @782
== Z#KOVAB @783
== Z#KIYOB @784
EXIT


/* ------------------- *
 *  Kiyone on Writing  *
 * ------------------- */
CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
GlobalGT("KKRomance","GLOBAL",1)
Global("Z#PartyRested","GLOBAL",1)
Global("BKyWrite","GLOBAL",0)~ THEN Z#KOVAJ kiyowrite1
@785
DO ~SetGlobal("BKyWrite","GLOBAL",1)
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ @786
== Z#KOVAJ @787
== Z#KIYOJ @788
== Z#KOVAJ @789
= @790
== Z#KIYOJ @791
== Z#KOVAJ @792
== Z#KIYOJ @793
= @794
== Z#KOVAJ @795
== Z#KIYOJ @796
== Z#KOVAJ @797
== Z#KIYOJ @798
== Z#KOVAJ @799
== Z#KIYOJ @800
== Z#KOVAJ @801
== Z#KIYOJ @802
== Z#KOVAJ @803
== Z#KIYOJ @804
DO ~RestParty()~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
GlobalGT("KKRomance","GLOBAL",1)
Global("Z#PartyRested","GLOBAL",1)
Global("BKyWrite","GLOBAL",1)~ THEN Z#KOVAJ kiyowrite2
@805
DO ~SetGlobal("BKyWrite","GLOBAL",2)
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ @806
== Z#KOVAJ @807
== Z#KIYOJ @808
== Z#KOVAJ @809
== Z#KIYOJ @810
== Z#KOVAJ @811
== Z#KIYOJ @812
== Z#KOVAJ @813
== Z#KIYOJ @814
== Z#KOVAJ @815
== Z#KIYOJ @816
== Z#KOVAJ @817
= @818
== Z#KIYOJ @819
== Z#KOVAJ @820
== Z#KIYOJ @821
== Z#KOVAJ @822
== Z#KIYOJ @823
== Z#KOVAJ @824
== Z#KIYOJ @825
DO ~RestParty()~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)
Global("Z#PartyRested","GLOBAL",1)
Global("BKyWrite","GLOBAL",2)~ THEN Z#KIYOJ kiyowrite3
@826
DO ~SetGlobal("BKyWrite","GLOBAL",3)
PlaySound("kkrom2") PlaySong(0)~
== Z#KOVAJ @827
== Z#KIYOJ @828
== Z#KOVAJ @829 
= @830
= @831
== Z#KIYOJ @832
== Z#KOVAJ @833
== Z#KIYOJ @834
== Z#KOVAJ @835
== Z#KIYOJ @836
== Z#KOVAJ @837
== Z#KIYOJ @838 
= @839
== Z#KOVAJ @840
== Z#KIYOJ @841
== Z#KOVAJ @842
== Z#KIYOJ @843
== Z#KOVAJ @844
== Z#KIYOJ @845
== Z#KOVAJ @846
== Z#KIYOJ @847
== Z#KOVAJ @848
DO ~RestParty()~ EXIT


/* ----------------- *
 *  Kova on Fishing  *
 * ----------------- */
CHAIN
IF ~Global("KvFishing","GLOBAL",1)
	Global("BKvFishing","GLOBAL",0)
	Global("Z#KvFishingPlace","GLOBAL",0)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KIYOJ BKvFishing11
@849
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",1) 
SetCutSceneLite(TRUE)~
== Z#KOVAJ @850
== Z#KIYOJ @851
== Z#KOVAJ @852
== Z#KIYOJ @853
== Z#KOVAJ @854
EXIT

CHAIN
IF ~Global("Z#KvFishingPlace","GLOBAL",3)	
	Global("BKvFishing","GLOBAL",0)
	Global("KvFishing","GLOBAL",1)~ THEN Z#KOVAJ BKvFishing12
@855
DO ~SetGlobal("KvFishing","GLOBAL",2) SetCutSceneLite(TRUE) 
PlaySound("kkrom2") PlaySong(0)~  
== Z#KIYOJ @856
== Z#KOVAJ @857
= @858
== Z#KIYOJ @859
== Z#KOVAJ @860
== Z#KIYOJ @861
== Z#KOVAJ @862
END
IF ~AreaCheck("AR1100")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(8))
ActionOverride("Kiyone",Face(10))~ EXIT
IF ~AreaCheck("AR1200")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(9))
ActionOverride("Kiyone",Face(11))~ EXIT
IF ~AreaCheck("AR1800")~
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(7))
ActionOverride("Kiyone",Face(5))~ EXIT
IF ~AreaCheck("AR2500")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(6))
ActionOverride("Kiyone",Face(7))~ EXIT
IF ~AreaCheck("AR2600")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(13))
ActionOverride("Kiyone",Face(15))~ EXIT
IF ~AreaCheck("AR3000")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(7))
ActionOverride("Kiyone",Face(6))~ EXIT

CHAIN
IF ~Global("KvFishing","GLOBAL",2)
	Global("BKvFishing","GLOBAL",0)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KIYOJ BKvFishing13
@863
DO ~SetGlobal("BKvFishing","GLOBAL",1) 
SetGlobal("KvFishing","GLOBAL",0) 
SetGlobal("Z#KvFishingPlace","GLOBAL",0) 
SetCutSceneLite(FALSE)~
== Z#KOVAJ @864
== Z#KIYOJ @865
== Z#KOVAJ @866
== Z#KIYOJ @867
== Z#KOVAJ @868
= @869
== Z#KIYOJ @870 
= @871
== Z#KOVAJ @872
DO ~MoveGlobalObject("Kova",Player1) 
MoveGlobalObject("Kiyone",Player1) RestParty()~ EXIT


CHAIN
IF ~Global("KvFishing","GLOBAL",1)
	Global("BKvFishing","GLOBAL",1)
	Global("Z#KvFishingPlace","GLOBAL",0)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KOVAJ BKvFishing21
@873
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",1) 
SetCutSceneLite(TRUE)~
== Z#KIYOJ @874
== Z#KOVAJ @875
== Z#KIYOJ @876
== Z#KOVAJ @877
== Z#KIYOJ @878
EXIT

CHAIN
IF ~Global("KvFishing","GLOBAL",2)
	Global("BKvFishing","GLOBAL",1)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KOVAJ BKvFishing22
@879
DO ~SetGlobal("KvFishing","GLOBAL",3) SetCutSceneLite(FALSE) 
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ @880
== Z#KOVAJ @881
== Z#KIYOJ @882
== Z#KOVAJ @883
== Z#KIYOJ @884
== Z#KOVAJ @885
== Z#KIYOJ @886
== Z#KOVAJ @887
== Z#KIYOJ @888
DO ~MoveGlobalObject("Kova",Player1) 
MoveGlobalObject("Kiyone",Player1) RestParty()~ EXIT

CHAIN
IF ~Global("KvFishing","GLOBAL",3)
	Global("BKvFishing","GLOBAL",1)
	Global("Z#PartyRested","GLOBAL",0)~ THEN Z#KOVAJ BKvFishing23
@889
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",0) 
SetGlobal("KvFishing","GLOBAL",0)
SetGlobal("BKvFishing","GLOBAL",2)~
EXIT

CHAIN
IF ~InParty("Kova")
	InParty("Kiyone")
	GlobalGT("KKRomance","GLOBAL",1)
	Global("BKvFishing","GLOBAL",2)
	Global("KvFishing","GLOBAL",1)
	OR(6)
	AreaCheck("AR1100") // Umar Hills
	AreaCheck("AR1200") // Windspear Hills
	AreaCheck("AR1800") // North Forest
	AreaCheck("AR2500") // Underdark Exit
	AreaCheck("AR2600") // Forest of Tethyr
	AreaCheck("AR3000") // Watcher's Keep
	Global("Z#PartyRested","GLOBAL",2)~ THEN Z#KOVAJ BKvFishing31
@890
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",1) 
SetCutSceneLite(TRUE) 
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ @891 
== Z#KOVAJ @892
== Z#KIYOJ @893
= @894
EXIT

CHAIN
IF ~Global("KvFishing","GLOBAL",3)
	Global("BKvFishing","GLOBAL",2)
	Global("Z#PartyRested","GLOBAL",0)~ THEN Z#KIYOJ BKvFishing32
@895
DO ~SetGlobal("KvFishing","GLOBAL",0)
SetGlobal("BKvFishing","GLOBAL",3) 
SetGlobal("Z#KvFishingPlace","GLOBAL",0) 
SetCutSceneLite(FALSE)~
== Z#KOVAJ @896
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN
@897
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN
@898
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN
@899
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN
@900
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN
@901
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN
@902
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN
@903
== Z#KOVAJ IF ~OR(12)
InParty("Jan") InMyArea("Jan")
InParty("Aerie") InMyArea("Aerie")
InParty("Nalia") InMyArea("Nalia")
InParty("Minsc") InMyArea("Minsc")
InParty("Imoen2") InMyArea("Imoen2")
InParty("Korgan") InMyArea("Korgan")~ THEN
@904
== Z#KIYOJ @905
== Z#KOVAJ @906
EXIT


/* --------- *
 *  Viconia  *
 * --------- */
CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",0)~ THEN BVICONI Kiyo1
@907
DO ~SetGlobal("BKKVicon","GLOBAL",1)~
= @908
== Z#KIYOB @909
== BVICONI @910
== Z#KIYOB @911
== BVICONI @912
== Z#KIYOB @913
== BVICONI @914
== Z#KIYOB @915
 EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",1)~ THEN BVICONI Kova2
@916
DO ~SetGlobal("BKKVicon","GLOBAL",2)~
== Z#KOVAB @917
== BVICONI @918
== Z#KOVAB @919
== BVICONI @920
== Z#KOVAB @921
== BVICONI @922
== Z#KOVAB @923
== BVICONI @924
EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",2)~ THEN BVICONI Kova3
@925
DO ~SetGlobal("BKKVicon","GLOBAL",3)~ 
== Z#KOVAB @926
== BVICONI @927
= @928
== Z#KOVAB @929
== BVICONI @930
== Z#KOVAB @931
== BVICONI @932
== Z#KOVAB @933
== BVICONI @934
= @935
== Z#KOVAB IF ~Global("KKRomance","GLOBAL",0)~ THEN
@936
EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",3)
GlobalGT("KKRomance","GLOBAL",0)~ THEN BVICONI Kova4
@937
DO ~SetGlobal("BKKVicon","GLOBAL",4)~ 
== Z#KOVAB @938
== BVICONI @939
== Z#KOVAB @940
== BVICONI @941
== Z#KOVAB @942
== BVICONI @943
== Z#KOVAB @944
== BVICONI @945
== BVICONI IF ~OR(2)
Global("ViconiaRomanceActive","GLOBAL",0) 
Global("ViconiaRomanceActive","GLOBAL",3)~ THEN 
@946
EXIT

CHAIN
IF ~InParty("Viconia") InMyArea("Viconia") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",4)
GlobalGT("KKRomance","GLOBAL",0)~ THEN Z#KIYOB KKVicon5
@947
DO ~SetGlobal("BKKVicon","GLOBAL",5)~ 
== BVICONI @948
== Z#KIYOB @949
= @950
== BVICONI @951
== Z#KIYOB @952
== BVICONI @953
= @954
== Z#KIYOB @955
== BVICONI @956
== Z#KIYOB @957
== BVICONI @958
== Z#KIYOB @959
== BVICONI @960 
= @961
== Z#KIYOB @962
EXIT

CHAIN
IF ~OR(2)
Global("ViconiaRomanceActive","GLOBAL",0) 
Global("ViconiaRomanceActive","GLOBAL",3)
Global("Z#TrialClear","GLOBAL",0)
InParty("Kova") InMyArea("Kova") 
InParty("Kiyone") InMyArea("Kiyone") 
Global("BKKVicon","GLOBAL",5)
GlobalGT("KKRomance","GLOBAL",0)~ THEN BVICONI KKVicon6
@963
DO ~SetGlobal("BKKVicon","GLOBAL",6)~
= @964
== Z#KOVAB @965
== BVICONI @966
== Z#KOVAB @967
== BVICONI @968
== Z#KOVAB @969
== BVICONI @970
== Z#KOVAB @971
== BVICONI @972
== Z#KOVAB @973
== BVICONI @974
= @975
= @976
== Z#KOVAB @977
== BVICONI @978
== Z#KIYOB @979
== BVICONI @980
= @981
== Z#KIYOB @982
== BVICONI @983
== Z#KIYOB @984
== Z#KOVAB @985
== Z#KIYOB @986
DO ~RunAwayFrom("Viconia",30)~
== Z#KOVAB @987
= @988
DO ~MoveToObjectFollow("Kiyone")~
== BVICONI @989
EXIT

CHAIN
IF ~InMyArea(Player1) InMyArea(Player1) 
InParty("Kova") InMyArea("Kova")
InParty("Viconia") InMyArea("Viconia")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",6)
GlobalGT("KKRomance","GLOBAL",0)~ THEN Z#KIYOB KKVicon7
@990
DO ~SetGlobal("BKKVicon","GLOBAL",7)~ 
= @991
END
IF ~~ THEN REPLY @992 GOTO KKVicon7-0
IF ~~ THEN REPLY @993 GOTO KKVicon7-0
IF ~~ THEN REPLY @994 GOTO KKVicon7-0
IF ~~ THEN REPLY @995 GOTO KKVicon7-1

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-1
@996
DO ~IncrementGlobal("Break","LOCALS",1)
SetGlobal("BKiyoPC","GLOBAL",50)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-0
@997
= @998
END
IF ~~ THEN REPLY @999 GOTO KKVicon7-4
IF ~~ THEN REPLY @1000 GOTO KKVicon7-3
IF ~~ THEN REPLY @1001 GOTO KKVicon7-2
IF ~~ THEN REPLY @1002 GOTO KKVicon7-1

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-2
@1003
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-3
@1004
= @1005
DO ~ActionOverride("Viconia",DropInventory()) 
ActionOverride("Viconia",LeaveParty())~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-4
@1006
= @1007
== BVICONI @1008
== Z#KIYOB @1009
DO ~EquipRanged()
SetGlobal("KyVicFight","GLOBAL",1)
SetCutSceneLite(TRUE)~
== BVICONI @1010
DO ~ReallyForceSpell(Myself,CLERIC_HEAL) 
ReallyForceSpell(Myself,CLERIC_BLESS) 
ReallyForceSpell(Myself,CLERIC_AID) 
ReallyForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) 
ReallyForceSpell(Myself,CLERIC_ARMOR_OF_FAITH) 
ReallyForceSpell(Myself,CLERIC_CHAMPIONS_STRENGTH) 
ReallyForceSpell("Kiyone",CLERIC_HEAL) 
ReallyForceSpell("Kiyone",CLERIC_ARMOR_OF_FAITH) 
ReallyForceSpell("Kiyone",CLERIC_BLESS) 
ReallyForceSpell("Kiyone",CLERIC_AID) 
ReallyForceSpell("Kiyone",CLERIC_BARKSKIN)
Attack("Kiyone")
SetCutSceneLite(TRUE)~ EXIT


/* ------------------------- *
 *  Post Kiyo Viconia Fight  *
 * ------------------------- */
CHAIN
IF ~GlobalGT("KyVicFight","GLOBAL",0)
Dead("Viconia")
!Global("KyVicFight","GLOBAL",3)~ THEN Z#KIYOJ ByeVicon
@1011
DO ~SetGlobal("KyVicFight","GLOBAL",3)
ActionOverride("Viconia",LeaveParty())
ReputationInc(2)~
== Z#KOVAJ 
@1012
== Z#KIYOJ 
@1013
== Z#KOVAJ 
@1014
== Z#KIYOJ
@1015
== Z#KOVAJ 
@1016
== Z#KIYOJ
@1017
== Z#KOVAJ 
@1018
EXIT

CHAIN
IF ~GlobalGT("KyVicFight","GLOBAL",0)
Dead("Kiyone")
!Dead("Viconia")
!Global("KyVicFight","GLOBAL",3)~ THEN VICONIJ ByeKiyone
@1019
DO ~SetGlobal("KyVicFight","GLOBAL",3)
ActionOverride("Kiyone",LeaveParty())~
== Z#KOVAJ 
@1020
== VICONIJ
@1021
= @1022
== Z#KOVAJ
@1023
= @1024
== VICONIJ
@1025
== Z#KOVAJ
@1026
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)
ActionOverride("Kiyone",DestroySelf())~ EXIT


/* --------- *
 *  Yoshimo  *
 * --------- */
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaYoshi","GLOBAL",0)~ THEN BYOSHIM Kova1
@1027
== Z#KOVAB @1028
DO ~SetGlobal("BKovaYoshi","GLOBAL",1)~
== BYOSHIM @1029
== Z#KOVAB @1030
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaYoshi","GLOBAL",1)~ THEN BYOSHIM Kova2
@1031
== Z#KOVAB @1032
DO ~SetGlobal("BKovaYoshi","GLOBAL",2)~
== BYOSHIM @1033
== Z#KOVAB @1034
== BYOSHIM @1035
== Z#KOVAB @1036
EXIT

CHAIN
IF ~InParty("Yoshimo") InMyArea("Yoshimo") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaYoshi","GLOBAL",2)~ THEN Z#KOVAB Yoshi3
@1037
DO ~SetGlobal("BKovaYoshi","GLOBAL",3)~
== BYOSHIM @1038
== Z#KOVAB @1039
== BYOSHIM @1040
== Z#KOVAB @1041
== BYOSHIM @1042
== Z#KOVAB @1043
== BYOSHIM @1044
== Z#KOVAB @1045
== BYOSHIM @1046
= @1047
== Z#KOVAB @1048
== BYOSHIM @1049
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("BKovaYoshi","GLOBAL",3) 
PartyHasItem("YoshKata")~ THEN YOSHJ Kova4
@1050 
= @1051
== Z#KOVAJ @1052
= @1053
== YOSHJ @1054
== Z#KOVAJ @1055
== YOSHJ @1056
== Z#KOVAJ @1057
== YOSHJ @1058
== Z#KOVAJ @1059
== YOSHJ @1060
DO ~EquipMostDamagingMelee()~
== Z#KOVAJ @1061
DO ~EquipMostDamagingMelee()~
== YOSHJ @1062
DO ~SetGlobal("BKovaYoshi","GLOBAL",4)
ClearAllActions()
StartCutSceneMode() StartCutScene("Z#yoshkv")~ EXIT


/* --------- *
 *  Keldorn  *
 * --------- */
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",0)~ THEN BKELDOR Kova1
@1063
== Z#KOVAB @1064
DO ~SetGlobal("BKovaKeld","GLOBAL",1)~
== BKELDOR @1065
== Z#KOVAB @1066
== BKELDOR @1067
== Z#KOVAB @1068
== BKELDOR @1069
== Z#KOVAB @1070
== BKELDOR @1071
== Z#KOVAB @1072
== BKELDOR @1073
== Z#KOVAB @1074
== BKELDOR @1075
= @1076
= @1077
EXIT

CHAIN
IF ~InParty("Keldorn") InMyArea("Keldorn") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",1)~ THEN Z#KOVAB Keldorn2
@1078
DO ~SetGlobal("BKovaKeld","GLOBAL",2)~
= @1079
== BKELDOR @1080
= @1081
== Z#KOVAB @1082
= @1083
== BKELDOR @1084 
= @1085
== Z#KOVAB @1086
== BKELDOR @1087
== Z#KOVAB @1088 
= @1089
= @1090
== BKELDOR @1091
== Z#KOVAB @1092
== BKELDOR @1093
== Z#KOVAB @1094
= @1095
== BKELDOR @1096
= @1097
EXIT

CHAIN
IF ~InParty("Keldorn") InMyArea("Keldorn") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",2)~ THEN Z#KOVAB Keldorn3
@1098
DO ~SetGlobal("BKovaKeld","GLOBAL",3)~
== BKELDOR @1099
== Z#KOVAB @1100
== BKELDOR @1101
== Z#KOVAB @1102
== BKELDOR @1103
= @1104
== Z#KOVAB @1105
EXIT

CHAIN
IF ~InParty("Keldorn") InMyArea("Keldorn") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",3)~ THEN Z#KOVAB Keldorn4
@1106
DO ~SetGlobal("BKovaKeld","GLOBAL",4)~
== BKELDOR @1107
== Z#KOVAB @1108
== BKELDOR @1109
== Z#KOVAB @1110
== BKELDOR @1111
== Z#KOVAB @1112
= @1113
== BKELDOR @1114
== Z#KOVAB @1115
== BKELDOR @1116
== Z#KOVAB @1117
== BKELDOR @1118
== Z#KOVAB @1119
== BKELDOR @1120
== Z#KOVAB @1121
== BKELDOR @1122
== Z#KOVAB @1123
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaKeld","GLOBAL",3)
GlobalLT("BKovaKeld","GLOBAL",5)
// Global("KKRomance","GLOBAL",0)
GlobalLT("KKRomance","GLOBAL",2)~ THEN BKELDOR Kova5
@1124
==Z#KOVAB @1125
DO ~SetGlobal("BKovaKeld","GLOBAL",5)~
= @1126
== BKELDOR @1127
== Z#KOVAB @1128 
= @1129
== BKELDOR @1130
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaKeld","GLOBAL",3)
GlobalLT("BKovaKeld","GLOBAL",6)
GlobalGT("KKRomance","GLOBAL",0)~ THEN BKELDOR Kova6
@1131
== Z#KOVAB @1132
DO ~SetGlobal("BKovaKeld","GLOBAL",6)~
== BKELDOR @1133
== Z#KOVAB @1134
== BKELDOR @1135
== Z#KOVAB @1136
== BKELDOR @1137
== Z#KOVAB @1138
== BKELDOR @1139
== Z#KOVAB @1140
== BKELDOR @1141
== Z#KOVAB @1142
== BKELDOR @1143
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaKeld","GLOBAL",3)
GlobalLT("BKovaKeld","GLOBAL",7)
Global("KKRomance","GLOBAL",2)~ THEN BKELDOR Kova7
@1144
== Z#KOVAB @1145 
DO ~SetGlobal("BKovaKeld","GLOBAL",7)~
== BKELDOR @1146
== Z#KOVAB @1147
== BKELDOR @1148
== Z#KOVAB @1149
== BKELDOR @1150
== Z#KOVAB @1151
== BKELDOR @1152 
= @1153
== Z#KOVAB @1154
== BKELDOR @1155
== Z#KOVAB @1156
== BKELDOR @1157
== Z#KOVAB @1158
EXIT


/* --------- *
 *  Valygar  *
 * --------- */
CHAIN
IF ~InParty("Valygar") InMyArea("Valygar")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaValy","GLOBAL",0)
!Dead("lavok01")
!Dead("lavok02")~ THEN Z#KOVAB Valy1
@1159
DO ~SetGlobal("BKovaValy","GLOBAL",1)~
== BVALYGA @1160
== Z#KOVAB @1161
== BVALYGA @1162
== Z#KOVAB @1163
== BVALYGA @1164
== Z#KOVAB @1165
== BVALYGA @1166
== Z#KOVAB @1167
== BVALYGA @1168
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalLT("BKovaValy","GLOBAL",2)
OR(2) Dead("lavok01") Dead("lavok02")~ THEN BVALYGA Kova2
@1169
== Z#KOVAB @1170
== BVALYGA @1171
== Z#KOVAB @1172
== BVALYGA @1173
== Z#KOVAB 
IF ~Global("BKovaValy","GLOBAL",1)~ THEN @1174
== Z#KOVAB 
IF ~Global("BKovaValy","GLOBAL",0)~ THEN @1175
== Z#KOVAB @1176
== BVALYGA @1177
== Z#KOVAB @1178
== BVALYGA @1179
== Z#KOVAB @1180
= @1181
== BVALYGA @1182
== Z#KOVAB @1183
= @1184
== BVALYGA @1185
== Z#KOVAB @1186
== BVALYGA @1187
DO ~SetGlobal("BKovaValy","GLOBAL",2)~ EXIT

CHAIN
IF ~InParty("Valygar") InMyArea("Valygar")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaValy","GLOBAL",2)~ THEN Z#KOVAB Valy3
@1188
== BVALYGA @1189
== Z#KOVAB @1190
== BVALYGA @1191
== Z#KOVAB @1192
== BVALYGA @1193
== Z#KOVAB @1194
= @1195
== BVALYGA @1196
= @1197
== Z#KOVAB @1198
= @1199
== BVALYGA @1200
= @1201
== Z#KOVAB @1202
DO ~SetGlobal("BKovaValy","GLOBAL",3)~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaValy","GLOBAL",2)
// Global("KKRomance","GLOBAL",0)
GlobalLT("KKRomance","GLOBAL",2)
GlobalLT("BKovaValy","GLOBAL",4)~ THEN BVALYGA Kova4
@1203
== Z#KOVAB @1204
== BVALYGA @1205
== Z#KOVAB @1206
== BVALYGA @1207
== Z#KOVAB @1208
= @1209
== BVALYGA @1210
== Z#KOVAB @1211
== BVALYGA @1212
== Z#KOVAB @1213
DO ~SetGlobal("BKovaValy","GLOBAL",4)~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaValy","GLOBAL",2)
GlobalLT("BKovaValy","GLOBAL",5)
Global("KKRomance","GLOBAL",1)~ THEN BVALYGA Kova5
@1214
== Z#KOVAB @1215
== BVALYGA @1216
== Z#KOVAB @1217
== BVALYGA @1218
== Z#KOVAB @1219
== BVALYGA @1220
= @1221
== Z#KOVAB @1222
== BVALYGA @1223
== Z#KOVAB @1224
== BVALYGA @1225
DO ~SetGlobal("BKovaValy","GLOBAL",5)~ EXIT

CHAIN
IF ~InParty("Valygar") InMyArea("Valygar") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaValy","GLOBAL",2)
GlobalLT("BKovaValy","GLOBAL",6)
Global("KKRomance","GLOBAL",2)~ THEN Z#KOVAB Valy6
@1226
== BVALYGA @1227
= @1228
== Z#KOVAB @1229
== BVALYGA @1230
== Z#KOVAB @1231
== BVALYGA @1232
== Z#KOVAB @1233
== BVALYGA @1234
== Z#KOVAB @1235 
= @1236
== BVALYGA @1237
== Z#KOVAB @1238
= @1239
== BVALYGA @1240
== Z#KOVAB @1241
== BVALYGA @1242
== Z#KOVAB @1243
== BVALYGA @1244
== Z#KOVAB @1245
== BVALYGA @1246
== Z#KOVAB @1247
= @1248
== BVALYGA @1249
== Z#KOVAB @1250
== BVALYGA @1251
DO ~SetGlobal("BKovaValy","GLOBAL",6)~ EXIT


/* -------- *
 *  Anomen  *
 * -------- */
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaAnom","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)~ THEN BANOMEN Kova1
@1252
== Z#KOVAB @1253
DO ~SetGlobal("BKovaAnom","GLOBAL",1)~
== BANOMEN @1254
== Z#KOVAB @1255 
= @1256
== BANOMEN @1257
== Z#KOVAB @1258
== BANOMEN @1259
== Z#KOVAB @1260
== BANOMEN @1261
== Z#KOVAB @1262
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaAnom","GLOBAL",1)
GlobalGT("JermClue","GLOBAL",0)
GlobalGT("LOAClue","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)~ THEN BANOMEN Kova2
@1263
== Z#KOVAB @1264
DO ~SetGlobal("BKovaAnom","GLOBAL",2)~
== BANOMEN @1265 
= @1266
== Z#KOVAB @1267
= @1268
== BANOMEN @1269
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN BANOMEN KKAnom1
@1270 
== Z#KIYOB @1271
== BANOMEN @1272
== Z#KIYOB @1273
== BANOMEN @1274 
= @1275
== Z#KIYOB @1276
== BANOMEN @1277 
= @1278
== Z#KIYOB @1279
== BANOMEN @1280
= @1281
= @1282
== Z#KIYOB @1283
= @1284
== BANOMEN @1285
DO ~SetGlobal("BKKAnom","GLOBAL",1)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",1)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN BANOMEN KKAnom2
@1286
= @1287
== Z#KIYOB @1288
== BANOMEN @1289
= @1290
== Z#KIYOB @1291
== BANOMEN @1292
= @1293
== Z#KIYOB @1294
== BANOMEN @1295
== Z#KIYOB @1296
= @1297
== BANOMEN @1298
== Z#KIYOB @1299
== BANOMEN @1300
= @1301
== Z#KIYOB @1302
== BANOMEN @1303 
DO ~SetGlobal("BKKAnom","GLOBAL",2)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",2)
GlobalGT("KKRomance","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN BANOMEN KKAnom3
@1304
== Z#KIYOB @1305
== BANOMEN @1306
= @1307
== Z#KIYOB @1308
== BANOMEN @1309
= @1310
== Z#KIYOB @1311
== BANOMEN @1312
= @1313
== Z#KIYOB @1314
= @1315
= @1316
== BANOMEN @1317
== Z#KIYOB @1318
DO ~SetGlobal("BKKAnom","GLOBAL",3)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kova") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",3)
GlobalGT("KKRomance","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN BANOMEN KKAnom4
@1319
= @1320
= @1321
== Z#KOVAB @1322
== BANOMEN @1323
== Z#KOVAB @1324
= @1325
== BANOMEN @1326
== Z#KOVAB @1327
== BANOMEN @1328
== Z#KOVAB @1329
== BANOMEN @1330
== Z#KOVAB @1331
= @1332
= @1333
DO ~SetGlobal("BKKAnom","GLOBAL",4)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",4)
GlobalGT("KKRomance","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",1)
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN BANOMEN KKAnom5
@1334
== Z#KIYOB @1335
== BANOMEN @1336
== Z#KIYOB @1337
== BANOMEN @1338
== Z#KIYOB @1339
== BANOMEN @1340
= @1341
== Z#KIYOB @1342
= @1343
== BANOMEN @1344
== Z#KIYOB @1345
== BANOMEN @1346
== Z#KIYOB @1347
== BANOMEN @1348
= @1349
== Z#KIYOB @1350
DO ~SetGlobal("BKKAnom","GLOBAL",5)~ EXIT

APPEND ~BANOMEN~

	IF ~InMyArea(Player1) InMyArea(Player1) 
	InParty("Kova") InMyArea("Kova") 
	InParty("Kiyone") InMyArea("Kiyone") 
	Global("BKKAnom","GLOBAL",5)
	GlobalGT("KKRomance","GLOBAL",0)
	!Global("AnomenIsKnight","GLOBAL",1)
	!Global("AnomenRomanceActive","GLOBAL",1)
	!Global("AnomenRomanceActive","GLOBAL",2)~ THEN BEGIN KKAnom6-0
	SAY @1351
	= @1352
	= @1353
	IF ~~ THEN REPLY @1354 DO ~SetGlobal("BKKAnom","GLOBAL",6)~ GOTO KKAnom6-2
	IF ~~ THEN REPLY @1355 DO ~SetGlobal("BKKAnom","GLOBAL",6)~ GOTO KKAnom6-1
	END 

	IF ~~ THEN BEGIN KKAnom6-1
	SAY @1356
	= @1357
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN KKAnom6-2 
	SAY @1358
	IF ~~ THEN REPLY @1359 GOTO KKAnom6-3
	IF ~~ THEN REPLY @1360 GOTO KKAnom6-3
	IF ~~ THEN REPLY @1361 GOTO KKAnom6-1
	END 

END

CHAIN
IF ~~ THEN BAnomen KKAnom6-3
@1362
DO ~SetCutSceneLite(TRUE)~
= @1363
== Z#KOVAB @1364
= @1365
== BANOMEN @1366
DO ~	ReallyForceSpell(Myself,CLERIC_HEAL) 
ReallyForceSpell(Myself,CLERIC_AID) 
ReallyForceSpell(Myself,CLERIC_DRAW_UPON_HOLY_MIGHT) 
ReallyForceSpell(Myself,CLERIC_ARMOR_OF_FAITH) 
ReallyForceSpell(Myself,CLERIC_CHAMPIONS_STRENGTH) 
	EquipMostDamagingMelee()
	Attack("Kova")
	SetCutSceneLite(TRUE)~
== Z#KOVAB @1367
DO ~	SetGlobal("KvAnomFight","GLOBAL",2)
	ReallyForceSpell(Myself,WIZARD_STONE_SKIN) 
	ReallyForceSpell(Myself,WIZARD_TENSERS_TRANSFORMATION) 
	ReallyForceSpell(Myself,WIZARD_IMPROVED_HASTE) 
	ReallyForceSpell(Myself,WIZARD_IMPROVED_INVISIBILITY) 
//	ReallyForceSpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) 
	EquipMostDamagingMelee()
	Attack("Anomen")
	SetCutSceneLite(TRUE)~ 
EXIT

CHAIN 
IF ~Global("KvAnomFight","GLOBAL",3)	
Dead("Anomen")~ THEN Z#KOVAJ ByeAnom
@1368
DO ~SetGlobal("KvAnomFight","GLOBAL",4)
ActionOverride("Anomen",LeaveParty())~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
@1369
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
@1370
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
@1371
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
@1372
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
@1373
EXIT

CHAIN 
IF ~Global("KvAnomFight","GLOBAL",3)
Global("FindingKova","GLOBAL",250)
Dead("Kova")~ THEN ANOMENJ ByeKova
@1374
DO ~SetGlobal("KvAnomFight","GLOBAL",4)~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
@1375
= @1376
= @1377 
= @1378
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin","GLOBAL",0)
ReputationInc(-2)
ActionOverride("Kova",DestroySelf())~ EXIT

EXTEND_BOTTOM ANOMENJ 95
IF ~Global("KvAnomFight","GLOBAL",3)~ THEN EXTERN HPRELATE KvDead
END 

CHAIN 
IF ~~ THEN HPRELATE KvDead
@1379
== ANOMENJ
@1380
== HPRELATE
@1381
EXTERN ANOMENJ 99


/* ------- *
 *  Aerie  *
 * ------- */
CHAIN
IF ~InParty("Aerie") InMyArea("Aerie") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoAerie","GLOBAL",0)~ THEN Z#KIYOB Aerie1
@1382	
DO ~SetGlobal("BKiyoAerie","GLOBAL",1)~
== BAERIE @1383
== Z#KIYOB @1384
== BAERIE @1385
== Z#KIYOB @1386
= @1387
== BAERIE @1388
== Z#KIYOB @1389
== BAERIE @1390
== Z#KIYOB @1391
== BAERIE @1392
== Z#KIYOB @804
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoAerie","GLOBAL",1)~ THEN BAERIE Kiyo2
@1393
== Z#KIYOB @1394
DO ~SetGlobal("BKiyoAerie","GLOBAL",2)~
== BAERIE @1395
== Z#KIYOB @1396
== BAERIE @1397
== Z#KIYOB @1398 
= @1399
== BAERIE @1400
== Z#KIYOB @1401 
= @1402
== BAERIE @1403
== Z#KIYOB @1404
== BAERIE @1405
== Z#KIYOB @1406
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie","GLOBAL",1)
Global("BKiyoAerie","GLOBAL",2)
Global("KKRomance","GLOBAL",0)~ THEN BAERIE Kiyo3
@1407
== Z#KIYOB @1408
DO ~SetGlobal("BKiyoAerie","GLOBAL",3)~
== BAERIE @1409
== Z#KIYOB @1410
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")  InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie","GLOBAL",1)
// Global("KKRomance","GLOBAL",0)
GlobalLT("KKRomance","GLOBAL",2)
Global("BKiyoAerie","GLOBAL",3)~ THEN BAERIE Kiyo4
@1411
== Z#KIYOB @1412
DO ~SetGlobal("BKiyoAerie","GLOBAL",4)~
== BAERIE @1413
== Z#KIYOB @1414 
= @1415 
= @1416
== BAERIE @1417
== Z#KIYOB @1418
== BAERIE @1419
== Z#KIYOB @1420
== BAERIE IF ~Global("AerieRomanceActive","GLOBAL",1) 
Global("AerieRomanceActive","GLOBAL",3)~ THEN
@1421
== BAERIE IF ~Global("AerieRomanceActive","GLOBAL",2)~ THEN 
@1422
== BAERIE IF ~Global("AerieMatch","GLOBAL",0)~ THEN 
@1423
== Z#KIYOB @1424
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie","GLOBAL",1)
GlobalLT("BKiyoAerie","GLOBAL",5)
GlobalGT("KKRomance","GLOBAL",0)~ THEN BAERIE Kiyo5
@1425
== Z#KIYOB @1426
DO ~SetGlobal("BKiyoAerie","GLOBAL",5)~
== BAERIE @1427
== Z#KIYOB @1428
== BAERIE @1429
== Z#KIYOB @1430
== BAERIE @1431
== Z#KIYOB @1432
== BAERIE @1433
== Z#KIYOB @1434
== BAERIE @1435
== Z#KIYOB @1436
== BAERIE @1437
== Z#KIYOB @1438
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie","GLOBAL",1)
Global("BKiyoAerie","GLOBAL",5)
GlobalGT("KKRomance","GLOBAL",0)~ THEN BAERIE Kiyo6
@1439
== Z#KIYOB @1440
DO ~SetGlobal("BKiyoAerie","GLOBAL",6)~
== BAERIE @1441
== Z#KIYOB @1442
== BAERIE @1443
== Z#KIYOB @1444
== BAERIE @1445
== Z#KIYOB @1446
= @1447
== BAERIE @1448
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie","GLOBAL",1)
GlobalLT("BKiyoAerie","GLOBAL",7)
Global("KKRomance","GLOBAL",2)~ THEN BAERIE Kiyo7
@1449
== Z#KIYOB @1450
DO ~SetGlobal("BKiyoAerie","GLOBAL",7)~
== BAERIE @1451
== Z#KIYOB @1452
== BAERIE @1453
== Z#KIYOB @1454
== BAERIE @1455
== Z#KIYOB @1456
= @1457
== BAERIE @1458
== Z#KIYOB @1459
== BAERIE @1460
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie","GLOBAL",1)
Global("BKiyoAerie","GLOBAL",7)
Global("KKRomance","GLOBAL",2)~ THEN BAERIE Kiyo8
@1461
DO ~SetGlobal("BKiyoAerie","GLOBAL",8)~
== Z#KIYOB @1462
== BAERIE @1463
== Z#KIYOB @1464
= @1465
== BAERIE @1466
== Z#KIYOB @1467
== BAERIE @1468
== Z#KIYOB @1469
== BAERIE @1470
== Z#KIYOB @1471 
= @1472
== BAERIE @1473
== Z#KIYOB @1474
EXIT


/* ------- *
 *  Mazzy  *
 * ------- */
CHAIN
IF ~InParty("Mazzy") InMyArea("Mazzy") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy","GLOBAL",0)~ THEN Z#KIYOB Mazzy1
@1475
== BMAZZY @1476
== Z#KIYOB @1477 
== BMAZZY @1478
== Z#KIYOB @1479
== BMAZZY @1480
== Z#KIYOB @1481
== BMAZZY @1482
== Z#KIYOB @1483
== BMAZZY @1484
== Z#KIYOB @1485
== BMAZZY @1486
= @1487
== Z#KIYOB @1488
== BMAZZY @1489
== Z#KIYOB @1490
== BMAZZY @1491
= @1492
== Z#KIYOB @1493
== BMAZZY @1494
== Z#KIYOB @1495
== BMAZZY @1496
== Z#KIYOB @1497
== BMAZZY @1498
DO ~SetGlobal("BKiyoMazzy","GLOBAL",1)~ EXIT

CHAIN
IF ~InParty("Mazzy") InMyArea("Mazzy") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy","GLOBAL",1)~ THEN Z#KIYOB Mazzy2
@1499
== BMAZZY @1500
== Z#KIYOB @1501
== BMAZZY @1502
= @1503
== Z#KIYOB @1504
== BMAZZY @1505 
= @1506
== Z#KIYOB @1507
== BMAZZY @1508
== Z#KIYOB @1509
= @1510
== BMAZZY @1511
== Z#KIYOB @1512
== BMAZZY @1513
DO ~SetGlobal("BKiyoMazzy","GLOBAL",2)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy","GLOBAL",2)~ THEN BMAZZY Kiyo3
@1514
== Z#KIYOB @1515
= @1516
== BMAZZY @1517 
= @1518 
== Z#KIYOB @1519
== BMAZZY @1520
== Z#KIYOB @1521
== BMAZZY @1522
== Z#KIYOB @1523
== BMAZZY @1524
== Z#KIYOB @1525 
= @1526
== BMAZZY @1527
== Z#KIYOB @1528
DO ~SetGlobal("BKiyoMazzy","GLOBAL",3)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy","GLOBAL",3)~ THEN BMAZZY Kiyo4
@1529
== Z#KIYOB @1530
== BMAZZY @1531
== Z#KIYOB @1532
== BMAZZY @1533
== Z#KIYOB @1534 
= @1535
== BMAZZY @1536
== Z#KIYOB @1537
== BMAZZY @1538
== Z#KIYOB @1539
= @1540
== BMAZZY @1541
== Z#KIYOB @1542
DO ~SetGlobal("BKiyoMazzy","GLOBAL",4)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoMazzy","GLOBAL",3)
GlobalLT("KKRomance","GLOBAL",2)~ THEN BMAZZY Kiyo5
@1543
== Z#KIYOB @1544
== BMAZZY @1545
== Z#KIYOB @1546
== BMAZZY @1547
== Z#KIYOB @1548
== BMAZZY @1549
== Z#KIYOB @1550
= @1551
== BMAZZY @1552
== Z#KIYOB @1553
== BMAZZY @1554
== Z#KIYOB @1555
== BMAZZY @1556
= @1557
== Z#KIYOB @1558
= @1559
== BMAZZY @1560
= @1561
== Z#KIYOB @1562
== BMAZZY @1563
== Z#KIYOB @1564
== BMAZZY @1565
DO ~SetGlobal("BKiyoMazzy","GLOBAL",5)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoMazzy","GLOBAL",3)
Global("KKRomance","GLOBAL",2)~ THEN BMAZZY Kiyo6
@1566
== Z#KIYOB @1567
== BMAZZY @1568
== Z#KIYOB @1569
== BMAZZY @1570
== Z#KIYOB @1571
== BMAZZY @1572
== Z#KIYOB @1573
= @1574
== BMAZZY @1575
== Z#KIYOB @1576
== BMAZZY @1577
== Z#KIYOB @1578
== BMAZZY @1579
== Z#KIYOB @1580
== BMAZZY @1581
== Z#KIYOB @1582
== BMAZZY @1583
== Z#KIYOB @1584
== BMAZZY @1585
= @1586
= @1587
= @1588
== Z#KIYOB @1589
== BMAZZY @1590
= @1591
== Z#KIYOB @1592
== BMAZZY @345
== Z#KIYOB @1593
DO ~SetGlobal("BKiyoMazzy","GLOBAL",6)~ EXIT


/* ------- *
 *  Minsc  *
 * ------- */

// ~Friend Kova,why such a dark expression? Boo wonders if Kova is thinking on his future.~ 
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",0)~ THEN BMINSC KvMinsc1
@1594 
DO ~SetGlobal("BKovaMinsc","GLOBAL",1)~
== Z#KOVAB @1595
== BMINSC @1596
= @1597
== Z#KOVAB @1598
= @1599
= @1600 
== BMINSC  @1601
== Z#KOVAB @1602
== BMINSC @1603
== Z#KOVAB @1604
== BMINSC @1605
== Z#KOVAB @1606
== BMINSC @1607
== Z#KOVAB @1608
== BMINSC @1609
== Z#KOVAB @1610
EXIT

CHAIN
IF ~InParty("Minsc") InMyArea("Minsc") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",1)~ THEN Z#KOVAB KvMinsc2
@1611
DO ~SetGlobal("BKovaMinsc","GLOBAL",2)~
= @1612
DO ~SetGlobal("BKovaMinsc","GLOBAL",2)~
== BMINSC @1613
== Z#KOVAB @1614
= @1615
== BMINSC @1616
== Z#KOVAB @1617
== BMINSC @1618
== Z#KOVAB @1619
== BMINSC @1620
= @1621
== Z#KOVAB @1622 
= @1623
== BMINSC @1624
== Z#KOVAB @1625
= @1626
== BMINSC @1627
== Z#KOVAB @1628
== BMINSC @1629
== Z#KOVAB @1630
== BMINSC @1631
== Z#KOVAB @1632
= @1633
== BMINSC @1634
== Z#KOVAB @1635
== BMINSC @1636
== Z#KOVAB @1637
== BMINSC @1638
== Z#KOVAB @1639
== BMINSC @1640
== Z#KOVAB @1641
== BMINSC @1642
EXIT

CHAIN
IF ~InParty("Minsc") InMyArea("Minsc") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",2)~ THEN Z#KOVAB KvMinsc3
@1643
DO ~SetGlobal("BKovaMinsc","GLOBAL",3)~
== BMINSC @1644
== Z#KOVAB @1645
== BMINSC @1646
= @1647
== Z#KOVAB @1648
== BMINSC @1649
== Z#KOVAB @1650
== BMINSC @1651
== Z#KOVAB @1652
== BMINSC @1653
== Z#KOVAB @868
== BMINSC @1654
= @1655
= @1656
== Z#KOVAB @1657 
== BMINSC @1658
== Z#KOVAB @1659
== BMINSC @1660
== Z#KOVAB @1661
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",3)~ THEN BMINSC KvMinsc4
@1662 
DO ~SetGlobal("BKovaMinsc","GLOBAL",4)~
= @1663
= @1664
== Z#KOVAB @1665
== BMINSC @1666
== Z#KOVAB @1667
== BMINSC @1668
== Z#KOVAB @1455
== BMINSC @1669
= @1670
== Z#KOVAB @1671
= @1672
== BMINSC @1673
== Z#KOVAB @1674
= @1675
== BMINSC @1676
= @1677
== Z#KOVAB @1678
= @1679
== BMINSC @1680
EXIT


/* ------- *
 *  Edwin  *
 * ------- */
CHAIN
IF ~InParty("Edwin") InMyArea("Edwin")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaEdwin","GLOBAL",0)~ THEN Z#KOVAB Edwin1
@1681
== BEDWIN @1682
DO ~SetGlobal("BKovaEdwin","GLOBAL",1)~
== Z#KOVAB @1683
== BEDWIN @1684
= @1685
== Z#KOVAB @1686
== BEDWIN @1687
= @1688
= @1689
== Z#KOVAB @1690
== BEDWIN @1691
EXIT

CHAIN
IF ~InMyArea("Edwin") InParty("Edwin")
LOS(Player1,30)
Global("BKovaEdwin","GLOBAL",1)
StateCheck(Myself,STATE_INVISIBLE)
LOS("Edwin",8)~ THEN Z#KOVAB Edwin2
@1692
DO ~SetGlobal("BKovaEdwin","GLOBAL",2)~ 
== BEDWIN @1693
== Z#KOVAB @1694
DO ~SetInterrupt(FALSE)
MoveToObject(Player1)~
== BEDWIN @1695
= @1696
EXIT

CHAIN
IF ~Global("BKovaEdwin","GLOBAL",3)
InParty("Edwin")
!LOS("Edwin",4)~ THEN Z#KOVAJ Edwin3
@1697
DO ~SetCutSceneLite(FALSE) SetInterrupt(TRUE)
NoAction() SetGlobal("BKovaEdwin","GLOBAL",4)~
= @1698
= @1699
END
IF ~~ THEN REPLY @1700 GOTO Edwin3-1
IF ~~ THEN REPLY @1701 GOTO Edwin3-2
IF ~~ THEN REPLY @1702 GOTO Edwin3-3
IF ~~ THEN REPLY @1703 GOTO Edwin3-4

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-4
@1704
END 
IF ~~ THEN REPLY @1705 GOTO Edwin3-4-1
IF ~~ THEN REPLY @1706 GOTO Edwin3-4-2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-4-1
@1707
DO ~DropInventory() LeaveParty()
SetGlobal("KovaJoined","LOCALS",0) EscapeArea() Wait(1) 
MoveGlobal("AR1200",Myself,[440.1680]) Face(6) 
SetGlobal("KKJoin","GLOBAL",2)~ EXIT

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-4-2
@1708
= @1709
END
IF ~~ THEN REPLY @1710 GOTO Edwin3-1-1
IF ~~ THEN REPLY @1711 GOTO Edwin3-3

CHAIN
IF ~~ THEN Z#KOVAJ Edwin3-1 
@1712
END
IF ~~ THEN REPLY @1713 GOTO Edwin3-1-1
IF ~~ THEN REPLY @1714 GOTO Edwin3p2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-1-1
@1715
= @1716
DO ~Hide()
MoveToObject("Edwin")~ EXIT

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-2
@1717
END
IF ~~ THEN REPLY @1710 GOTO Edwin3-1-1
IF ~~ THEN REPLY @1718 GOTO Edwin3p2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-3
@1719
END 
IF ~~ THEN GOTO Edwin3p2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3p2
@1720
= @1721
= @1722
= @1723
END 
IF ~~ THEN REPLY @1724 GOTO Edwin3p2-1
IF ~~ THEN REPLY @1725 GOTO Edwin3p2-2
IF ~~ THEN REPLY @1726 GOTO Edwin3-1-1

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3p2-2
@1727
= @1728
DO ~Hide()
MoveToObject("Edwin")
ActionOverride("Edwin",DropInventory()) 
ActionOverride("Edwin",LeaveParty())~ EXIT

CHAIN
IF ~~ THEN Z#KOVAJ Edwin3p2-1
@1729
DO ~ActionOverride("Edwin",Enemy())
StartCutSceneMode()
StartCutScene("Z#edwkv")~ EXIT

CHAIN
IF ~Dead("Edwin")
Global("KvEdwinKill","GLOBAL",1)~ THEN Z#KOVAJ EdwinDead
@1730
= @1731
DO ~SetGlobal("KvEdwinKill","GLOBAL",2)~ EXIT


/* ----------- *
 *  Haerdalis  *
 * ----------- */
CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoHaer","GLOBAL",0)~ THEN BHAERDA KyHaer1
@1732
DO ~SetGlobal("BKiyoHaer","GLOBAL",1)~
== Z#KIYOB @1733
== BHAERDA @1734
== Z#KIYOB @1735
== BHAERDA @1736
== Z#KIYOB @1737
= @1738
== BHAERDA @1739
== Z#KIYOB @1740
== BHAERDA @1741
== Z#KIYOB @1742
== BHAERDA @1743
= @1744
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance","GLOBAL",0)
Global("BKiyoHaer","GLOBAL",1)~ THEN BHAERDA KyHaer2
@1745
DO ~SetGlobal("BKiyoHaer","GLOBAL",2)~
== Z#KIYOB @1746
= @1747
== BHAERDA @1748
== Z#KIYOB @1749
== BHAERDA @1750
= @1751
== Z#KIYOB @1752
= @1753
== BHAERDA @1754
== Z#KIYOB @1755
== BHAERDA @1756
== Z#KIYOB @1757
== BHAERDA @1758
== Z#KIYOB @1759
== BHAERDA @1760
== Z#KIYOB @1761
= @1762
== BHAERDA @1763
== Z#KIYOB @1764
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaHaer","GLOBAL",0)~ THEN BHAERDA KvHaer1
@1765
DO ~SetGlobal("BKovaHaer","GLOBAL",1)~
== Z#KOVAB @1766
== BHAERDA @1767 
== Z#KOVAB @1768
= @1769
== BHAERDA @1770
== Z#KOVAB @1771
== BHAERDA @1772
== Z#KOVAB @1773
== BHAERDA @1774
== Z#KOVAB @1775
== BHAERDA @1776
== Z#KOVAB @1777
= @1778
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance","GLOBAL",0)
Global("BKovaHaer","GLOBAL",1)~ THEN BHAERDA KvHaer2
@1779
DO ~SetGlobal("BKovaHaer","GLOBAL",2)~
== Z#KOVAB @1780
== BHAERDA @1781
== Z#KOVAB @1782
== BHAERDA @1783
= @1784
== Z#KOVAB @1785
== BHAERDA @1786
== Z#KOVAB @1787
== BHAERDA @1788
== Z#KOVAB @1789
== BHAERDA @1790
== Z#KOVAB @1791
== BHAERDA @1792
= @1793
== Z#KOVAB @1794
== BHAERDA @1795
EXIT

/* --------- *
 *  Jaheira  *
 * --------- */
CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira","GLOBAL",0)~ THEN Z#KIYOB KyJah1
@1796
DO ~SetGlobal("BKiyoJaheira","GLOBAL",1)~
== BJAHEIR @1797
== Z#KIYOB @1798
= @1799
== BJAHEIR @1800
== Z#KIYOB @1801
= @1802
== BJAHEIR @1803
== Z#KIYOB @1804
== BJAHEIR @1805
== Z#KIYOB @1806
== BJAHEIR @1807
== Z#KIYOB @1808
== BJAHEIR @1809
== Z#KIYOB @1810
== BJAHEIR @1811
== Z#KIYOB @1812
== BJAHEIR @1813
EXIT

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira","GLOBAL",1)~ THEN Z#KIYOB KyJah2
@1814
DO ~SetGlobal("BKiyoJaheira","GLOBAL",2)~
== BJAHEIR @1815
== Z#KIYOB @1816
== BJAHEIR @1817
== Z#KIYOB @1818
== BJAHEIR @1819
== Z#KIYOB IF ~!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@1820
== Z#KIYOB IF ~Global("JaheiraRomanceActive","GLOBAL",2)~ THEN
@1821
== BJAHEIR @1822 
= @1823
== Z#KIYOB @1824
== BJAHEIR @1825
== Z#KIYOB @1826
== BJAHEIR @1827
= @1828
== Z#KIYOB @1829
= @1830
== BJAHEIR @1831
== Z#KIYOB @1832
EXIT 

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira","GLOBAL",2)~ THEN BJAHEIR KyJah3
@1833
DO ~SetGlobal("BKiyoJaheira","GLOBAL",3)~
== Z#KIYOB @1834
== BJAHEIR @1835
== Z#KIYOB @1836
== BJAHEIR @1837
= @1838
= @1839
== Z#KIYOB @1840
== BJAHEIR @1841 
= @1842
= @1843
== Z#KIYOB @1844
== BJAHEIR @1845
= @1846
== Z#KIYOB @1847
== BJAHEIR @1848
= @1849
== Z#KIYOB @1850
EXIT

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira","GLOBAL",3)~ THEN Z#KIYOB KyJah4
@1851
DO ~SetGlobal("BKiyoJaheira","GLOBAL",4)~
== BJAHEIR @1852
== Z#KIYOB @1853
== BJAHEIR @1854
== Z#KIYOB @1855
== BJAHEIR @1856
== Z#KIYOB @1857
== BJAHEIR @1858
== Z#KIYOB @386
== BJAHEIR @1859
== Z#KIYOB @1860
== BJAHEIR @1861
= @1862
== Z#KIYOB @1863
== BJAHEIR @1864
== Z#KIYOB @1865
== BJAHEIR @1866
== Z#KIYOB @1867
== BJAHEIR @1868
== Z#KIYOB @1869
== BJAHEIR @1870
== Z#KIYOB @1871 
EXIT

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance","GLOBAL",0)
Global("BKiyoJaheira","GLOBAL",4)~ THEN Z#KIYOB KyJah5
@1872
DO ~SetGlobal("BKiyoJaheira","GLOBAL",5)~
== BJAHEIR @1873
= @1874
== Z#KIYOB @1875
== BJAHEIR @1876
= @1877
== Z#KIYOB @1878
== BJAHEIR @1879
= @1880
== Z#KIYOB @1881
== BJAHEIR @1882 
= @1883
== Z#KIYOB @1884
== BJAHEIR @1885
== Z#KIYOB @1886
== BJAHEIR @1887
= @1888
== Z#KIYOB @1889
= @1890
== BJAHEIR @1891
= @1892
= @1893
== Z#KIYOB @1894
== BJAHEIR @1895
== Z#KIYOB @1896
== BJAHEIR @1897
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira","GLOBAL",5)
Global("KKRomance","GLOBAL",2)~ THEN BJAHEIR KyJah6
@1898
DO ~SetGlobal("BKiyoJaheira","GLOBAL",6)~
= @1899
== Z#KIYOB @1900
== BJAHEIR @1901
== Z#KIYOB @1902
== BJAHEIR @1903
== Z#KIYOB @1904
== BJAHEIR @1905
== Z#KIYOB @1906
== BJAHEIR @1907
== Z#KIYOB @1908
== BJAHEIR @1909
== Z#KIYOB @1910
== BJAHEIR @1911
== Z#KIYOB @1912
== BJAHEIR @1913
== Z#KIYOB @1914
== BJAHEIR @1915
== Z#KIYOB @1916
EXIT


/* ------------ *
 *  Jan Jansen  *
 * ------------ */
CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKvJan","GLOBAL",0)~ THEN BJAN JanKova1
@1917
DO ~SetGlobal("BKvJan","GLOBAL",1)~
== Z#KOVAB @1918
== BJAN @1919
== Z#KOVAB @1920
== BJAN @1921
== Z#KOVAB @1922
== BJAN @1923
== Z#KOVAB @1924
== BJAN @1925
== Z#KOVAB @1926
== BJAN @1927
== Z#KOVAB @1928
== BJAN @1929
== Z#KOVAB @1930
EXIT

CHAIN 
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKyJan","GLOBAL",0)~ THEN BJAN JanKiyo1
@1931
DO ~SetGlobal("BKyJan","GLOBAL",1)~
== Z#KIYOB @1932
== BJAN @1933
= @1934
== Z#KIYOB @1935
== BJAN @1936
= @1937
== Z#KIYOB @1938
== BJAN @1939
== Z#KIYOB @1940
== BJAN @1941
== Z#KIYOB @1942
== BJAN @1943
== Z#KIYOB @1944
== BJAN @1945
== Z#KIYOB @1946
== BJAN @1947
EXIT

CHAIN 
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance","GLOBAL",0)
Global("BKyJan","GLOBAL",1)~ THEN BJAN JanKiyo2
@1948
DO ~SetGlobal("BKyJan","GLOBAL",2)~
== Z#KIYOB @1949
== BJAN @1950
= @1951
== Z#KIYOB @1952
== BJAN @1953
== Z#KIYOB @1954
== BJAN @1955
== Z#KIYOB @1956
== BJAN @1957
= @1958
== Z#KIYOB @1959
== BJAN @1960
= @1961
== Z#KIYOB @1962
EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance","GLOBAL",0)
Global("BKyJan","GLOBAL",2)
Global("BKvJan","GLOBAL",1)~ THEN BJAN JanKova2
@1963
DO ~SetGlobal("BKvJan","GLOBAL",2)~
== Z#KOVAB @1964
== BJAN @1965
== Z#KOVAB @1966
== BJAN @1967
== Z#KOVAB @1968
== BJAN @1969
== Z#KOVAB @1970
== BJAN @1971
= @1972
== Z#KOVAB @1973
== BJAN @1974
== Z#KOVAB @1975
== BJAN @1976
== Z#KOVAB @1977
EXIT


/* ------- *
 *  Nalia  *
 * ------- */
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaNalia","GLOBAL",0)~ THEN BNALIA kova1
@1978
DO ~SetGlobal("BKovaNalia","GLOBAL",1)~
== Z#KOVAB @1979
== BNALIA @1980
== Z#KOVAB @1981
== BNALIA @1982
== Z#KOVAB @1983
== BNALIA @1984
== Z#KOVAB @1985
== BNALIA @1986
== Z#KOVAB @1987
== BNALIA @1988
== Z#KOVAB @1989
== BNALIA @1990
EXIT

CHAIN
IF ~InParty("Nalia") InMyArea("Nalia") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoNalia","GLOBAL",0)~ THEN Z#KIYOB KyNalia1
@1991
DO ~SetGlobal("BKiyoNalia","GLOBAL",1)~
== BNALIA @1992
== Z#KIYOB @1993
== BNALIA @1994
== Z#KIYOB @1995
== BNALIA @1996
== Z#KIYOB @1997
== BNALIA @1998
== Z#KIYOB @1999
== BNALIA @2000
== Z#KIYOB @2001
= @2002
== BNALIA @2003
== Z#KIYOB @2004
== BNALIA @2005
== Z#KIYOB @2006
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoNalia","GLOBAL",1)~ THEN BNALIA KyNalia2
@2007
DO ~SetGlobal("BKiyoNalia","GLOBAL",2)~
== Z#KIYOB @2008
== BNALIA @2009
== Z#KIYOB @2010
== BNALIA @2011
== Z#KIYOB @2012
= @2013
== BNALIA @2014
== Z#KIYOB @2015
= @2016
== BNALIA @2017
== Z#KIYOB @2018
== BNALIA @2019
== Z#KIYOB @2020
== BNALIA @2021
EXIT


/* ------- *
 *  Imoen  *
 * ------- */
CHAIN
IF ~InParty("Imoen2") InMyArea("Imoen2") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoImoen","GLOBAL",0)~ THEN Z#KIYOB KyImoen1
@2022
DO ~SetGlobal("BKiyoImoen","GLOBAL",1)~
== IMOEN2J @2023
== Z#KIYOB @2024
== IMOEN2J @2025
== Z#KIYOB @2026
== IMOEN2J @2027
== Z#KIYOB @2028
== IMOEN2J @2029
== Z#KIYOB @2030
= @2031
== IMOEN2J @2032
== Z#KIYOB @2033
= @2034
= @2035
== IMOEN2J @2036
== Z#KIYOB @2037
== IMOEN2J @2038
== Z#KIYOB @2039
== IMOEN2J @2040
== Z#KIYOB @2041
== IMOEN2J @2042
== Z#KIYOB @2043
EXIT

CHAIN
IF ~InParty("Imoen2") InMyArea("Imoen2") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaImoen","GLOBAL",0)~ THEN Z#KOVAB KvImoen1
@2044
DO ~SetGlobal("BKovaImoen","GLOBAL",1)~ 
== IMOEN2J IF ~GlobalGT("BKiyoImoen","GLOBAL",0)~ THEN
@2045
== IMOEN2J IF ~Global("BKiyoImoen","GLOBAL",0)~ THEN
@2046
== IMOEN2J @2047
== Z#KOVAB @2048
== IMOEN2J @2049
== Z#KOVAB @2050
== IMOEN2J @2051
== IMOEN2J IF ~!Dead("c6bodhi")~ THEN
@2052
== IMOEN2J IF ~Dead("c6bodhi")~ THEN 
@2053
== Z#KOVAB @2054
== IMOEN2J @2055
= @2056
== Z#KOVAB @2057
== IMOEN2J @2058
== Z#KOVAB @2059
== IMOEN2J @2060
== Z#KOVAB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@2061
== Z#KOVAB IF ~GlobalLT("KKRomance","GLOBAL",2)~ THEN
@2062
== IMOEN2J @2063
== Z#KOVAB @2064
== IMOEN2J @2065
= @2066
EXIT

CHAIN
IF ~InParty("Imoen2") InMyArea("Imoen2") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoImoen","GLOBAL",1)~ THEN Z#KIYOB KyImoen2
@2067
DO ~SetGlobal("BKiyoImoen","GLOBAL",2)~ 
== IMOEN2J @2068
== Z#KIYOB @2069
== IMOEN2J @2070
= @2071
== Z#KIYOB @2072
== IMOEN2J @2073
== Z#KIYOB @2074
== IMOEN2J @2075
== Z#KIYOB @2076
= @2077
== IMOEN2J @2078
== Z#KIYOB @2079
== IMOEN2J @2080
== Z#KIYOB @2081
== IMOEN2J @2082
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
@2083
== Z#KIYOB IF ~GlobalLT("KKRomance","GLOBAL",2)~ THEN
@2084
== IMOEN2J @2085
== Z#KIYOB @2086
== IMOEN2J @2087
EXIT


/* -------- *
 *  Korgan  *
 * -------- */
CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKorgan","GLOBAL",0)~ THEN BKORGAN KorganKova1
@2088
DO ~SetGlobal("BKovaKorgan","GLOBAL",1)~
== Z#KOVAB @2089
== BKORGAN @2090
== Z#KOVAB @2091
== BKORGAN @2092
= @2093
== Z#KOVAB @2094
== BKORGAN @2095
== Z#KOVAB @2096
== BKORGAN @2097
== Z#KOVAB @2098
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKorgan","GLOBAL",1)~ THEN BKORGAN KorganKova2
@2099
= @2100
DO ~SetGlobal("BKovaKorgan","GLOBAL",2)~
== Z#KOVAB @2101
== BKORGAN @2102
== Z#KOVAB @2103
== BKORGAN @2104
== Z#KOVAB @2105
== BKORGAN @2106
== Z#KOVAB @2107
== BKORGAN @2108
== Z#KOVAB @2109 
= @2110
== BKORGAN @2111
== Z#KOVAB @2112
= @2113
== BKORGAN @2114
== Z#KOVAB @2115
EXIT


/* ------- *
 *  Cernd  *
 * ------- */
CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoCernd","GLOBAL",0)~ THEN BCERND KyCernd1
@2116
DO ~SetGlobal("BKiyoCernd","GLOBAL",1)~
== Z#KIYOB @2117
== BCERND @2118
== Z#KIYOB @2119
== BCERND @2120
== Z#KIYOB @2121
== BCERND @2122
== Z#KIYOB @2123
== BCERND @2124
= @2125 
== Z#KIYOB @2126
== BCERND @2127
EXIT

CHAIN
IF ~InParty("Cernd") InMyArea("Cernd") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaCernd","GLOBAL",0)~ THEN Z#KOVAB KvCernd1
@2128
DO ~SetGlobal("BKovaCernd","GLOBAL",1)~
== BCERND @2129
== Z#KOVAB @2130
== BCERND @2131
= @2132
= @2133
== Z#KOVAB @2134
== BCERND @2135
== Z#KOVAB @2136
== BCERND @2137
== Z#KOVAB @2138
EXIT
