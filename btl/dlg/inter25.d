// Inter25


// SARVOLO

EXTEND_BOTTOM SARVOLO 9 
IF ~InParty("Kova")~ THEN ~Tell me about Kova Kashiro.~ EXTERN SARVOLO Z#aboutKova
IF ~InParty("Kiyone")~ THEN ~Tell me about Kiyone Makibi.~ EXTERN SARVOLO Z#aboutKiyone
END

CHAIN
IF ~~ THEN SARVOLO Z#aboutKova
~Once he was but an unknown urchin in the Athkatlan backalleys, but Kova has since defied the schemes of both the powerful Cowled Wizards and the nefarious Shadow Thieves, defeating many among their number with his cunning blade and his subtle spells. As elusive as he is powerful, there are few who can pit themselves against his devastating range of skills and still hope to prevail.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~What? I did what I had to simply to survive... you make it sound like I am some kind of criminal mastermind or something.~ 
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Oh but you are, Kova. It is altogether a most apt description. I must admit, sometimes I wonder if I did the right thing in settling your case. Oh, Kiyone, Kiyone, what have you done?~
== Z#KOVAJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Thanks a lot.~
END
IF ~Global("Z#sarobserve","GLOBAL",1)~ THEN EXTERN SARVOLO 9
IF ~!Global("Z#sarobserve","GLOBAL",1) InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN EXTERN SARVOLO Z#sarobserve

CHAIN
IF ~~ THEN SARVOLO Z#aboutKiyone
~First among the Sentinels of the North, the righteous Kiyone strikes fear into the hearts of those who would do evil. Her unmatched mastery of the bow and her keen intellect in ferreting out the best kept secrets, make her an opponent to be reckoned with by any force of evil in the Realms. Combining her subtle guile with her dead-eye accuracy, 
END
IF ~Global("Z#sarobserve","GLOBAL",1)~ THEN EXTERN SARVOLO 9
IF ~!Global("Z#sarobserve","GLOBAL",1) InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN EXTERN SARVOLO Z#sarobserve

CHAIN
IF ~~ THEN SARVOLO Z#sarobserve
~Do I observe a certain amount of chemistry here? Can it be that this lawful lady here would be this cunning man's...~
= ~Why yes certainly, it all fits! That would be a tale for the telling, a most delicious tale that will be remembered for all time! I simply must write it down now...~
DO ~SetGlobal("Z#sarobserve","GLOBAL",1)~
== SARVOLO IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Erm, Kiyone, could you please point your weapon away from me? Your eyes, they are frightening...~ 
== Z#KOVAJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~I think you should just drop the pen. Don't ever mess with her. Especially when she's got that look in her eyes.~
== SARVOLO IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Oh uh... Why am I holding this? What was I thinking of writing? It must have slipped my mind.~
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Really? Oh, what a great pity.~
== Z#KOVAJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Indeed, what a pity... pity me.~
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Very funny.~
EXTERN SARVOLO 9

// SARWAI01

INTERJECT_COPY_TRANS2 SARWAI01 1 z#sarwai01
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I'm starting to wonder if the army outside is the real cause of all this misery.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~If we have the time, <CHARNAME>, perhaps we can see how we may alleviate her distress.~
END

// SARMEL01

INTERJECT_COPY_TRANS2 gromg01 10 z#gromg01-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Do not trouble yourself over this, my lady. Such cretins deserved what they got.~
== SARMEL01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Still, it would have been better if violence could have been avoided, for everybody's sakes. Bloodshed is ever so disagreeable.~
END

// GROMG01 

INTERJECT_COPY_TRANS2 gromg01 10 z#gromg01-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I'd rather sort out you oppressive warmongers myself, though I doubt the Gods will have mercy on what remains of you!~
END

// Sarevok

INTERJECT_COPY_TRANS2 SAREV25A 10 z#sarev25a-10
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I do not think we should trust this being, <CHARNAME>. Let us think carefully before coming to any form of agreement.~
END

INTERJECT_COPY_TRANS2 SAREV25A 25 z#sarev25a-10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~There's nothing wrong in him desiring to live again. However, every life affects those around it, the question is whether the effects will be desirable or otherwise.~
END

INTERJECT_COPY_TRANS2 SAREV25A 38 z#sarev25a-38
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Though this development does not thrill me, I do admire his tenacity and spirit.~
END

INTERJECT_COPY_TRANS2 SAREV25A 55 z#sarev25a-55
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~We should be wary of trusting him. Even if he was as formidable as he was in hell, there is but only some room for consideration.~
END


// First Time Pocketplane

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
InParty("Kiyone") InMyArea("Kiyone")
Global("TalkedToSolar","GLOBAL",1)
Global("z#welcomepocketplane","GLOBAL",0)~ THEN Z#KOVAJ z#welcomepocketplane
~Typical. One of the few places you never want to be in again just happens to be the one you get back to.~
DO ~SetGlobal("z#welcomepocketplane","GLOBAL",1)~
== Z#KIYOJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
~Well, it may not be the most aesthetic looking of places, but I do recall this was where someone became honest for the first time.~
== Z#KOVAJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
~It's also interesting how someone else, despite being usually honest, became most difficult then.~
== Z#KIYOJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
~At least she agreed, so you should be grateful.~
== Z#KOVAJ IF ~GlobalGT("Z#Married","GLOBAL",0)~ THEN
~You know, sometimes I really don't know if I should be.~
EXIT

// Illasera

INTERJECT_COPY_TRANS2 ILLASERA 5 z#illasera5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I've found it never works to try and keep <CHARNAME> out of great things. But if someone has to die then I suspect a certain someone will be volunteering soon enough.~
END
