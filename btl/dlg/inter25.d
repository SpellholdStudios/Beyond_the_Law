// Inter25

/* --------- *
 *  SARVOLO  *
 * --------- */
EXTEND_BOTTOM SARVOLO 9 
IF ~InParty("Kova")~ THEN REPLY @0 EXTERN SARVOLO Z#aboutKova
IF ~InParty("Kiyone")~ THEN REPLY @1 EXTERN SARVOLO Z#aboutKiyone
END

CHAIN
IF ~~ THEN SARVOLO Z#aboutKova
@2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
@3 
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@4
== Z#KOVAJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@5
END
IF ~Global("Z#sarobserve","GLOBAL",1)~ THEN EXTERN SARVOLO 9
IF ~!Global("Z#sarobserve","GLOBAL",1) InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN EXTERN SARVOLO Z#sarobserve

CHAIN
IF ~~ THEN SARVOLO Z#aboutKiyone
@6
END
IF ~Global("Z#sarobserve","GLOBAL",1)~ THEN EXTERN SARVOLO 9
IF ~!Global("Z#sarobserve","GLOBAL",1) InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN EXTERN SARVOLO Z#sarobserve

CHAIN
IF ~~ THEN SARVOLO Z#sarobserve
@7
= @8
DO ~SetGlobal("Z#sarobserve","GLOBAL",1)~
== SARVOLO IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@9 
== Z#KOVAJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@10
== SARVOLO IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@11
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@12
== Z#KOVAJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@13
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
@14
EXTERN SARVOLO 9


/* --------------------- *
 *  Waitress (SARWAI01)  *
 * --------------------- */
INTERJECT_COPY_TRANS2 SARWAI01 1 z#sarwai01
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
@15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@16
END


/* --------------------- *
 *  Melissan (SARMEL01)  *
 * --------------------- */
INTERJECT_COPY_TRANS2 SARMEL01 10 z#sarmel01
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@17
== SARMEL01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@18
END


/* --------------------------- *
 *  Il-Khan Soldier (GROMG01)  *
 * --------------------------- */
INTERJECT_COPY_TRANS2 gromg01 10 z#gromg01-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@19
END


/* --------- *
 *  Sarevok  *
 * --------- */
INTERJECT_COPY_TRANS2 SAREV25A 10 z#sarev25a-10
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@20
END

INTERJECT_COPY_TRANS2 SAREV25A 25 z#sarev25a-10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
@21
END

INTERJECT_COPY_TRANS2 SAREV25A 38 z#sarev25a-38
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
@22
END

INTERJECT_COPY_TRANS2 SAREV25A 55 z#sarev25a-55
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@23
END


/* --------------------------- *
 *  First Time in Pocketplane  *
 * --------------------------- */
CHAIN
IF ~InParty("Kova") InMyArea("Kova")
InParty("Kiyone") InMyArea("Kiyone")
Global("TalkedToSolar","GLOBAL",1)
Global("z#welcomepocketplane","GLOBAL",0)~ THEN Z#KOVAJ z#welcomepocketplane
@24
DO ~SetGlobal("z#welcomepocketplane","GLOBAL",1)~
== Z#KIYOJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
@25
== Z#KOVAJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
@26
== Z#KIYOJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
@27
== Z#KOVAJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
@28
EXIT


/* ---------- *
 *  Illasera  *
 * ---------- */
INTERJECT_COPY_TRANS2 ILLASERA 5 z#illasera5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
@29
END
