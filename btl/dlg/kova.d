BEGIN ~Z#KOVAJ~

IF ~!StateCheck(Player1,STATE_SLEEPING) 
ReputationLT(Player1,9)
Global("Bad9","LOCALS",0)~ THEN BEGIN Bad9
SAY ~You know, much as I didn't expect you to be a pushover, I was rather looking forward to be found guiltless of my accused crimes, rather than have new crimes added to the list, especially those which I am truly guilty of.~
= ~I can only hope this is a temporary state of affairs that will not persist for long.~
IF ~~ THEN DO ~SetGlobal("Bad9", "LOCALS", 1)~EXIT
END

IF ~~ THEN BEGIN Bad7
SAY ~Like Kiyone, I hope you will return to being the good person we both thought you to be. Though I may not see you again, nor even be alive when that happens, it would be a fair thing indeed.~ 
= ~Do not foolishly walk down the road I am struggling to depart from.~
IF ~~ THEN DO ~DropInventory() LeaveParty() EscapeArea()~ EXIT
END

IF ~Global("BregaTalk", "GLOBAL", 250)~ THEN BEGIN TIGovt2
SAY ~What the hell!?~
IF ~~ THEN DO ~SetGlobal("BregaTalk", "GLOBAL", 251) LeaveParty() Kill(Myself)~ EXIT
END

IF ~Global("CornTalk", "GLOBAL", 250)~ THEN BEGIN TICowl2
SAY ~<CHARNAME>, what is the meaning of this?!~
IF ~~ THEN DO ~SetGlobal("CornTalk", "GLOBAL", 251) Wait(2) 
LeaveParty() Kill(Myself)~ EXIT
END

IF ~Global("TIGael", "GLOBAL", 1)~ THEN BEGIN TISh2
SAY ~<CHARNAME>, you can't be serious?!~
IF ~~ THEN DO ~SetGlobal("FindingKova", "GLOBAL", 250)~ EXIT
END

IF ~Global("FindingKova", "GLOBAL", 9)
Global("Chapter", "GLOBAL", 3)
AreaCheck("AR0307")~ THEN BEGIN Aran2
SAY ~Yes, indeed.~
IF ~~ THEN EXTERN Aran Aran3
END

IF ~	AreaCheck("AR0400")
	InParty("Kova")
	Global("NoGaelan", "Locals", 1)
	!Global("BodhiAppear", "Global",3)
	PartyGoldLT(20000)~ THEN BEGIN NoGaelan1
SAY ~<CHARNAME>, I understand Gaelan is one of your contacts hereabouts to achieve your ends. He is also one through whom considerable information goes to the Shadow Thieves, so I am sure they are aware that you are travelling with me, and you will surely need to go to him.~
= ~There will be snares in place for me, and I think it would be most unwise to venture into his home, especially without the amount of money he has asked for. At least not until we have considered the alternatives. But if there is no other way, I will not shirk the risk.~
IF ~~ THEN DO ~SetGlobal("NoGaelan", "Locals", 2)~ EXIT
END


IF ~	!AreaCheck("AR1002")
	InParty("Kova")
	Global("BylTalk", "GLOBAL", 3)
	Global("CornTalk", "GLOBAL", 1)~ THEN BEGIN PostCorn
SAY ~Corneil may not have meant to be helpful back there, but I think he let something slip. If we could lift those reports off him, they might glean us some helpful clues.~
IF ~~ THEN DO ~SetGlobal("CornTalk", "GLOBAL", 2)~ EXIT
END

IF	~PartyHasItem("MISC4V")
	Global("LOAClue", "GLOBAL", 0)
	!Global("RenalJob", "GLOBAL", 4)
	InParty("Kova")~ THEN BEGIN FindMaeLOA
SAY ~Looks like Mae'Var may have tried to force Seida's hand, an arrangement which he probably wasn't too happy about, and in turn probably explains our presence here. It should come in useful as evidence in my case.~
IF ~~ THEN DO ~SetGlobal("LOAClue", "GLOBAL", 1)
GiveItemCreate("MaeLOA",Myself,0,0,0)
AddexperienceParty(12000)~ EXIT
END 

IF	~PartyHasItem("MISC4V")
	Global("LOAClue", "GLOBAL", 0)
	AreaCheck("AR0300")
	Global("RenalJob", "GLOBAL", 4)
	InParty("Kova")~ THEN BEGIN FindMaeLOA2
SAY ~Turns out the effort wasn't wasted. Looks like Mae'Var may have tried to force Seida's hand, an arrangement which he probably wasn't too happy about. It should come in useful as evidence in my case.~
IF ~~ THEN DO ~SetGlobal("LOAClue", "GLOBAL", 1)
GiveItemCreate("MaeLOA",Myself,0,0,0)
AddexperienceParty(12000)~ EXIT
END 

CHAIN
IF ~	!AreaCheck("AR1002")
	InParty("Kova") 
	InParty("Kiyone") InMyArea("Kiyone")
	Global("BylTalk", "GLOBAL", 2)~ THEN Z#KOVAJ PostByl
~Damn, we've only a week's grace for the evidence!~
== Z#KIYOJ ~A week is more than reasonable, given the case against you.~
== Z#KOVAJ ~If we don't get new evidence within a week I'll be taking my leave of you. I have no wish to put any of you in danger.~
== Z#KIYOJ ~You'll do nothing of the sort, Kova. I'll put an arrow through you before I allow that.~
== Z#KOVAJ ~You drive a hard bargain, Kiyone.~ 
== Z#KIYOJ ~I make no bargains, I only do what is right.~
== Z#KOVAJ ~And I only serve my own interests.~ 
== Z#KIYOJ ~It is good that we understand each other.~ 
DO ~SetGlobal("BylTalk", "GLOBAL", 3)~ EXIT

CHAIN
IF ~	!AreaCheck("AR1002")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")
	Global("BregaTalk", "GLOBAL", 1)~ THEN Z#KOVAJ PostBrega
~That Chief Inspector got a little trying on my nerves back there.~
== Z#KIYOJ ~He was just giving the facts as he saw it.~
== Z#KOVAJ ~Right, I suppose so. Well, at least now I know how he matched me up to the murder of the nobles.~
== Z#KIYOJ ~There's only one blade like yours, right?~
== Z#KOVAJ ~Yes... it is unique in all the world, I believe.~
== Z#KIYOJ ~You didn't lie to me, did you?~
== Z#KOVAJ ~No I didn't. Anyway, you've trusted me so far, so...~
== Z#KIYOJ ~Just thought to remind you, Kova, that if I find you guilty I will kill you myself.~
== Z#KOVAJ ~You're too kind.~
DO ~SetGlobal("BregaTalk", "GLOBAL", 2)~ EXIT


CHAIN
IF ~	!AreaCheck("AR1002")
	InParty("Kova") 
	InParty("Kiyone") InMyArea("Kiyone")
	PartyHasItem("CornRep")
	Global("EnforcerRep", "LOCALS", 0)
	!Global("CornTalk", "GLOBAL", 3)~ THEN Z#KOVAJ GetCornRep
~Kharen... that name on the reports sounds familiar.~
DO ~SetGlobal("EnforcerRep", "LOCALS", 1)~
= ~I remember now, she was a Shadow Thief, but that was a long time ago, before she vanished without a trace.~
= ~I've never heard of anyone called Kharen among the Cowled Wizards, but most of us don't know one another anyway, so it would be no surprise.~
== Z#KIYOJ
~So she could be a Shadow Thief operative within the Cowled Wizards...~
== Z#KOVAJ
~She might. I doubt the same name is a coincidence, and she could be the one who set me up after some murders.~
== Z#KIYOJ
~Helpful information, but not enough evidence to bring before Bylanna. We need a witness or a statement from a witness.~
== Z#KOVAJ 
~Still, if the guards come running to us, it might yet buy us some time.~
== Z#KIYOJ
~And it might not.~
== Z#KOVAJ
~Doesn't matter. We'll still be looking for more.~
DO ~AddexperienceParty(12000) 
SetGlobal("EnforcerRep", "LOCALS", 1)
SetGlobal("CornTalk", "GLOBAL", 3)~ EXIT

CHAIN
IF ~AreaCheck("AR1000") 
InParty("Kiyone") 
InMyArea("Kiyone")
Global("DayvClue", "GLOBAL", 1)
Global("KKFindCrom", "GLOBAL", 0)~ THEN Z#KOVAJ FindCrom
~My blade... it seems to revolve around my blade.~
DO ~SetGlobal("KKFindCrom", "GLOBAL", 1)~
== Z#KIYOJ 
~You didn't do it, and your blade is unique. Which of these two facts would be more suspect?~
== Z#KOVAJ
~Only the one who made my weapon would know. I think it would be best if we headed to the Docks, to visit Cromwell, the dwarven smith who helped me create what I had in mind.~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~ THEN 
~When you're done with asking him about the case, perhaps I can also ask him if he will help me create a blade like yours.~
== Z#KOVAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~ THEN 
~Heh, now that was unexpected. Yes, I suppose we could. My thanks for cheering me up a little.~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~ THEN 
~It's the least a friend can do for another.~
EXIT

CHAIN
IF 	~Global("BodhiAppear", "GLOBAL", 3)
	!Global("NoGaelan", "Locals", 3)
	InParty("Kova")~ THEN Z#KOVAJ ByeBodhi
~Words to remember, no doubt. I suppose we'll have to face her eventually, so let us be ready.~
= ~Still, that was not easy for me. To say what I did, when there was a chance to obtain allies to destroy those who wish to kill me. A chance I turned away, just like that.~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~You spoke this way because inside of you, you know what is good and what is evil.~
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
~Unhappy discernment that it is. Would that I knew less and was hunted not.~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~It is a privilege to be able to choose rightly between what is good and what is evil, especially when it is against one's own interest.~
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
~Easy for you to say.~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~Perhaps. It makes me glad, to know I did not misjudge you.~
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
~And I suppose you expect me to be glad, because you are?~
== Z#KOVAJ 
~For now, there is a truth I must face. We must meet Gaelan, and parley with those who would kill me. If I am to outlive the meeting, I suspect it will only be because of you, <CHARNAME>.~
= ~Nonetheless, I stand ready - come, let us go and be done with the matter.~
DO ~SetGlobal("NoGaelan", "Locals", 3)~ EXIT

CHAIN
IF ~	!AreaCheck("AR1103")
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")
	Global("JermClue", "GLOBAL", 1)~ THEN Z#KOVAJ PostJermClue
~Well, now that was a surprise.~
== Z#KIYOJ
~A cooperative Cowled Wizard? Or one capable of showing gratitude?~
== Z#KOVAJ
~Neither, actually. Just hearing Kiyone lie for the first time.~
== Z#KIYOJ
~Look, I did not lie. I gave the truth in a fashion so as to reveal more truth. For I serve justice and truth.~
== Z#KOVAJ
~Right. I'm very grateful, Kiyone.~
DO ~SetGlobal("JermClue", "GLOBAL", 2)~ EXIT

CHAIN
IF	~Global("Dayven", "GLOBAL", 4)
	!AreaCheckObject("AR1005", "Kova")
	!AreaCheckObject("AR1005", "Kiyone")
	InParty("Kova") 
	InParty("Kiyone") InMyArea("Kiyone")~ THEN Z#KOVAJ PostDayven1
~Dayven seemed to be hiding something back there.~
== Z#KIYOJ
~Is that what you feel?~
== Z#KOVAJ
~Yes, his reply to your question on his knowing Brega's suspect held the weapons was rather pointed, and he met it with a rather pointed reply that didn't say exactly what happened.~
== Z#KIYOJ
~Perhaps there is someone we can go to in order to clarify his meaning.~
== Z#KOVAJ
~Perhaps.~
DO ~AddexperienceParty(9000)
AddJournalEntry(@1013, QUEST)
SetGlobal("Dayven", "GLOBAL", 5)~ EXIT

CHAIN
IF	~!AreaCheck("AR1002")
	Global("Dayven", "GLOBAL", 6)
	InParty("Kova")
	InParty("Kiyone") InMyArea("Kiyone")~ THEN Z#KOVAJ PostDayven1
~There appears to be some discrepancies between the notes that Inspectors Brega and Dayven have given us.~
== Z#KIYOJ
~Rest assured, I will get to the bottom of this matter.~
== Z#KOVAJ
~How rather disappointing, don't you think? Your peers can't even get their accounts in accord with each other. One would think Inspectors have better things to do other than to frame innocent people.~
== Z#KIYOJ
~And you sound surprised by it, an odd state for one supposedly convinced that they're all out to set you up. So much for you being cynical of the law and its enforcers.~
== Z#KOVAJ
~I was just re-emphasising the truth of my points. In any case, should we have a contact among the Shadow Thieves, we might yet find something.~
DO ~AddJournalEntry(@1006, QUEST)
AddexperienceParty(9000)
SetGlobal("Dayven", "GLOBAL", 7)~ EXIT

//
//
//

BEGIN Z#KOVA

IF ~~ THEN BEGIN Attack1
SAY ~Oh well, things could be worse. Such as I not having expected this.~
IF ~~ THEN DO ~Enemy() SetGlobal("FindingKova", "GLOBAL", 111)~ EXTERN Z#KIYOJ Attack2
END

IF ~InParty("Kiyone")
Global("FindingKova", "GLOBAL", 5)~ THEN BEGIN 1
SAY ~Ah, I see you've finally found me, Kiyone. You've always had a knack for finding things.~
IF ~~ THEN DO ~SetGlobal("FindingKova", "GLOBAL", 6) 
AddexperienceParty(12000)~ EXTERN Z#KIYOJ 2
END

IF ~~ THEN BEGIN 3
SAY ~Absolutely charmed, I'm sure. And this companion of yours must be <CHARNAME>, yes?~
IF ~~ THEN REPLY ~You know this ranger?~ GOTO 4
IF ~~ THEN REPLY ~How did you come by my name?~ GOTO 4
IF ~~ THEN REPLY ~Actually, I just see a fortune waiting to be made from you. Prepare to die! (attack Kova)~ GOTO Attack1
END

IF ~~ THEN BEGIN 5-3
SAY ~I thank you for your kind words, lady Kiyone. I must admit, it has been a little trying to pretend that I did not know you, but I did not wish to say that which you might not wish others to know, even if it meant I had to take that knowledge with me to the grave.~ 
= 
~Though, I'd like to add I still stand by my words from earlier.~
IF ~~ THEN REPLY ~It is good to know you are a gentleman who knows not to betray another's trust. Speak then, of how it has been with you, and I will listen.~ GOTO 6
IF ~~ THEN REPLY ~It is now plain where both of you stand. Relate the matter, and I will listen and judge fairly.~ GOTO 6
IF ~~ THEN REPLY ~Well that shows her opinion of you is obviously skewed, and you are as guilty as they make you out to be. Now I shall make you pay for your crimes. (attack Kova)~ GOTO Attack1
IF ~~ THEN REPLY ~How sweet, a pair of lovebirds. Still, I have found my fortune and no one shall stop me from making it. (attack Kova)~ GOTO Attack1
END

IF ~~ THEN BEGIN 6
SAY ~Very well, if you would hear it, I would speak it.~
= ~To say I am without misdeeds would be an outright lie, something I would not have anyone believe. Indeed, I served among the Shadow Thieves for most of my life, out of necessity, for I was orphan who got by through thieving.~
= ~Still, I never really had a fondness for thievery, and when the chance came to learn something new that might offer a way out, I was sent, among some other promising thieves, to the Cowled Wizards to be trained in the ways of magic, and more importantly, to hopefully infiltrate them.~
= ~The rare few of us got through the requisite screening, and our training began in earnest. I occasionally got back to accompany the Shadow Thieves on some missions, but generally speaking I kept my contact with them limited lest I got my cover blown.~
= ~A few months ago I was sent on a mission with some others. My place was to protect them if we met with Cowled Enforcers, for our deeds were supposed to be as a warning to the Cowled Wizards whose protection that village was under, so we could remind them not to interfere with our influence in this particular area.~
= ~It was with some horror that I found out they were about to poison the entire village, and though I tried to stop them I failed. However, I managed to kill, among others, one Jharen, who just happened to be my guildmaster Seida's son. Oh, and need I mention who was considered responsible for poisoning the village? Heh, thought not...~
= ~Anyway, I've since been in hiding from the Shadow Thieves, seeking refuge among the Cowled Wizards. I believe that when their attempts to locate me and do me in failed, they turned to their moles among  the Cowled Wizards, who framed me for the murder of some of Cowled Enforcers.~ 
= ~It would seem that since my hasty departure a few months ago from the Cowled Wizards I'm now very much a wanted man.~
= ~I've had a few attempts on my life so far, and I suppose I have some satisfaction of knowing that Seida's lackeys haven't yet caught up with me, or at least those few who have haven't managed to tell anyone else yet. Keeping myself on the move also helps.~
= ~What does stir my ire though, is to be vaguely aware that the list of my crimes have kept on growing. The only place where that would be true, would be among the fishes over here in these hills.~ 
= ~I must admit, I've found many more good spots than I've ever known before. An acquired hobby, one can consider, although after these few months, I've just about run out of ideas on how to cook them.~
IF ~~ THEN REPLY ~My friend and a powerful mage have been spirited away by the Cowled Wizards, and the Shadow Thieves offer me assistance for a large fee. What do you think of that?~ GOTO 6-1
IF ~~ THEN REPLY ~I'm sorry to hear all that, and I will do what I can to set things right. What would you have us do?~ EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY ~You must have considerable talent to have survived so long. What would you have us do?~ EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY ~I'll give your account the benefit of doubt. What should we do about the matter, then?~ EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY ~Your far fetched tale rings false, and I'm taking you in, whether you like it or not. (attack Kova)~ GOTO Attack1
IF ~~ THEN REPLY ~Since you obviously have no idea how to help yourself, I'll take you in and help myself. (attack Kova)~ GOTO Attack1
END

IF ~~ THEN BEGIN 6-2
SAY ~Well that's about all I can say on the matter, I believe.~
IF ~~ THEN REPLY ~I shall think over the information you have given me. Meantime, tell me what you intend to do and how I may help.~ EXTERN Z#KIYOJ 7
IF ~~ THEN REPLY ~So they probably can help me after all, and I can help speed up the process by taking you down. No hard feelings, Kova, this is just good business sense. (attack Kova)~ GOTO Attack1
END

IF ~~ THEN BEGIN 9
SAY ~Well, this is quite a surprise. I... cannot thank you enough, <CHARNAME>, and I will do my best to see that none of us will come to grief.~
=
~As Kiyone said, we may wish to go straight to Magistrate Bylanna, and though I have doubts and fears about coming before her, it would be the best for all of us if we could go there first and ask for time to conduct our investigation, rather than be set upon by Guardsmen and Knights. ~
=
~I will take necessary precautions, especially when we draw near the Government areas or the Shadow Thief strongholds, that I may hopefully go largely undetected.~
=
~Regarding the evidence, we might start seeking clues about the main base of the Thieves operation, in the Docks, though it will probably be more dangerous there. There may be clues there pointing to Seida's own base of operations as well.~
=
~As for the Cowled Wizards, we probably can just look into the matters as we come into contact with some of them, for hopefully relevant evidence. If we can locate some of my previous associates from among them, they might know quite a bit, though I do not think they'd be willing to speak.~ 
=
~I would wish for all our sakes there was more to go on with, but that makes me all the more grateful for your help with this, <CHARNAME>, regardless of whether my personal matter turns out well.~
IF ~~ THEN 
UNSOLVED_JOURNAL @1003
DO ~EraseJournalEntry(@1002)
EraseJournalEntry(@1001)
RealSetGlobalTimer("askabtfirk","GLOBAL",35)
SetGlobal("KovaJoined","LOCALS",1) 
SetGlobal("FindingKova", "GLOBAL", 9) 
SetGlobal("KKJoin", "GLOBAL", 1) 
SetGlobal("GovtGuards", "GLOBAL", 1)
SetGlobal("ShadowHunt", "GLOBAL", 1)
RealSetGlobalTimer("KKBanterT","GLOBAL",4600)
RealSetGlobalTimer("Pursuit","GLOBAL",600)
SetGlobalTimer("KKGovtT","GLOBAL",24480)
SetGlobalTimer("KKHuntT","GLOBAL",9600)
RealSetGlobalTimer("KKThiefT","GLOBAL",5000)
SetGlobalTimer("KKCowlT","GLOBAL",36000)
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN 10Ext
SAY ~I take my leave as well, <CHARNAME>. This place is no longer safe for the likes of me. I thank you for your kindness, and if we should meet again, I would that it be in a happier time and place.~
IF ~~ THEN DO ~EscapeArea()
EraseJournalEntry(@1002)
EraseJournalEntry(@1001)
AddJournalEntry(@1053, QUEST_DONE)
AddexperienceParty(9000)~ EXIT
END

CHAIN
IF ~~ THEN Z#KOVA 6-1
~I'm afraid my information might not be the most current, given my recent retirement from life in the city, but I will tell you what I know and gather.~
= ~The Cowled Wizards are not to be trifled with, and their bases are generally known and accessible solely to them. To attempt to infiltrate them as an outsider is nigh impossible, especially given your rather noticeable background.~
= ~They have probably taken your friend and your foe to Spellhold, the asylum for the magically deviant, or so I was told, but I have no idea where that place would be. I only know its not on the mainland, and that it is, to my knowledge, totally impossible to escape from.~
= ~However, despite being a Shadow Thief, I do not know the extent of the reach of the Guildmasters, or the far longer arm of the Shadowmaster. What is for sure, though, is that they probably need your gold for some reason or another.~
== Z#KIYOJ
~There has been word of a guild war, of the Shadow Thieves against another unknown faction, Kova. That should probably be the reason. And as I believe, <CHARNAME> has seen quite a few sides to it.~
== Z#KOVA
~Ah, I see. That is news, both startling and disturbing, indeed. While it does not exactly bode ill for me, such makes me wonder. They probably are seeking the use of your services against the other guild as well then, <CHARNAME>, and possibly more.~
= ~Still, if they are willing to make such a pact with one as yourself, whom they need, they are likely to keep their end of the bargain. The Shadow Thieves generally always do what they say they will do... be it for good or for ill.~
EXTERN Z#KOVA 6-2

CHAIN
IF ~Global("FindingKova","GLOBAL",6)~ THEN Z#KOVA 4
~It's always good sense to know who is looking for you, I believe. I've also heard a thing or two about you, <CHARNAME>. Those were some mighty fine exploits off the Sword Coast. If you intend to take me, I'm sure it'd be a piece of cake for you, so be my guest.~
DO ~SetGlobal("FindingKova","GLOBAL",7)~
== Z#KIYOJ
~What are you trying to do, Kova? Please, there is no need for hostilities.~
== Z#KOVA
~Right, there never is, is there? Just capturing, killing and execution. The justice of the law, ever so final and non-hostile.~
== Z#KIYOJ
~Don't judge what you haven't yet known.~
== Z#KOVA
~On the contrary, I know everything about your law and your justice. Money condemns the innocent and frees the guilty, and truth is whatever those in power make it out to be.~

== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen")~ THEN
~Why put up with this drivel? This man is lawless and spits upon order, let us not hesitate to show him the righteous wrath of justice!~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN
~Oh, surely this should not be the case! Is it truly that terrible out here in the world?~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN
~That must be terrible. They mustn't be like that, they shouldn't use money to make the peasants guilty, that is just wrong.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN
~That may be so in the city, but there is a justice elsewhere that is above abuse.~
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy")~ THEN
~Even if things be as you say, there will always be a truth above and beyond the deeds of men.~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")~ THEN
~Ill words that ring true. I can well and truly attest that justice shoved down a man's throat will always find him guilty.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN
~A sad but reasonably true state of affairs that I have not heard one of ill intents bemoan. Could this man truly be innocent of all that he stands accused of?~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN
~No, this cannot be allowed! Boo squeals in indignation to hear of such injustice, waiting to be stamped out with liberal butt-kicking goodness!~
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis")~ THEN
~Oh yes, the infamous law and order of the Primes. If the love of trinkets wasn't so widespread in this plane, it might be worth writing a play about it.~
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN
~I see that this poor fellow has also ran into Trax, and from the sound of things, more than a few times. He probably needs a turnip or two to help his mood.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN
~Gold and all that may do a thing or two, but nothing like the edge of an axe on their necks to make them sing to ye tune, laddie.~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo")~ THEN
~This should not come as a surprise to someone who has been on the wrong side of the law.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN
~The truth is as you have said, so accept it as you must. If you are fool enough to fight the truth, let us then put you out of your misery, the sooner the better.~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")~ THEN
~And stating the obvious somehow makes it more tolerable? Let us not waste time listening to this pathetic whining creature. Profit is waiting to be made!~
== Z#KIYOJ
~Say not such things, Kova. There is truth yet, in some of us.~
== Z#KOVA
~Aye, in those who refuse to look reality in the eye. Delightful.~
EXTERN Z#KIYOJ 5

APPEND Z#KIYOJ

	IF ~Global("FindingKova", "GLOBAL", 111)~ THEN BEGIN Attack2
	SAY ~No, <CHARNAME>, I will not let you do this!~
	IF ~~ THEN DO ~SetGlobal("FindingKova", "GLOBAL", 112) LeaveParty() Enemy() 
	ApplySpell(Myself, WIZARD_PROTECTION_FROM_FIRE)
	ApplySpell(Myself, CLERIC_IRONSKIN)~ EXIT
	END
	
	IF ~Global("FindingKova", "GLOBAL", 6)~ THEN BEGIN 2
	SAY ~Yes, indeed. And to think I was worried about that. Finally, before me, Kova, the man himself.~
	IF ~~ THEN DO ~SetGlobal("FindingKova", "GLOBAL", 7)~ EXTERN Z#KOVA 3
	END

	IF ~Global("FindingKova", "GLOBAL", 8)~ THEN BEGIN 5
	SAY ~Kova!~
	IF ~CheckStatGT(Player1, 15, INT) Global("KiyoTell", "LOCALS", 0)~ THEN REPLY ~The two of you know each other, don't you?~ GOTO 5-2
	IF ~~ THEN REPLY ~You do not sound like a criminal, Kova, but one who is justly bitter about a wrong done to him. Tell me more that I may right what injustice you have been dealt.~ EXTERN Z#KOVA 6
	IF ~~ THEN REPLY ~I am a servant of good and of justice, and I would hear you out before I will lift my hand against you.~ EXTERN Z#KOVA 6
	IF ~~ THEN REPLY ~Kiyone has told me about your case, Kova, and I would appreciate some cooperation on your part before I decide what to do. Such would be preferable to violence.~ EXTERN Z#KOVA 6
	IF ~~ THEN REPLY ~Not very cooperative, is he? So are we taking him in or not?~ GOTO 5-1
	IF ~~ THEN REPLY ~I cannot tolerate one so lawless, and my patience wears thin. If he will not cooperate let us kill him and be done with it.~  GOTO 5-1
	IF ~~ THEN REPLY ~You are wasting my time. Since you're clearly too squeamish to do something about shutting him up for good, I'll do it for you. (attack Kova)~ EXTERN Z#KOVA Attack1
	END
	
	IF ~~ THEN BEGIN 5-1
	SAY ~Please, speak not of such things, <CHARNAME>. Have a little patience and a little heart - if he is innocent, as I have reason to believe he is, then  it cannot have been easy for him, and he has every reason to feel the way he does. It would be up to us, then, to put to an end the bitterness in his heart. ~
	IF ~CheckStatGT(Player1, 10, INT) Global("KiyoTell", "LOCALS", 0)~ THEN REPLY ~The two of you know each other, don't you?~ GOTO 5-2
	IF ~~ THEN REPLY ~Yes, what you say is true, and perhaps my words were ill founded. Please Kova, tell us of how things have been.~ EXTERN Z#KOVA 6
	IF ~~ THEN REPLY ~He tests my patience, but I will do as you say and hear him out, Kiyone, if he would but speak of the matter.~ EXTERN Z#KOVA 6
	IF ~~ THEN REPLY ~I've heard enough, Kiyone. Both you and this miscreant here have wearied my nerves and I think the simplest way is to claim my reward from the Council of Six. (attack Kova)~ EXTERN Z#KOVA Attack1
	END 
	
	IF ~~ THEN BEGIN 5-2
	SAY ~Very well, I shall have the truth plain before you then, <CHARNAME>. I met Kova while I was on my way down south a few weeks ago, and we were travelling companions for a time. I did not yet know it was for him that I had sent down south, though. ~
	= 
	~During that time I found him dependable and though he seemed to have a decidedly careful and wary feel about him, he still found time to do what good he might. As such, I found it hard to believe that he did what deeds they would have everyone believe he did.~ 
	IF ~~ THEN EXTERN Z#Kova 5-3
	END

	IF ~~ THEN BEGIN 8
	SAY ~I will speak to Magistrate Bylanna and she can give us grace to find the evidence we need, so the Knights and Guardsmen will leave us be. As for the Shadow Thief assassins, and Cowled Wizards, if <CHARNAME> is willing to accept us as part of <PRO_HIMHER> entourage, they'll probably think twice about it.~
	=
	~What say you then, <CHARNAME>? Will you have Kova travel with us?~
	IF ~~ THEN REPLY ~I certainly will right this injustice. Come with us, Kova, and we shall do what we can for you.~ EXTERN Z#KOVA 9
	IF ~~ THEN REPLY ~This is by no means a simple matter, but for now you may join with our party while we do our best to get to the bottom of this.~ EXTERN Z#KOVA 9
	IF ~~ THEN REPLY ~I understand your case, but this will place all those around me in grave danger. I cannot help you, Kova, but you are free to go, and I wish you all the best.~ GOTO 10
	IF ~~ THEN REPLY ~I'm sorry, but this is far too dangerous for me to help you with. However, it is also far too unprofitable to simply let Kova go. Nothing personal, just good business sense. (attack Kova)~ EXTERN Z#KOVA Attack1
	END
	
	IF ~~ THEN BEGIN 10
	SAY ~I... I see. Perhaps I have misjudged you, <CHARNAME>. Maybe others will call me foolish, but I cannot travel further with you, since this case will need a conclusion.~
	= 
	~I take my leave now, and bid you farewell. I doubt we will meet again.~
	IF ~~ THEN 
	DO ~SetGlobal("KiyoJoined", "LOCALS", 0) 
	DropInventory()
	LeaveParty() 
	EscapeArea()~ EXTERN Z#KOVA 10Ext
	END
END

CHAIN
IF ~~ THEN Z#KIYOJ 7
~Actually, I was the one who stopped him from leaving this place, saying I would resolve the matter appropriately. If with regards to no other authority, at least in the eyes of the Council of Six, and the Sentinels as well.~
== Z#KOVA
~I still find in that hope a rather larger portion of naivete than I find agreeable.~
== Z#KIYOJ 
~You might feel that way, but I know what I'm doing. If <CHARNAME> here will assist us, all of us will travel together and you shall help me find evidence of your innocence, as I'm sure there will be. Eventually we'll gather enough evidence, and I will present them before Magistrate Bylanna, and your name will be cleared.~
== Z#KOVA
~Right, and that's piece of cake, yes? What of the many people coming after me, especially once it is made known that I am travelling in a group as large and noticeable as this?~ 
= ~Even if the Sentinels do, I don't suppose that the Assassins, Bounty Hunters, Cowled Enforcers, Knights and Guardsmen are going to just be agreeable because Kiyone and <CHARNAME> are with me, are they?~
EXTERN Z#KIYOJ 8	

//
//
//

BEGIN Z#KOVAP

IF ~Global("KovaJoined","LOCALS",1) Global("KKJoin", "GLOBAL", 1)
Dead("Kiyone") InPartyAllowDead("Kiyone")~ THEN BEGIN NoGo
SAY ~I will not depart, not with Kiyone like this. Only when she is back among the living shall I go, but not before.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END 

IF ~Global("KovaJoined","LOCALS",1) Global("KKJoin", "GLOBAL", 1) 
!Dead("Kiyone")~ THEN BEGIN L20
SAY ~Do you wish Kiyone and I to leave the party?~
IF ~~ THEN REPLY ~No, it was a mistake and I would appreciate it if you both rejoined me.~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~Yes. That would be the best course of action at the moment for all of us.~ GOTO L21
END

IF ~~ THEN BEGIN L21
SAY ~Very well, do you wish for us to wait here or shall we meet you back in the Windspear Hills?~ 
IF ~~ THEN REPLY ~Wait here for me and I'll pick you up.~ DO ~SetGlobal("KovaJoined","LOCALS",0)
SetGlobal("KKJoin","GLOBAL",3)~ EXIT
IF ~!Global("Chapter", "GLOBAL", 4) !Global("Chapter", "GLOBAL", 5)~ THEN REPLY ~I'll meet you again in the Windspear Hills.~ GOTO L22
END

IF ~~ THEN BEGIN L22
SAY ~Very well, we will be back where you and I first met.~
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",0)
EscapeAreaMove("AR1200",440,1680,6) 
SetGlobal("KKJoin","GLOBAL",2)~ EXIT
END

IF ~Global("Chapter", "GLOBAL", 2)
Global("KovaJoined","LOCALS",0) Global("KKJoin", "GLOBAL", 1)~ THEN BEGIN J20-1
SAY ~Greetings again, <CHARNAME>. Do you wish Kiyone and I to rejoin you on your journey?~
IF ~~ THEN REPLY ~Sure, I welcome you both back with open arms.~ 
DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()~ EXTERN Z#KIYOP J20In
IF ~~ THEN REPLY ~I don't have room in my party for both of you.~ GOTO J21
END

IF ~GlobalGT("Chapter", "GLOBAL", 2)
Global("BodhiJob", "GLOBAL", 0) Global("KKJoinShadow", "GLOBAL", 1)
Global("KovaJoined","LOCALS",0) Global("KKJoin", "GLOBAL", 1)~ THEN BEGIN J20-2
SAY ~Greetings again, <CHARNAME>. Do you wish Kiyone and I to rejoin you on your journey?~
IF ~~ THEN REPLY ~Sure, I welcome you both back with open arms.~ 
DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()~ EXTERN Z#KIYOP J20In
IF ~~ THEN REPLY ~I don't have room in my party for both of you.~ GOTO J21
END

IF ~GlobalGT("Chapter", "GLOBAL", 2)
OR(2) !Global("BodhiJob", "GLOBAL", 0) !Global("KKJoinShadow", "GLOBAL", 1)
GlobalGT("Chapter","GLOBAL",2) Global("KiyoJoined","LOCALS",0) 
Global("KKJoin", "GLOBAL", 0)~ THEN BEGIN KKbothNo1
SAY ~I've heard of your recent alliances, <CHARNAME>, and while you might still be able to help us, I can't say with certainty that we can trust you altogether. As such, I think it best we resolve our matters on our own, and I wish you all the best on your journey onward.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXTERN Z#KIYOP KKbothNo2
END

IF ~~ THEN BEGIN KKbothNo2
SAY ~As Kiyone has mentioned, we can no longer risk working with you on my case. I wish you all the best on your journey onward.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END




IF ~~ THEN BEGIN J21
SAY ~Very well, we'll tarry a while longer. Let us not wait over long though, there is more that needs to be done.~
IF ~~ THEN EXIT
END

//

IF ~Global("KKJoin","GLOBAL",2) !InParty("Kiyone") Global("KovaJoined","LOCALS",1)~ THEN BEGIN L22Go
SAY ~I'll be waiting with Kiyone in the Windspear Hills. Be well.~
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1) 
EscapeAreaMove("AR1200",440,1680,6)~ EXIT
END

IF ~Global("KKJoin","GLOBAL",3) !InParty("Kiyone") Global("KovaJoined","LOCALS",1)~ THEN BEGIN L21Go
SAY ~I'll be waiting here with Kiyone for you. Be well.~
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1) 
MoveToObject("Kiyone")~ EXIT
END

IF ~InParty("Kiyone")~ THEN BEGIN J20In
SAY ~Thank you, <CHARNAME>. It is good to be part of your group again.~
IF ~~ THEN DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()~ EXIT
END



//
// KiyoDlg
//

BEGIN ~Z#KIYOJ~

IF  ~InParty("Kiyone")
Global("FindingKova", "GLOBAL", 2)
AreaCheck("AR1200")
LOS("Kova", 120)~ THEN BEGIN FoundKova
SAY ~He's very near, I believe. Wait a moment.~
IF ~~ THEN EXIT
END

IF ~Global("KKJoin", "GLOBAL", 0)
!InParty("Kova")
AreaCheck("AR0311")
Global("GaeNote", "LOCALS", 0)~ THEN GaeNote
SAY ~I make no imposition on your choice of help for your cause, but be informed that I'll have to take my case elsewhere if you should take up such shady allies.~
IF ~~ THEN DO ~SetGlobal("GaeNote", "LOCALS", 1)~ EXIT
END

IF ~Global("WorkingForAran","GLOBAL",1)
Global("ShadowWork","GLOBAL",1)
Global("Linvail","GLOBAL",1)
PartyHasItem("MISC4S")
Global("Chapter", "GLOBAL", 3)
!InParty("Kova")
Global("KKJoin", "GLOBAL", 0)
AreaCheck("AR0311")~ THEN ShadowThiefNoKova
SAY ~I'm afraid I cannot stay with you any longer, due to your vested interests with this faction. My case will be concluded on my own.~
= ~In parting, I hope that in all you do, you remember to do what is right.~
IF ~~ THEN DO ~DropInventory() LeaveParty() EscapeArea()~ EXIT
END

IF ~!StateCheck(Player1,STATE_SLEEPING) 
ReputationLT(Player1,11)
Global("Bad11","LOCALS",0)~ THEN BEGIN Bad11
SAY ~I do not approve of these recent developments. It seems that we are veering off the path of righteousness.~
= ~I hope for both our sakes, that is not a state that will persist.~
IF ~~ THEN DO ~SetGlobal("Bad11", "LOCALS", 1)~ EXIT
END

IF ~!StateCheck(Player1,STATE_SLEEPING) 
ReputationLT(Player1,7)
InParty("Kova") InMyArea("Kova")
Global("Bad7","LOCALS",0)~ THEN BEGIN Bad7
SAY ~I'm afraid that with the deeds I see you commit, I cannot continue in your company further, <CHARNAME>. It will not help my case in the least.~
~In parting, I thank you for what you have done for myself and Kova, and entreat sincerely to turn from the dark path you now tread.~
IF ~~ THEN DO ~SetGlobal("Bad7", "LOCALS", 1)
DropInventory() LeaveParty() EscapeArea()~ EXTERN Z#KOVAJ Bad7
END

IF ~~ THEN BEGIN BodhiKiyo1
SAY ~Be wary, <CHARNAME>. There seems to be something amiss hereabouts, more real than an imagined danger.~
COPY_TRANS BODHI 1
END

IF ~~ THEN BEGIN Gael3
SAY ~Is this how you treat someone who would risk death than see his persecutors hunted down by vampires?~
IF ~~ THEN EXTERN SEEKOVA Gael4
END

IF ~Global("TIGael", "GLOBAL", 1)
!InParty("Kova")
StateCheck("Kova",STATE_DEAD)~ THEN BEGIN TISh3
SAY ~No, Kova! ...what have I done?~
= ~Forgive me...~
= ~My business here is concluded. I will go now, but rest assured, <CHARNAME>, I will not forget your help in this case. As for you, Gaelan... your days are numbered.~
IF ~~ THEN DO ~DropInventory() LeaveParty() SetGlobal("BregaTalk", "GLOBAL", 252) EscapeArea() Wait(1) DestroySelf()~ EXTERN SEEKOVA TISh4
END
	
IF ~Global("BregaTalk", "GLOBAL", 251)~ THEN BEGIN TIGovt3
SAY ~No! Kova... what have I... done?~
= ~Forgive me...~
= ~My business here is concluded. I will go now, but rest assured, <CHARNAME>, I will not forget the service you have performed for me this day.~
IF ~~ THEN DO ~DropInventory() LeaveParty() SetGlobal("BregaTalk", "GLOBAL", 252) EscapeArea() Wait(1) DestroySelf()~ EXTERN HABREGA TIGovt4
END

IF ~Global("CornTalk", "GLOBAL", 251)~ THEN BEGIN TICowl3
SAY ~No! Kova... what have I... done?~
= ~Forgive me...~
= ~My business here is concluded. I will go now, but rest assured, <CHARNAME>, I will not forget what you have done for me this day.~
IF ~~ THEN DO ~DropInventory() LeaveParty() SetGlobal("CornTalk", "GLOBAL", 252) 
EscapeArea() Wait(1) DestroySelf()~ EXTERN CORNEIL TICowl4
END

CHAIN
IF ~Global("KKJoin", "GLOBAL", 1) 
Global("BylTalk", "GLOBAL", 1) 
AreaCheck("AR1002")~ THEN Z#KIYOJ BylTalk1
~Greetings again, Magistrate Bylanna.~
== BYLANNA
~Greetings, Kiyone. I've heard some rather disturbing news that you have been travelling with a wanted man, a man you were sent to apprehend. I find that rather hard to believe though, especially of you - is there truth in such news?~
== Z#KIYOJ
~That is how it would appear, Magistrate. I assure you though, that I am still investigating the case, and from my findings, he is not what he has been made out to be.~
== BYLANNA
~Even if that were the case, harbouring a criminal can only do you more harm than good. It will also affect your judgment, one that I've been told you have been much acclaimed for in the North.~
== Z#KIYOJ
~Please, lady Bylanna, trust me. If you have to know, he is here in this place right now, but I assure you he will do you no harm. That is the person we are dealing with, who would not wish to needlessly hurt those who would take his life.~
== BYLANNA
~He is in here...? Well, then I'll have to take your word on this matter, at least for the time being. What is it that you wish of me?~
== Z#KIYOJ
~It is rather difficult and dangerous to investigate the case, if we're being hunted by Knights and Amnish Guards every step of the way. I would like to ask for more time to gather the evidence.~
== BYLANNA 
~That is a reasonable request, Kiyone. I'll give a week's grace before sending Myroven to you, though guards will move to apprehend you if there is no fresh evidence presented to her that she may hand over to me.~
== Z#KIYOJ 
~I will see to it that fresh information is found.~
== BYLANNA 
~Yes, that would be in your best interests. I'm not sure how things are in the North, but here in Athkatla, should an already apprehended criminal escape, the guard will be held responsible. I will treat you no differently, Kiyone, regardless of whether your fellow Sentinels approve.~
== Z#KIYOJ 
~That I understand, and I will bear responsibility for this case. We among the Sentinels would have it no other way.~
== BYLANNA 
~Go then, I wish you well. If you haven't already spoken to him, you may wish to speak to Inspector Brega who investigated the case.~
== Z#KIYOJ
~Thank you, Magistrate Bylanna, you are most kind. I will not let you down.~
DO ~EraseJournalEntry(@1003)
AddJournalEntry(@1004,QUEST) 
SetGlobal("BylTalk", "GLOBAL", 2) 
SetGlobal("GovtGuards", "GLOBAL", 2)
SetGlobal("KKGovt", "GLOBAL", 0)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
AddexperienceParty(9000)~ EXIT

CHAIN
IF 	~InParty("Kova") InMyArea("Kova") 
	Global("KKJoin", "GLOBAL", 1) 
	Global("AddRayic", "GLOBAL", 1)
	PartyHasItem("RayNote")
	!ActuallyInCombat()~ THEN Z#KIYOJ PostRayic
~This is... not good. If this note is anything to go by, he could have helped us.~
== Z#KOVAJ
~And I suppose the Cowled Wizards are proverbially known for being cooperative?~
== Z#KIYOJ
~I don't need your sarcasm, Kova. Here I am, an assassin for the Shadow Thieves, and it doesn't help to know we've just killed a potentially helpful and guiltless contact.~
== Z#KOVAJ
~He's not guiltless - your law just hadn't declared him guilty yet. Similarly, if you hadn't met me on the road, I'd be just as guilty as anyone else.~
== Z#KIYOJ
~I'm not in the mood for such discussions, Kova.~
== Z#KOVAJ
~Such truths bear consideration.~
== Z#KIYOJ
~Shut up, Kova, just shut up.~
DO ~AddJournalEntry(@1010, QUEST) 
SetGlobal("AddRayic", "GLOBAL", 2)
AddexperienceParty(9000)~
EXIT

CHAIN
IF ~~ THEN Z#KIYOJ JermClue1
~A moment of your time, if you could spare it, Jermien. We have need of your help regarding some matters.~
== JUGJER01
~If it is within my ability, I will. It's the least I could do for your aid.~
== Z#KIYOJ
~Thank you. I've been sent by Bylanna to investigate one particular case, and I was wondering if you had any information about it. It concerns the murder of some Cowled Enforcers, allegedly at the hands of one Kova Kashiro. Any information you could provide would be helpful.~
== JUGJER01
~Oh, that was some rather unpleasant business. To say more might be terminally unhealthy for myself, but since you've saved me already I guess I could afford to speak a little more.~
= ~One of my former pupils, lad called Deros, claimed he saw the thing happen. They say it was done by a man with moderately long dark hair, but he was certain it was a white-haired slip of a girl.~
= ~Apart from having the sense to keep out of sight when it happened, and writing his usual report on having identified a deviant, he didn't think much about it, until the price for the alleged murderer came out. That's when he sensed something was amiss and left Athkatla.~
= ~He managed to drop by to warn me that some trouble was brewing, possibly within the Cowled Wizards, before continuing on his way. Few days later, they found his corpse off near the eastern border. An altogether disturbing series of events.~
= ~Old juggernaut here was supposed to protect me from attempts on my life. Now that Colette has found someone, and I have no reason to be staying around much, perhaps I'd be best leaving this place altogether.~
== Z#KIYOJ
~Thank you Jermien, your information has been most helpful. Now all that is left is to put it down in writing as documented evidence before Bylanna.~
== JUGJER01
~And then the whole world, including the ones who killed Deros, will know what I, Jermien, have heard! You ask too much, young lady.~
== Z#KIYOJ 
~Look, Jermien, I'm trying to find who is the real person behind all of this, a person who has already proven to be dangerous, and your assistance will be highly invaluable. Are you aware that Rayic has been killed?~
== JUGJER01
~What!? How could... He took such precautions!~
== Z#KIYOJ
~We were searching for clues in his room after his death, and we found a letter referring to you and Deros. Whoever killed him would definitely have read the letter as well.~
== JUGJER01
~That is grave news.~
== Z#KIYOJ
~Indeed, and your assistance is doubly urgent. The Gods willing, we will be able to get to the bottom of this before more lives are endangered. And in the case that you have been slain, your statement will help us seek retribution upon your murderer.~
== JUGJER01
~It looks like I have no other choice save to prepare my statement, lady Kiyone, and then to leave this place immediately. Though you bear ill tidings, I owe you and your friends thanks beyond what you've already done for me.~
== Z#KIYOJ
~You're welcome, Jermien. I hope that this makes up for what mistakes I have already let myself be led into.~
DO ~SetGlobal("AddRayic","GLOBAL", 3) 
GiveItemCreate("JerSig",Player1,0,0,0)
SetGlobal("JermClue","GLOBAL", 1) AddexperienceParty(12000)~ EXTERN JUGJER01 Bye

//
//
//

BEGIN Z#KIYO

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeeting
SAY ~Greetings, <CHARNAME>. I am Kiyone, and it's my pleasure to finally meet the hero of the Sword Coast, and one who is such a champion of righteousness.~
IF ~~ THEN REPLY ~Well, I suppose you could say that of me. Is there some way I can help you?~ GOTO Relate
IF ~~ THEN REPLY ~This sounds familiar, somehow. Let me guess - you come here seeking my assistance in some manner?~ GOTO Relate
IF ~~ THEN REPLY ~Yes, well I suppose you could say that of me. I trust you come to me seeking my assistance in some manner?~ GOTO Relate
IF ~~ THEN REPLY ~I'm a little nervous of people, especially strangers who know my name - they often don't mean well. Exactly who are you, anyway? ~ GOTO IntroSelf
IF ~~ THEN REPLY ~Well whoever you are, I'm not interested in hearing you out. Please excuse me.~ GOTO Bye
IF ~~ THEN REPLY ~I'm afraid you've got the wrong person.~ GOTO Bye
END

IF ~NumTimesTalkedToGT(0) ReputationLT(Player1,11)~ THEN BEGIN Thinking
SAY ~Recent news about your actions have made me reconsider if you are one with whom I can work with. I'll wait to see how things fare with you before telling you more.~
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0) ReputationLT(Player1,8)~ THEN BEGIN Goodbye
SAY ~Thank you for dropping by, <CHARNAME>, but I'm afraid I'll be taking my business elsewhere. In parting, I can only say that I hope you turn around before it is too late.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~NumTimesTalkedToGT(0) !Global("Chapter","GLOBAL",2)~ THEN BEGIN TimeOut
SAY ~I'm afraid with your current commitments and the company you keep, I cannot risk working with you on any issues. I will settle my matters on my own.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~NumTimesTalkedToGT(0) ReputationGT(Player1,10)~ THEN BEGIN ReturnDialogue
SAY ~Good to see you again, <CHARNAME>. I hope you have changed your mind about assisting me in working towards the cause of justice.~
IF ~~ THEN REPLY ~I can't quite remember who you are. A reintroduction would be helpful.~ GOTO IntroSelf
IF ~~ THEN REPLY ~Could you refresh me as to what exactly it is you require of me?~ GOTO Relate
IF ~~ THEN REPLY ~Yes, I have. Join me and we shall work towards righting this matter.~ GOTO Joining
IF ~~ THEN REPLY ~No I haven't, actually. Good day to you.~ GOTO Bye
END

IF ~~ THEN BEGIN IntroSelf
SAY ~Then a more a complete introduction of myself is in order. I am Kiyone Makibi, of the Sentinels, a cadre of Rangers north of here. Though we are yet young, we stand on the side of righteousness and are a growing force for good upon this world.~
= ~Within the cadre, I have had the distinction from among all my peers to be one of the best Sentinels, and indeed I have seen some success in bringing the wicked who have crossed my path to justice.~
= ~All this, however would be a vain boast if it were untrue or if I thought the information meaningless to you. For I would offer my strong bow-arm to your cause, which I have reason to believe is just and true as well, if you would but assist me in the matter for which I was sent down south.~
IF ~~ THEN REPLY ~It is a pleasure to meet one serving a good cause. Relate what you have to me, my lady, and I will take heed.~ GOTO Relate
IF ~~ THEN REPLY ~More concrete benefits would be better. Tell me more, though, that I may decide. ~ GOTO Relate
IF ~~ THEN REPLY ~I do not believe in the simplistic right and wrong you seem to have notions of. Focus on what's in it for me.~ GOTO Relate
IF ~~ THEN REPLY ~You sound like the type who would have many enemies. An ally with such liabilities is one I am unwilling to have with me.~ GOTO Bye
IF ~~ THEN REPLY ~No thanks. I'm not about to take in some silly girl with even sillier notions of what right and wrong means in this world.~ GOTO Bye
IF ~~ THEN REPLY ~Bah, I am not interested in serving anyone or anything other than my own interests.~ GOTO Bye
END

IF ~~ THEN BEGIN Relate
SAY ~Indeed, it is as you have said. I have come to Amn in search of a dangerous criminal who is wanted by many authorities.~
= ~His name is Kova Kashiro, a rogue mage of either some considerable prowess or considerable evasive ability. He has been charged with many crimes and has been sentenced to death. The reward for him, dead or alive, is a considerable 7,000 gold, from the Council of Six in Athkatla. ~
= ~The price however, seems rather huge for a rogue mage. Investigating the charges, it appears he has been accused of many number of misdeeds, including the deaths of a few Cowled Enforcers, murdering some high ranking noblemen in the city, and poisoning the entire village of Shanro on the outskirts of Athkatla.~
= ~Noteworthy charges, certainly. Still, further investigations have yielded that interestingly, he is also wanted among the Shadow Thieves, who, as my source informed me, seemed to be even more generous in their remunerations for his capture or decease.~
= ~This development, as well as information from a few other sources, leads me to believe there is more to this matter than meets the eye. I would have your assistance then, in seeking out this criminal and making my intent known to him.~ 
= ~More importantly, your note-worthy presence might still him from rash violence that may be beyond my means to overcome. Once we have located him, we can try to find out more about the whole matter and do what is right.~
IF ~~ THEN REPLY ~An intriguing matter that must be investigated, lest an innocent man be judged guilty. I will certainly aid you in this endeavour.~ GOTO Joining
IF ~~ THEN REPLY ~If he is as the authorities believe, we will put an end to him. However, if he is blameless we shall seek to treat him justly.~ GOTO Joining
IF ~~ THEN REPLY ~I will go with you, and if he is guilty, do not stop us from earning the reward due to us.~ GOTO Joining
IF ~~ THEN REPLY ~No thanks, I'm not about to take part in something that might earn me the wrath of the most powerful authorities in the land.~ GOTO Bye
IF ~~ THEN REPLY ~I'm afraid I cannot help you right now. Perhaps I'll get back to you when I can.~ GOTO Bye
IF ~~ THEN REPLY ~I have no interest in such matters, so excuse me, I have to be going.~ GOTO Bye
END

IF ~~ THEN BEGIN Bye
SAY ~I believe you have your reasons for reacting in this fashion, <CHARNAME>. Nonetheless, much as I would greatly appreciate your assistance in my work, it would be rude of me to impose myself on you. I'll be waiting for you in the Government District of Athkatla, near the Council of Six Building, if you change your mind.~
IF ~~ THEN DO ~EscapeAreaMove("AR1000",3000,1100,2)~ EXIT
END

IF ~~ THEN BEGIN Joining
SAY ~Thank you for your assistance in this matter, <CHARNAME>. My sources have reason to believe our quarry is taking refuge in the Windspear Hills.~ 
= ~They have been unable to provide further information on his whereabouts in that region, however I have informed by those who used to know him that he has a general fondness for fishing. That's about all we have to go with so far, I'm afraid, so let us begin our search there.~
IF ~CheckStatGT(Player1, 17, INT) CheckSTatGT(Player1, 15, CHR)~ THEN REPLY ~You know this Kova person, don't you? That's why you think he is innocent.~ DO ~SetGlobal("KiyoTell", "LOCALS", 1)~ GOTO KnowHim
IF ~~ THEN REPLY ~Very well, let us go there as soon as we may.~ UNSOLVED_JOURNAL @1001
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN KnowHim
SAY ~Well, you've agreed to help me, so it is only right that I be honest with you, though I must admit I wasn't sure what you would make of it. Yes, I do know him, and we travelled together for a time when I was coming down south a few weeks ago.~ 
= ~However, I did not yet know it was for him that I had sent been down south. From that time we travelled together, I do find it hard to believe that he did what deeds they would have everyone believe he did.~ 
= ~Though indeed, if my personal opinion is the only reason for me to believe he is innocent, then I would be guilty of being less of a Sentinel than I should be. If he is truly the villain they make him out to be, I would have no hesitation in putting in arrow through his heart.~
IF ~~ THEN REPLY ~I somehow feel too that you have not misjudged this man. Let us seek him out then, and set this matter right.~ GOTO ThankYou
IF ~~ THEN REPLY ~It is good to know that you don't put personal prejudices above what doing what is right. Let us seek him out then, and set this matter to rest.~ DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ 
UNSOLVED_JOURNAL @1002 EXIT
IF ~~ THEN REPLY ~Good to hear that. Just remember not to be too taken by your emotions, emotions that he could be making use of.~ DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ 
UNSOLVED_JOURNAL @1002 EXIT
END

IF ~~ THEN BEGIN ThankYou
SAY ~Thank you, <CHARNAME>. You don't know how much better that statement makes me feel about the whole situation.~ 
IF ~~ THEN UNSOLVED_JOURNAL @1002 DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT 
END

//
//
//

BEGIN Z#KIYOP

IF ~Global("KiyoJoined","LOCALS",1) Global("KKJoin", "GLOBAL", 1)
Dead("Kova") InPartyAllowDead("Kova")~ THEN BEGIN NoGo
SAY ~I cannot leave now, <CHARNAME>, not with Kova in this state. I must insist on staying until he is restored.~
IF ~~ THEN DO ~JoinParty()~ EXIT
END 

IF ~Global("KiyoJoined","LOCALS",1) Global("KKJoin", "GLOBAL", 0)
!Dead("Kova")~ THEN BEGIN L10
SAY ~There are yet matters left unresolved. Are you sure you wish me to depart?~
IF ~~ THEN REPLY ~No, it was a mistake and I would appreciate it if you rejoined me.~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~Yes. That would be the best course of action at the moment for all of us.~ GOTO L11
END

IF ~~ THEN BEGIN L11
SAY ~Very well, do you wish me to wait here or back in the Government District?~ 
IF ~~ THEN REPLY ~Wait here for me and I'll pick you up.~ DO ~SetGlobal("KiyoJoined","LOCALS",0)~ EXIT 
IF ~~ THEN REPLY ~I'll meet you again in the Government District.~ GOTO L12
END

IF ~~ THEN BEGIN L12
SAY ~You may find me near the Council of Six building, and I hope to see you again soon, that we may finish what has been left undone.~
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0) EscapeAreaMove("AR1000",3000,1100,2)~ EXIT
END

IF ~GlobalGT("Chapter","GLOBAL",2) Global("KiyoJoined","LOCALS",0) 
Global("KKJoin", "GLOBAL", 0)~ THEN BEGIN NotChapter3
SAY ~I'm afraid with your current commitments and the company you keep, I cannot risk working with you on any issues. I will settle my matters on my own.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END

IF ~Global("Chapter", "GLOBAL", 2) 
Global("KiyoJoined","LOCALS",0) Global("KKJoin", "GLOBAL", 0)~ THEN BEGIN J10
SAY ~You have returned, <CHARNAME>. It would be good to rejoin you and finish up what has been left undone.~
IF ~~ THEN REPLY ~Sure, welcome back Kiyone.~ DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
IF ~~ THEN REPLY ~I don't have room in my party for you, Kiyone.~ GOTO J11
END

IF ~~ THEN BEGIN J11
SAY ~Very well, I'll tarry a while longer. Let us not wait over long though, you won't be able to find Kova without me, and getting a hold of him is still my prerogative.~
IF ~~ THEN EXIT
END

//

IF ~Global("KiyoJoined","LOCALS",1) Global("KKJoin", "GLOBAL", 1)~ THEN BEGIN L20
SAY ~Do you wish Kova and I to leave the party?~
IF ~~ THEN REPLY ~No, it was a mistake and I would appreciate it if you both rejoined me.~ DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY ~Yes. That would be the best course of action at the moment for all of us.~ GOTO L21
END

IF ~~ THEN BEGIN L21
SAY ~Very well, do you wish for us to wait here or shall we meet you back in the Windspear Hills?~ 
IF ~~ THEN REPLY ~Wait here for me and I'll pick you up.~ DO ~SetGlobal("KiyoJoined","LOCALS",0)
SetGlobal("KKJoin","GLOBAL",3)~ EXIT
IF ~!Global("Chapter", "GLOBAL", 4) !Global("Chapter", "GLOBAL", 5)~ THEN REPLY ~I'll meet you again in the Windspear Hills.~ GOTO L22
END

IF ~~ THEN BEGIN L22
SAY ~Very well, we will be back where you first met Kova.~
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0)
EscapeAreaMove("AR1200",400,1693,8)
SetGlobal("KKJoin","GLOBAL",2)~ EXIT
END

IF ~Global("Chapter", "GLOBAL", 2)
Global("KiyoJoined","LOCALS",0) Global("KKJoin", "GLOBAL", 1) ~ THEN BEGIN J20-1
SAY ~Greetings again, <CHARNAME>. Do you wish Kova and I to rejoin you on your journey?~
IF ~~ THEN REPLY ~Sure, I welcome you both back with open arms.~ 
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXTERN Z#KOVAP J20In
IF ~~ THEN REPLY ~I don't have room in my party for both of you.~ GOTO J21
END

IF ~GlobalGT("Chapter", "GLOBAL", 2)
Global("BodhiJob", "GLOBAL", 0) Global("KKJoinShadow", "GLOBAL", 1)
Global("KiyoJoined","LOCALS",0) Global("KKJoin", "GLOBAL", 1) ~ THEN BEGIN J20-2
SAY ~Greetings again, <CHARNAME>. Do you wish Kova and I to rejoin you on your journey?~
IF ~~ THEN REPLY ~Sure, I welcome you both back with open arms.~ 
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXTERN Z#KOVAP J20In
IF ~~ THEN REPLY ~I don't have room in my party for both of you.~ GOTO J21
END

IF ~GlobalGT("Chapter", "GLOBAL", 2)
OR(2) !Global("BodhiJob", "GLOBAL", 0) !Global("KKJoinShadow", "GLOBAL", 1)
GlobalGT("Chapter","GLOBAL",2) Global("KiyoJoined","LOCALS",0) 
Global("KKJoin", "GLOBAL", 0)~ THEN BEGIN KKbothNo1
SAY ~I'm afraid with your current commitments and the company you keep, Kova and myself cannot risk working with you on our matter of interest. We will settle our matters on our own, and I hope you fare well on the road ahead.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXTERN Z#KOVAP KKbothNo2
END

IF ~~ THEN BEGIN KKbothNo2
SAY ~As Kova has mentioned, we can no longer risk working with you on the case. I bid you farewell and best wishes on the road ahead.~
IF ~~ THEN DO ~EscapeArea() Wait(1) DestroySelf()~ EXIT
END


IF ~~ THEN BEGIN J21
SAY ~Very well, we'll tarry a while longer. Let us not wait over long though, there is more that needs to be done.~
IF ~~ THEN EXIT
END

//

IF ~Global("KKJoin","GLOBAL",2) !InParty("Kova") Global("KiyoJoined","LOCALS",1)~ THEN BEGIN L22Go
SAY ~I'll be waiting with Kova in the Windspear Hills. Be well.~
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1)
EscapeAreaMove("AR1200",400,1693,8)~ EXIT
END

IF ~Global("KKJoin","GLOBAL",3) !InParty("Kova") Global("KiyoJoined","LOCALS",1)~ THEN BEGIN L21Go
SAY ~I'll be waiting here with Kova for you. Be well.~
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",0) SetGlobal("KKJoin","GLOBAL",1) MoveToObject("Kova") ~ EXIT
END

IF ~InParty("Kova")~ THEN BEGIN J20In
SAY ~Thank you, <CHARNAME>. It is good to be part of your group again.~
IF ~~ THEN DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~ EXIT
END


// Dialogues for either one of their deaths and removal from the party

BEGIN KYCDEAD
BEGIN KVCDEAD
BEGIN KVCSPLAT
BEGIN KYCSPLAT

CHAIN
IF ~Dead("Kova") 
!InPartyAllowDead("Kova") 
Global("KKJoin", "GLOBAL", 1)
!Global("FindingKova", "GLOBAL", 250)~ THEN KYCDEAD Gone
~It appears I have misjudged you, <CHARNAME>, for I had not thought you one who would be so ready to abandon your companions to death.~
= ~Now is the time to rectify that mistake, so I shall take his body and depart, for I cannot leave him in this state until matters are suitably concluded. Farewell, and may we not meet again.~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)
ActionOverride("Kova", DestroySelf() )~ EXIT

CHAIN
IF ~Dead("Kiyone") 
!InPartyAllowDead("Kiyone") 
Global("KKJoin", "GLOBAL", 1)~ THEN KVCDEAD Gone
~What is this? Why have you callously abandoned Kiyone to her fate, after all that you have spoken to us both?~
= ~I will not allow this to come to pass, and since you will not have her, I shall bear her away. If she does not speak well of you when she returns, I hope for your sake our paths will not cross again.~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)
ActionOverride("Kiyone", DestroySelf() )~ EXIT

CHAIN
IF ~True()~ THEN KVCSPLAT Gone
~NO! Kiyone... I...~
= ~Gah... my foolish dreams, my pride... I have caused this!~
= ~Doesn't change anything, it is over. And perhaps, that's the way it should always have been...~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)~ EXIT

CHAIN
IF ~True()~ THEN KYCSPLAT Gone
~No! Kova... what have I... done?~
= ~Forgive me... I didn't know, my pride, my vanity would...~
= ~It is finished, as it should be. I only wish... I hadn't.~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)~ EXIT



// Dayven Dialogue

BEGIN ~DAYVEN~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Hi1
SAY ~Hail, citizens. What brings you here to the Prison house? Tis hardly a place for law abiding men like yourselves.~
IF ~GlobalGT("Dayven","GLOBAL",0)
GlobalLT("Dayven", "GLOBAL", 4)~ THEN REPLY ~Are you Inspector Dayven? We are looking for information on the murders of some nobles by one Kova Kashiro.~ DO ~SetGlobal("Dayven", "GLOBAL", 3)~ GOTO 1
IF ~~ THEN REPLY ~No trouble, we'll be on our way now.~ EXIT
END

IF ~~ THEN BEGIN 1
SAY ~Yes, I am he. However, we do not often share information on cases, even among our colleagues. Especially regarding those which have already been closed.~
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Dayven2
IF ~OR (2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN GOTO 1End
END

IF ~~ THEN BEGIN 1End
SAY ~As such, I'm afraid I cannot assist you on the matter you requested. Good day to you, citizen.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
SAY ~He did not, Kiyone. Although as his subordinate, I report all my findings to the Chief.~
IF ~~ THEN REPLY ~I don't suppose it seems a little suspicious for the fellow to use the same weapon to kill all three of them. Especially when he probably could have killed them through other means.~ GOTO 4
IF ~~ THEN REPLY ~Very well, I suppose so. Thank you for your help, Inspector, that should be all we need to know.~ GOTO 5
END

IF ~~ THEN BEGIN 4
SAY ~Actually, I found it suspicious myself, and pointed it out to the Chief. However, after some deliberation, there didn't seem to be any other conclusions either of us could openly draw, given our positions and the eyes of the nobility on us.~
=
~What might be possible though, is that this might be part of a set up, so I am actually a little relieved that you are looking into the matter as well.~
IF ~~ THEN REPLY ~Thank you for your help, Inspector, that should be all we need to know.~ GOTO 5
END

IF ~~ THEN BEGIN 5
SAY ~Pleasure to have been of assistance. All the best on the case.~
IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN Hi2
SAY ~Well met again. What brings you back to this dreary prison?~
IF ~GlobalGT("Dayven","GLOBAL",0)
GlobalLT("Dayven", "GLOBAL", 4)~ THEN REPLY ~Are you Inspector Dayven? We are looking for information on the murders of some nobles by one Kova Kashiro.~ DO ~SetGlobal("Dayven", "GLOBAL", 3)~ GOTO 1
IF ~Global("Dayven", "GLOBAL", 3)~ THEN REPLY ~We are looking for information on the murders of some nobles by one Kova Kashiro.~ GOTO 1Ext
IF ~GlobalGT("Dayven", "GLOBAL", 3)~ THEN REPLY ~We were just wondering if you could review the information previously given, and if you might have any new information for us.~ GOTO 2Ext
IF ~GlobalGT("Dayven", "GLOBAL", 3)~ THEN REPLY ~I don't suppose it seems a little suspicious for the fellow to use the same weapon to kill all three of them. Especially when he probably could have killed them through other means.~ GOTO 4
IF ~Global("Dayven", "GLOBAL", 9) Inparty("Kiyone") InMyArea("Kiyone")
PartyHasItem("DayRec")~ THEN REPLY ~We have some rather interesting news about how you got the information which you brought to Brega's attention.~ DO ~SetGlobal("Dayven", "GLOBAL", 10)~ GOTO 6
IF ~Global("Dayven", "GLOBAL", 11)~ THEN REPLY ~I have thought things over and decided not to tell Brega of your involvement with the Shadow Thieves.~ GOTO 6Opt2
IF ~Global("Dayven", "GLOBAL", 12)~ THEN REPLY ~Have you reviewed the case and the findings yet?~ GOTO 7
IF ~~ THEN REPLY ~No trouble, we'll be on our way now.~ EXIT
END

IF ~~ THEN BEGIN 1Ext
SAY ~As I told you already, we do not often share information on cases, even among our colleagues. Especially regarding those which have already been closed.~
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Dayven2
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN GOTO 1End
END

IF ~~ THEN BEGIN 2Ext
SAY ~I'm afraid I've no new information to give you. The facts of the case stands as follows - three young nobles were murdered, one after another, over a period of about two weeks. All three were killed using a weapon only known to be wielded by the alleged murderer.~
= ~Which pretty much closes the case, of course. I doubt repeating all this helps you much, but if by doing so I may assist in some way, I have no problem with that.~
= ~Seeing there's nothing else I can do for you, I'll return to my conversation with my friend the Prison Keeper. Good day to you, citizen.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6Opt
SAY ~So, here I stand, to face what judgment will come my way.~
IF ~~ THEN REPLY ~I will go to Brega and he will deal with you as he deems fit.~ GOTO 6Opt1
IF ~~ THEN REPLY ~No, Dayven, I do not wish any such action to be taken.~ GOTO 6Opt2
END

IF ~~ THEN BEGIN 6Opt1
SAY ~Let it be done as you have said, then. You can let him know I will waiting for him here.~
IF ~~ THEN DO ~SetGlobal("Dayven", "GLOBAL", 11)~ EXIT
END

CHAIN
IF ~~ THEN DAYVEN 2
~Ah, Kiyone? Tis a name I've heard, from the Chief himself. No trouble, I'll give you the details as we have reported it.~
= ~The Chief assigned me to this case back then, because he was busy with some major case, so I believe, and he didn't want to divert his attention. It started off as a case of abduction and kidnapping, for ransom purposes. Nothing too uncommon, or so we were led to believe.~
= ~Then things started to happen, and the first boy, called Nathen, turned up dead after his family paid the ransom. The next day, a lad called Hethgon was missing, and a ransom message delivered. The money didn't save his life either.~
= ~Last one was a lass called Marthani. She turned up dead, as well, and thankfully that was the last of the deaths, which occurred over a period of 2 weeks. I had a bunch of rather unhappy rich folk breathing down my neck and the only clue I could uncover was by examining the bodies of the victims.~
= ~All three of the victims were murdered using a bladed weapon, with some similarities to a dagger but with the curved tempered edge of a wakizashi. There was only one known make of the weapon.~
= ~From there we handed the case over to the Chief, who had already obtained some information about the suspect, and further deductions were elementary.~ 
== Z#KIYOJ
~I see, Inspector. I don't suppose Inspector Brega shared with you the details of the case he was investigating? Since at that point in time, you weren't aware that the charges would involve the same person.~
DO ~SetGlobal("Dayven", "GLOBAL", 4)~ EXTERN DAYVEN 3

CHAIN
IF ~~ THEN DAYVEN 6
~I... I see. What is it that you have heard, and from whom?~
== Z#KIYOJ 
~My contacts have informed me that you received a bribe of a five hundred gold to bring certain information to Brega's attention.~
= ~Here is the note that you signed prior to receiving the gold, an agreement to present the highlighted facts of the case to Inspector Brega.~
== DAYVEN
~Yes, it is as you have said, and I can see you have enough proof of my deeds.~ 
= ~So, now I am no better than any one of the prisoners about here, am I? Indeed, I've been here all along, waiting, and Torm has not kept me waiting long for what is to come.~
= ~Still, I would know what will become of me. I am well aware of what I deserve, yet I would hope for mercy, for I've a family to feed.~ 
= ~I will not resist any arrest, though, and you have only to go to Brega to settle this matter.~
EXTERN DAYVEN 6Opt

CHAIN
IF ~~ THEN DAYVEN 6Opt2
~Then you are a better <PRO_MANWOMAN> and fairer than any I've yet known, and no words can thank you enough for your kindness. If there is anything I can do for you to redeem myself, I certainly would.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~What you have offered is only fitting, Dayven. We all make mistakes at times, and sometimes making up for it is better than if otherwise. Perhaps there is some way, however, to review the findings on Kova's case?~ 
== DAYVEN
~I will gladly go through the case again as you command me to. However, I doubt there will be any new findings from it.~
= 
~I must admit that the clue supplied was timely, but they required that I bring it to Brega's attention, and that I accept the gold, before giving it to me. Yet the findings were as I have presented to Brega - I was not required to distort the facts of the case in any way.~
=
~Give me but a moment, and will be able to let you know what I've found.~
DO ~SetGlobal("Dayven", "GLOBAL", 12)~ EXIT

CHAIN
IF ~~ THEN DAYVEN 7
~I'm afraid I have nothing to report, <CHARNAME>. I've reviewed the findings, even sent some of my men to look over the bodies, but it was as it was initially reported. I'm very sorry.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is all right, Dayven. We will just have to look elsewhere.~ 
== DAYVEN
~Still, I can write to Magistrate Bylanna regarding the findings, and how the Shadow Thieves were involved in ensuring that we obtained the necessary clues to link the murders to the suspect.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Your gesture is very much appreciated. Thank you.~ 
== DAYVEN
~If there is any way that I may assist you in future, you have but to let me know. Once again, my thanks for your mercy. May the case you are looking at be resolved soon.~
DO ~SetGlobal("Dayven", "GLOBAL", 13)
AddJournalEntry(@1009, QUEST)	
AddexperienceParty(15000)
SetGlobal("DayvClue", "GLOBAL", 1)~ EXIT

APPEND Z#KIYOJ
	IF ~~ THEN BEGIN Dayven2
	SAY ~My name is Kiyone, Inspector Dayven, and I'm assisting Magistrate Bylanna in reviewing this case. Inspector Brega directed us to you for information.~
	IF ~~ THEN EXTERN DAYVEN 2
	END
END

// Renal Extension

INTERJECT_COPY_TRANS ~Renal~ 2 HiKova
== RENAL IF ~InParty("Kova")~ THEN
~By the way, we are aware of who is currently with you, so you can tell your friend Kova he needn't be hiding. I know he's here, and I could have his head if I wanted it.~ 
=
~If you wish to get him off your hands, <CHARNAME>, you can hand him over to Gaelan. I prefer not to have too many traps in public places, so to speak, and even if I did, I'd prefer not to do a certain colleague of mine too many favours.~
=
~However, I suspect you might wish to, for your own reasons, continue keeping his company. Should you do what I require of you, I'll see to it most of the thieves get off your backs.~
END

INTERJECT_COPY_TRANS ~Renal~ 48 OffThief
== RENAL IF ~GlobalGT("KKJoin", "GLOBAL", 0) InParty("Kova")~ THEN
~Also, as earlier mentioned, I'll see to it that those of my underlings who have been pestering your group henceforth desist, at least on an official basis.~ 
= ~Still, there'll be some eager to take up that sizeable reward, and a certain well-meaning colleague of mine also has some rather irreconcilable differences with your friend.~
= ~Now... where was I? Oh yes, the matter of your own reward for removing Mae'Var in a most sporting fashion.~
DO ~IncrementGlobal("ShadowHunt", "GLOBAL", 1)~
END

CHAIN 
IF WEIGHT #-1 ~Global("PlayerThiefGuild","GLOBAL",1)
Global("PGFailed","GLOBAL",0)
!Global("Chapter","GLOBAL",6)
InParty("Kova")
Global("KKJoin", "GLOBAL", 1)~ THEN RENAL KvHaveGuild
~You should be attending the affairs of your own guild, <CHARNAME>.  Joster will be by to collect your dues, and I'm sure your lieutenant can answer any other questions you have.  Shoo!~
END
IF ~~ THEN REPLY ~Very well, I will leave you to your business.~ EXIT
IF ~InParty("Kova") 
Global("RenalJob", "GLOBAL", 4)
Global("GivenStuff", "LOCALS", 0)
Global("MaeVarExposed", "GLOBAL", 1)
OR(2)
	Global("LOAClue", "GLOBAL", 0)
	Global("AddRayic", "GLOBAL", 0)~ 
THEN REPLY ~I was just wondering if I could have the documents you got from Mae'Var's case, which could give us some clues as to a certain case we are handling.~ GOTO Ren1
IF ~Global("Dayven", "GLOBAL", 7)
Global("RenalJob", "GLOBAL", 4)
Global("MaeVarExposed", "GLOBAL", 1)~
THEN REPLY ~I'd like to know if you have any information on Inspectors Brega and Dayven, especially if they've any dealings with the Shadow Thieves.~ GOTO Ren2
IF ~!GlobalTimerExpired("RenalCheckDayven", "GLOBAL")
Global("Dayven", "GLOBAL", 8)~
THEN REPLY ~Has the information regarding Inspectors Brega and Dayven come in yet?~ GOTO Ren22no
IF ~GlobalTimerExpired("RenalCheckDayven", "GLOBAL")
Global("Dayven", "GLOBAL", 8)~
THEN REPLY ~Has the information regarding Inspectors Brega and Dayven come in yet?~ GOTO Ren22
IF ~OR(2) 
Global("Z#BaevrinPlot","GLOBAL",6) 
Global("Z#BaevrinPlot","GLOBAL",7)~ THEN REPLY ~Would you know anything about the whereabouts of a girl called Adylin?~ GOTO BvPlot8Dunno


CHAIN 
IF WEIGHT #-1 ~Global("RenalJob","GLOBAL",4)
Global("PlayerThiefGuild","GLOBAL",0)
Global("PGFailed","GLOBAL",0)
!Global("Chapter","GLOBAL",6)
InParty("Kova")
Global("KKJoin", "GLOBAL", 1)~ THEN RENAL KvNoGuild
~I thank you for your assistance, but I am done with you for now. Leave me to my work.~
END
IF ~~ THEN REPLY ~Very well, I will go.~ EXIT
IF ~InParty("Kova") 
Global("RenalJob", "GLOBAL", 4)
Global("GivenStuff", "LOCALS", 0)
Global("MaeVarExposed", "GLOBAL", 1)
OR(2)
	Global("LOAClue", "GLOBAL", 0)
	Global("AddRayic", "GLOBAL", 0)~ 
THEN REPLY ~I was just wondering if I could have the documents you got from Mae'Var's case, which could give us some clues as to a certain case we are handling.~ GOTO Ren1
IF ~Global("Dayven", "GLOBAL", 7)
Global("RenalJob", "GLOBAL", 4)
Global("MaeVarExposed", "GLOBAL", 1)~
THEN REPLY ~I'd like to know if you have any information on Inspectors Brega and Dayven, especially if they've any dealings with the Shadow Thieves.~ GOTO Ren2
IF ~!GlobalTimerExpired("RenalCheckDayven", "GLOBAL")
Global("Dayven", "GLOBAL", 8)~
THEN REPLY ~Has the information regarding Inspectors Brega and Dayven come in yet?~ GOTO Ren22no
IF ~GlobalTimerExpired("RenalCheckDayven", "GLOBAL")
Global("Dayven", "GLOBAL", 8)~
THEN REPLY ~Has the information regarding Inspectors Brega and Dayven come in yet?~ GOTO Ren22
IF ~OR(2) 
Global("Z#BaevrinPlot","GLOBAL",6) 
Global("Z#BaevrinPlot","GLOBAL",7)~ THEN REPLY ~Would you know anything about the whereabouts of a girl called Adylin?~ GOTO BvPlot8Dunno


CHAIN 
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
!Global("PGFailed","GLOBAL",1)
InParty("Kova")
Global("KKJoin", "GLOBAL", 1)~ THEN RENAL c6post
~I understand that the undead creature Bodhi is finally dead.  Good job, <CHARNAME>.  The Shadow Thieves will not forget you for this help you have given us.~
END
IF ~~ THEN REPLY ~Thank you. I'll be going now.~ EXIT
IF ~Global("KKJoin", "GLOBAL", 1) 
InParty("Kova") 
Global("RenalJob", "GLOBAL", 4)
Global("GivenStuff", "LOCALS", 0)
Global("MaeVarExposed", "GLOBAL", 1)
OR(2)
	Global("LOAClue", "GLOBAL", 0)
	Global("AddRayic", "GLOBAL", 0)~ 
THEN REPLY ~I was just wondering if I could have the documents you got from Mae'Var's case, which could give us some clues as to a certain case we are handling.~ GOTO Ren1
IF ~Global("Dayven", "GLOBAL", 7)
InParty("Kova") 
Global("RenalJob", "GLOBAL", 4)
Global("MaeVarExposed", "GLOBAL", 1)~
THEN REPLY ~I'd like to know if you have any information on Inspectors Brega and Dayven, especially if they've any dealings with the Shadow Thieves.~ GOTO Ren2
IF ~!GlobalTimerExpired("RenalCheckDayven", "GLOBAL")
Global("Dayven", "GLOBAL", 8)~
THEN REPLY ~Has the information regarding Inspectors Brega and Dayven come in yet?~ GOTO Ren22no
IF ~GlobalTimerExpired("RenalCheckDayven", "GLOBAL")
Global("Dayven", "GLOBAL", 8)~
THEN REPLY ~Has the information regarding Inspectors Brega and Dayven come in yet?~ GOTO Ren22
IF ~Global("z#gaelanc6", "GLOBAL", 2)~ 
THEN REPLY ~Gaelan gave me a note about you having something for me.~ GOTO rennote1ask
IF ~Global("z#gaelanc6", "GLOBAL", 3)~ 
THEN REPLY ~I've come regarding your earlier offer of information on Kova's case.~ GOTO rennote2
IF ~OR(2) 
Global("Z#BaevrinPlot","GLOBAL",6) 
Global("Z#BaevrinPlot","GLOBAL",7)~ THEN REPLY ~Would you know anything about the whereabouts of a girl called Adylin?~ GOTO BvPlot8Dunno


CHAIN
IF ~~ THEN RENAL BvPlot8Dunno
~You can ask Arledrian yourself, <CHARNAME>. I could procure the information for you, but it would probably involve paying him and charging you a higher price, so it is best if you do so.~
EXIT

APPEND ~RENAL~
	IF ~~ THEN BEGIN Ren1
	SAY ~Yes, I recall now - you're keeping company with that wanted fellow, aren't you? Not that it matters - I should be less willing to help, but I'm not keen to do a certain associate of mine too many favours.~
	= ~In any case, you did a good job for me back then, and these documents are pretty useless to me now, so you can have them. Future aid will not come so cheaply, though.~
	IF ~Global("LOAClue", "GLOBAL", 0) !Global("AddRayic", "GLOBAL", 0)~ THEN 
	DO ~GiveItemCreate("MISC4V",Player1, 0,0,0)
	SetGlobal("GivenStuff", "LOCALS", 1)~ EXIT

	IF ~!Global("LOAClue", "GLOBAL", 0) Global("AddRayic", "GLOBAL", 0)~ THEN 
	DO ~SetGlobal("AddRayic", "GLOBAL", 2)
	GiveItemCreate("RayNote",Player1, 0,0,0)
	SetGlobal("GivenStuff", "LOCALS", 1)~ EXIT

	IF ~Global("LOAClue", "GLOBAL", 0) Global("AddRayic", "GLOBAL", 0)~ THEN 
	DO ~SetGlobal("AddRayic", "GLOBAL", 2)
	GiveItemCreate("RayNote",Player1, 0,0,0)
	GiveItemCreate("MISC4V",Player1, 0,0,0)
	SetGlobal("GivenStuff", "LOCALS", 1)~ EXIT
	END
	
	IF ~~ THEN BEGIN Ren2
	SAY ~Well yes, I may be able to find something on either of them. We make it a point to know all the Inspectors pretty well. My men can be put on the matter, but it is still an inconvenience of sorts.~
	= ~A paltry remuneration of perhaps, 1000 gold, shouldn't be too much to expect.~
	IF ~PartyGoldGT(999)~ THEN REPLY ~I'll pay for the information.~ GOTO Ren21
	IF ~~ THEN REPLY ~I don't have that much money.~ GOTO Ren2no
	IF ~~ THEN REPLY ~That's an outrageous amount to charge for mere information.~ GOTO Ren2no
	END
	
	IF ~~ THEN BEGIN Ren2no
	SAY ~Say what you will, I know you will be able to afford my little fee. This is after all, the only avenue available to you. It's just a matter of time, before you get enough money. I have reason to believe I'll still be around when things are different with you.~
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN Ren21
	SAY ~Pleasure doing business with you. My men will be attending to the matter shortly, and you can come back after a day's time when they've delivered the information to me. Till then, I'll be attending to other matters.~
	IF ~~ THEN DO ~TakePartyGold(1000) 
	DestroyGold(1000)
	SetGlobal("Dayven","GLOBAL",8)
	SetGlobalTimer("RenalCheckDayven","GLOBAL",ONE_DAY)
	AddexperienceParty(9000)
	AddJournalEntry(@1007, QUEST)~ EXIT
	END
	
	IF ~~ THEN BEGIN Ren22no
	SAY ~I'm afraid not yet, but do be a bit more patient. My men are just men, they need time to do their work. I assure you, your gold has been well spent, and you will soon have the information you need.~
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN Ren22
	SAY ~Ah, and I was just wondering when you would come round to asking about that. As expected, our findings on Brega turned up nothing, but Dayven is a little different.~
	= ~I understand he was offered a clue on a case he was handling some time ago, however, his contact not only failed to ask him for a reward, but instead enriched him by some 500 gold. A decent treat, and I wouldn't be surprised if he took it more to get his case going along.~
	= ~The information brought to him involved the nature of some wounds on the victims in his case, that could only be wrought by a weapon known to belong to only one person. He was then directed to bring the matter to Brega's attention, if he wanted to find out who the culprit was.~
	= ~That should be all you need to know, along with a damning signature on this note, as proof of the transaction. Meantime, I'll be returning to my own business instead of yours.~
	IF ~~ THEN DO ~SetGlobal("Dayven","GLOBAL",9)
	GiveItemCreate("DayRec",Player1,0,0,0)
	AddJournalEntry(@1008, QUEST)~ EXIT
	END	
END

// Jermien Extension

EXTEND_BOTTOM ~JUGJER01~ 33
IF ~GlobalGT("AddRayic","GLOBAL", 1) 
InParty("Kiyone") InMyArea("Kiyone")~ THEN 
DO ~EraseJournalEntry(2052) AddexperienceParty(21250)~ EXTERN Z#KIYOJ JermClue1
END

APPEND ~JUGJER01~ 
	IF WEIGHT #-1 ~Global("AddRayic","GLOBAL", 1)
	Global("KiyoSpawnJerm","AR1103", 1)
	Global("ColetteLeave","GLOBAL",1)
	GlobalGT("JuggernautAlive","GLOBAL",1)
	Dead("Juggernaut")
	Global("JermClue","GLOBAL", 0)~ THEN BEGIN NewHi
	SAY ~Welcome again. I didn't think I'd be so glad to see Colette wedded, but the Gods have been kind to me. Now that Colette's all settled down, I think it's time for me to move out of her life.~
	= ~If there's nothing else you would have of me, I'll return to my packing.~
	IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ JermClue1
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN Bye
	SAY ~Well, I had best be making my way out. Better earlier than late.~
	IF ~~ THEN DO ~EscapeArea()~ EXIT
	END
END

// Bodhi Interjection on Offer

EXTEND_BOTTOM ~Bodhi~ 1 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ BodhiKiyo1
END

INTERJECT_COPY_TRANS ~Bodhi~ 11 BodhiKiyo2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") !InParty("Kova") InMyArea("Kova")~
~I have heard enough, and will not have anything to do with this creature, <CHARNAME>. I'd advise you the same.~
== BODHI IF ~InParty("Kiyone") InMyArea("Kiyone") !InParty("Kova") InMyArea("Kova")~
~And I do not appreciate your interruption, girl. Consider her words if you must, <CHARNAME>, and indeed it amuses that one as of the law as her would not agree with the annihilation of the Shadow Thieves.~
END

INTERJECT_COPY_TRANS ~Bodhi~ 11 BodhiKova
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I do not trust this lady, however she chooses to present herself.~
== BODHI IF ~InParty("Kova") InMyArea("Kova")~ THEN
~And who are you to speak so? Kova, aren't you, the one who everyone wants dead? I for one don't see a need to concern those I deal with about such unpleasantries as the law and such. You have nothing to fear from me.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Even if I desired to crush those who would kill me, I do not want any part in this, and would rather risk death than see such come to pass. If that means I have to take my leave of you <CHARNAME>, I will.~
== BODHI IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Is that so? Then I am amazed at how long you have stayed alive - with that kind of attitude I doubt anyone could have remained upright for so long.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Regardless, we will have no part in this, whether or not <CHARNAME> makes a decision to follow you. I recognise you for what you are, vampire.~
== BODHI IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~My my, how astute. If you wanted what was good for your friend here, you would see the best way is for him to join me. Still I suppose that might be expected of one who is only minded for getting ahead in her career.~
== BODHI IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Enough of this chatter, my business is with you, <CHARNAME>. Regardless of other details, my offer stands as such, and holds true. Join me and together we will see that the lawless ways of the Shadow Thieves are crushed beneath your heel.~
END

INTERJECT_COPY_TRANS ~Bodhi~ 18 JoinedBodhi
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~I cannot accept your decision to join with this creature, <CHARNAME>. As such I must take my leave you. I hope it will not be long before you see the truth of the matter and turn your hand against this foul thing.~
DO ~DropInventory() LeaveParty() EscapeArea()~
== Z#KIYOJ IF ~InParty("Kova")~ THEN
~This decision of yours can only be for worse. Much as it would benefit me to crush the Shadow Thieves, I am of one accord with Kiyone on this matter. I thank you for your kindness, and may things go well with you.~
DO ~DropInventory() LeaveParty() EscapeArea()~
END 

// Aran Extension

EXTEND_BOTTOM ~ARAN~ 0
IF ~InParty("Kova") InMyArea("Kova")~ THEN GOTO Aran1
END

APPEND ~ARAN~
	IF ~~ THEN BEGIN Aran1
	SAY ~And this must be Kova. One of many we would do in, yet unlike many, we have not been able to, just yet. That's some fine company you've been keeping.~
	IF ~~ THEN EXTERN Z#KOVAJ Aran2
	END
	
	IF ~~ THEN BEGIN Aran3
	SAY ~Well, it seems to have paid off for you. I'll be letting you go on your merry way for the time being, to assist <CHARNAME> here. Consider this a respite rather than a permanent arrangement. The price on your head remains.~
	= ~In any case, <CHARNAME>, there are some matters that need attending to before the way is clear for us to see you to where you need to go.~ 
	IF ~~ THEN REPLY ~I see. What would you have of me?~ GOTO 1
	IF ~~ THEN REPLY ~I have paid out a huge amount of gold; tell me how I can find Imoen.~ GOTO 1
	IF ~~ THEN REPLY ~I don't care.  I want the directions to Irenicus that I paid for!~ GOTO 1
	END
	
END

// Gaelan Extension

EXTEND_BOTTOM ~GAELAN~ 39
IF ~~ THEN GOTO GoGetKova
END

APPEND ~GAELAN~
	IF ~~ THEN BEGIN GoGetKova
	SAY ~There be also a certain someone we be looking for, Kova by name. Bring him to me, dead or alive, and we be giving ye a nice 9,000 gold for your trouble. Would go a long way to helping ye, I'm sure.~ 
	IF ~~ THEN GOTO 70
	END
END

BEGIN SEEKOVA

	IF ~InParty("Kova") 
	Global("WorkingForAran","GLOBAL",0)
	Global("Linvail","GLOBAL",0)
	Global("BodhiJob","GLOBAL",0)
	Global("TIGael", "GLOBAL", 0)
	Global("GaelanAsk", "AR0311", 0)~ THEN BEGIN Gael1
	SAY ~Well if ye ain't a saint to have brought him to us. Most kindly of ye, I can be taking care of things from here.~
	IF ~PartyGoldGT(14999)~ THEN REPLY ~I am not about to surrender my friend to you, and I came with money enough for you. Take the gold and leave him be.~ GOTO Gael2
	IF ~~ THEN REPLY ~Sure, take him off my hands. Make sure you remember my 9,000 gold.~ GOTO TISh1
	END
	
	IF ~~ THEN BEGIN Gael2
	SAY ~Aye, ye be looking fine money-wise. Change of heart from my masters, 15,000 gold be enough. Still, `tis a sore sight for us to see Kova walking out of here all in one piece, would surely cross my masters. Ye be putting me in quite a spot, my friend.~
	IF ~Global("BodhiAppear", "GLOBAL", 3)~ THEN EXTERN Z#KIYOJ Gael3
	IF ~!Global("BodhiAppear", "GLOBAL", 3)~ THEN GOTO Gael3Ext
	END
	
	IF ~~ THEN BEGIN Gael3Ext
	SAY ~Now before I be thinking hard on what to do, ye sure ye be throwing away ye 9,000 gold, <CHARNAME>? 'Tis a generous sum to pass up.~
	IF ~~ THEN REPLY ~I will not hand him over to you or your masters, Gaelan. I have the gold, as promised, now give me what is due to me.~ GOTO Gael5
	IF ~~ THEN REPLY ~Upon reconsidering, I think the gold is too fine to pass up. Feel free to do as you will.~ GOTO TISh1
	END

	IF ~~ THEN BEGIN Gael4
	SAY ~I be hearing this some from me sources, thought they be having problems with their ears, least till ye spoke such. Would be sitting much finer with my masters, but maybe not. Now before I be thinking on what to do, ye sure ye be throwing away ye 9,000 gold, <CHARNAME>? 'Tis a generous sum to pass up.~
	IF ~~ THEN REPLY ~I will not hand him over to you or your masters, Gaelan. I have the gold, as promised, now give me what is due to me.~ GOTO Gael5
	IF ~~ THEN REPLY ~Upon reconsidering, I think the gold is too fine to pass up. Feel free to do as you will.~ GOTO TISh1
	END
	
	IF ~~ THEN BEGIN Gael5
	SAY ~A bleedin' shame, not to see nothing of that gold. Anyway, since ye be saying so, I be going over to see what me masters be saying. Won't be a minute.~
	IF ~~ THEN DO ~SetCutSceneLite(TRUE)
	SetGlobal("GaelanAsk", "AR0311", 1)
	EscapeAreaDestroy(7)~ EXIT
	END
	
	IF ~InParty("Kova") 
	Global("WorkingForAran","GLOBAL",0)
	Global("Linvail","GLOBAL",0)
	Global("BodhiJob","GLOBAL",0)
	Global("TIGael", "GLOBAL", 0)
	Global("GaelanAsk", "AR0311", 1)~ THEN BEGIN Gael6
	SAY ~Well I've been told to take ye all over. Ye just be handing over that gold, and now I be providing safe escort down. Hope ye be keeping up alright. Here be the key first if ye be going back there later on ye own.~
	IF ~~ THEN DO ~SetCutSceneLite(FALSE)
	SetGlobal("GaelanAsk", "AR0311", 3)
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
	SetGlobal("FindingKova", "GLOBAL", 10)
	GiveItem("MISC4S",[PC])
	JumpToPoint([470.335])
	Face(0)
	SetDialogue("GAELAN")~ EXIT
	END
	
	IF ~~ THEN BEGIN TISh1
	SAY ~Heh, with pleasure.~
	IF ~~ THEN DO ~SetGlobal("TIGael", "GLOBAL", 1)~ EXTERN Z#KOVAJ TISh2
	END
	
	IF ~~ THEN BEGIN TISh4
	SAY ~Well... I be keeping an eye out for that wench. Meantime I thank ye for ye help, on behalf of me masters. Here be 9,000 gold to help ye along, as promised. `Tis a good amount to please any man, aye.~
	IF ~~ THEN DO ~GiveGoldForce(9000) ActionOverride("Kova", LeaveParty() )
	SetDialogue("GAELAN")~ EXIT
	END

// Bylanna Extension

INTERJECT_COPY_TRANS ~BYLANNA~ 5 KiyoGreet
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin", "GLOBAL", 0)~ THEN
~Greetings, Magistrate Bylanna.~
== BYLANNA IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin", "GLOBAL", 0)~ THEN
~I see you have found a group to assist you with your case, Kiyone. I trust all is well?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin", "GLOBAL", 0)~ THEN
~We are making good progress, Magistrate.~
== BYLANNA IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKJoin", "GLOBAL", 0)~ THEN
~That is encouraging news, something we've been lacking of late. Well, my friends, is there anything I can help you with?~
END

EXTEND_BOTTOM ~BYLANNA~ 5 
IF ~InParty("Kiyone")
Global("KKJoin", "GLOBAL", 1)
GlobalGT("BylTalk", "GLOBAL", 1)~ THEN
REPLY ~I would like to know about Kova's case and the evidence gathered so far on the matter.~ GOTO CaseReview 
IF ~InParty("Kiyone") InParty("Kova")
Global("KKJoin","GLOBAL",1)
Global("MetKharen", "GLOBAL", 3)
Global("LOAClue", "GLOBAL", 3)
Global("JermClue", "GLOBAL", 3)
Global("DayvClue", "GLOBAL", 3)~ THEN 
REPLY ~In the light of all the evidence gathered so far, we feel ready to have Kova stand trial.~ GOTO 
Z#TalkB4Trial
END

CHAIN
IF ~~ THEN BYLANNA CaseReview
~Let's see what evidence we have gathered so far.~
== BYLANNA IF ~Global("LOAClue", "GLOBAL", 3)~ THEN
~The letter of authority within the Shadow Thieves certainly shows his act was the will of the organisation, and makes me wonder why the Shadow Thieves wish him dead as well. Still, it does not show that he did not do it.~
== BYLANNA IF ~Global("JermClue", "GLOBAL", 3) !Global("MetKharen", "GLOBAL", 3)~ THEN
~This signed note by Jermien is most interesting. However senior Corneil has reported that Jermien is missing, thus suspects foul play on your part. In any case, we will have to find out who this white-haired girl is before drawing final conclusions to get him to drop charges.~
== BYLANNA IF ~Global("DayvClue", "GLOBAL", 3)~ THEN
~The inspector's report on the review of the case concurs with your notes, and while the case's conclusions are still the same, that the Shadow Thieves are openly interfering to aid justice does hint of some machinations on their part.~
== BYLANNA IF ~!Global("JermClue", "GLOBAL", 3) Global("MetKharen", "GLOBAL", 3)~ THEN
~Regarding your report on the encounter at Spellhold, it has stirred my suspicions on the forces behind all this, but there is little we can do, for senior Corneil has affirmed that they were under his orders and will not drop the charges.~
== BYLANNA IF ~Global("JermClue", "GLOBAL", 3) Global("MetKharen", "GLOBAL", 3)~ THEN
~The encounter you had at Spellhold is doubly worrying with the possibility that this Kharen is both the murderer of Enforcers and a Shadow Thief agent, but there is little we can do, for senior Corneil has affirmed that they were under his orders and will not drop the charges.~
== BYLANNA 
IF ~Global("LOAClue", "GLOBAL", 3)
Global("JermClue", "GLOBAL", 3)
Global("DayvClue", "GLOBAL", 3)~ THEN
~While we do not have evidence enough yet to acquit the accused of any of the charges, one thing is certain - there is a plot about him that seeks to remove him, but for what reasons, we do not know, and the stakes could be higher than is apparent.~
== BYLANNA 
IF ~OR(3)
Global("LOAClue", "GLOBAL", 3)
Global("JermClue", "GLOBAL", 3)
Global("DayvClue", "GLOBAL", 3)~ THEN
~It appears that there is more than meets the eye on this matter, but it is not enough to acquit him of even a single one of the charges set against him.~
== BYLANNA 
IF ~!Global("LOAClue", "GLOBAL", 3)
!Global("JermClue", "GLOBAL", 3)
!Global("DayvClue", "GLOBAL", 3)~ THEN
~Nothing so far, has been brought to our attention that would make it seem that he is anything less than guilty as accused.~
== BYLANNA IF ~OR(3)
!Global("LOAClue", "GLOBAL", 3)
!Global("JermClue", "GLOBAL", 3)
!Global("DayvClue", "GLOBAL", 3)~ THEN
~Meantime, is there any new evidence you would wish to submit?~
== Z#KIYOJ
IF ~OR(7)
Global("JermClue", "GLOBAL", 1)
Global("JermClue", "GLOBAL", 2)
Global("DayvClue", "GLOBAL", 1)
Global("LOAClue", "GLOBAL", 1)
Global("LOAClue", "GLOBAL", 2)
Global("AddRayic", "GLOBAL", 2)
PartyHasItem("CornRep")~ THEN 
~We do have some material on hand, <CHARNAME>. Which of them would you wish me to present?~
END
IF ~GlobalGT("JermClue", "GLOBAL", 0)
!Global("JermClue", "GLOBAL", 3)~ THEN 
REPLY ~Let us tell her about the information we got from Jermien about the Cowled Wizard murders.~ EXTERN Z#KIYOJ bylevidjerm
IF ~GlobalGT("DayvClue", "GLOBAL", 0)
!Global("DayvClue", "GLOBAL", 3)~ THEN 
REPLY ~Let's give her the results of the review on the murder of the nobles.~ EXTERN Z#KIYOJ byleviddayv
IF ~GlobalGT("LOAClue", "GLOBAL", 0)
// PartyHasItem("MaeLOA")
!Global("LOAClue", "GLOBAL", 3)~ THEN 
REPLY ~Let us hand her a copy of the letter of authority from the Shadow Thieves regarding the poisoning of the village.~ EXTERN Z#KIYOJ bylevidloa
IF ~Global("JermClue", "GLOBAL", 0)
// PartyHasItem("RayNote")
Global("AddRayic", "GLOBAL", 2)~ THEN
REPLY ~It might not be much, but we can give a copy of the note written by Rayic.~ EXTERN Z#KIYOJ bylevidraynote
IF ~PartyHasItem("CornRep")~ THEN
REPLY ~It is scant evidence, but we can give her the reports from Corneil on the matter.~ EXTERN Z#KIYOJ bylevidcornrep
IF ~Global("GovtGuards", "GLOBAL", 2)
OR(7)
Global("JermClue", "GLOBAL", 1)
Global("JermClue", "GLOBAL", 2)
Global("DayvClue", "GLOBAL", 1)
Global("LOAClue", "GLOBAL", 1)
Global("LOAClue", "GLOBAL", 2)
Global("AddRayic", "GLOBAL", 2)
PartyHasItem("CornRep")~ THEN 
REPLY ~We would prefer to wait till we have gathered more information first, especially since we still have time enough to spare.~ EXTERN BYLANNA bylevidno
IF ~GlobalGT("MetKharen", "GLOBAL", 0)
!Global("MetKharen", "GLOBAL", 3)~ THEN
REPLY ~We should tell her about the encounter we had at Spellhold.~ EXTERN Z#KIYOJ bylevidmetkharen
IF ~!Global("JermClue", "GLOBAL", 1)
!Global("JermClue", "GLOBAL", 2)
!Global("MetKharen", "GLOBAL", 1)
!Global("MetKharen", "GLOBAL", 2)
!Global("DayvClue", "GLOBAL", 1)
!Global("LOAClue", "GLOBAL", 1)
!Global("LOAClue", "GLOBAL", 2)
!Global("AddRayic", "GLOBAL", 2)
!PartyHasItem("CornRep")~ THEN EXTERN Z#KIYOJ bylevidnone
IF ~Global("LOAClue", "GLOBAL", 3)
Global("JermClue", "GLOBAL", 3)
Global("DayvClue", "GLOBAL", 3)
OR(2)
Global("MetKharen", "GLOBAL", 0)
Global("MetKharen", "GLOBAL", 3)~ THEN GOTO bylevidenough

CHAIN
IF ~~ THEN Z#KIYOJ bylevidmetkharen
~Here are a few reports about an encounter we had, Lady Bylanna, while we were leaving Spellhold. There we met a group of Cowled Wizards, led by a woman called Kharen, who was seeking to apprehend Kova.~ 
= ~This person clearly has a personal motivation for seeking Kova's demise, and we believe her to have some connection with the Shadow Thieves, as we shortly encountered some Shadow thieves after the encounter with her.~
== Z#KIYOJ IF ~GlobalGT("JermClue", "GLOBAL", 0) Global("CornTalk", "GLOBAL", 3)~ THEN
~What is more disturbing is that we believe this person to be the same one who murdered the Cowled Enforcers and, by being appointed to investigate the murders, conveniently set him up for the murders.~
== Z#KIYOJ IF ~GlobalGT("JermClue", "GLOBAL", 0) !Global("CornTalk", "GLOBAL", 3)~ THEN
~What is more disturbing is that we believe this person to be the same one who murdered the Cowled Enforcers, and somehow managed to set Kova up for the murders.~
== BYLANNA
~I see. And this Kharen, if I read right, is an influential member among the Cowled Wizards. If she is indeed some agent of the Shadow Thieves, then it is doubly important that this matter comes to senior Corneil's attention.~
== CORNEIL
~Don't trouble yourself, Bylanna. I have been expecting this development and it means nothing to me,  nor should it mean anything to you.~
= ~When we learnt Kova and his accomplices had penetrated Spellhold, I personally commissioned overseer Kharen to apprehend all of them, by force.~
= ~She was the one who insisted on negotiations and offering the reward, but I see that has only brought death to her companions, and instead of being grateful you now try to accuse her of being a Shadow Thief spy.~
= ~Do not think you will get away with this, <CHARNAME>. The Cowled Wizards will not suffer your impudence forever.~
== BYLANNA
~Such a response must certainly be galling for you, Kiyone, and I doubt the charges against your friend for the murders of the enforcers will ever be willingly dropped by Corneil.~
== Z#KIYOJ
~Yes, it does seem that way.~
== BYLANNA
~Still, I will take note of this, and keep Inspector Brega appraised of the developments.~
== BYLANNA 
IF ~Global("LOAClue", "GLOBAL", 3)
Global("JermClue", "GLOBAL", 3)
Global("DayvClue", "GLOBAL", 3)~ THEN
~In the light of the previous evidence that you have submitted to us, he might be persuaded to give you access to his witness regarding the village murders, though it might take some time to fully convince him.~
== Z#KIYOJ
~Thank you, my lady Bylanna. I am most grateful~
== BYLANNA
~You are welcome. Good luck, Kiyone.~
DO ~SetGlobal("MetKharen", "GLOBAL", 3)
AddexperienceParty(12000)
SetGlobalTimer("KKGovtT","GLOBAL",50400)~ EXIT

CHAIN
IF ~~ THEN BYLANNA bylevidenough
~Still, we now have strong reason to believe that he is, by and large, innocent of the charges for which he is wanted. You also have more than proved your resourcefulness and dedication to your work, Kiyone.~
== Z#KIYOJ
~ Thank you, lady Bylanna.~
== BYLANNA 
~You deserve it for your commendable work, along with all your companions for bringing such information to light.~
= ~As such, I've decided to grant you free reign for the remainder of your investigation, and I trust in good faith that you will eventually return the accused to stand trial once your work is concluded.~
== Z#KIYOJ
~I will not fail you.~
== BYLANNA
~That is good to know, Kiyone. I wish you well in your investigation ahead. If the accused is to be acquitted fairly, there is still some way to go.~
DO ~SetGlobal("GovtGuards", "GLOBAL", 4)
RealSetGlobalTimer("Z#enoughT", "GLOBAL", 15)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidnone
~I'm afraid I don't have any new material to present to you for now.~
== BYLANNA IF ~Global("GovtGuards", "GLOBAL", 2)~ THEN
~Very well. I wish you all the best in your investigations, Kiyone.~
== BYLANNA IF ~Global("GovtGuards", "GLOBAL", 1)~ THEN
~That's a fair statement, but you must understand I cannot allow an openly known criminal to wander freely about the city for so long without something to show for it.~
== BYLANNA IF ~Global("GovtGuards", "GLOBAL", 1)~ THEN
~If you wish to, you can always approach me again with more information. Till then, the guardsmen and the knights will be on the look out for you. No hard feelings, I hope.~
== Z#KIYOJ IF ~Global("GovtGuards", "GLOBAL", 1)~ THEN
~I see... if that's the way things are done here in Athkatla, then I have no choice in the matter.~
EXIT

CHAIN
IF ~~ THEN BYLANNA bylevidno
~If that is your wish, I have no problems with it.~
== BYLANNA IF ~Global("GovtGuards", "GLOBAL", 2)~ THEN
~Very well. I wish you all the best in your investigations, Kiyone.~
EXIT

CHAIN 
IF ~~ THEN Z#KIYOJ bylevidjerm
~In the course of our investigations we have obtained a signed and written note from a Cowled Wizard, vouching for an eyewitness of the murders of his fellow enforcers. The description given hardly matches that of the accused.~
= ~Here it is, along with the relevant reports I've prepared. I trust they will be of significance in this case.~
== BYLANNA
~That's a very interesting piece of information, Kiyone. Good work, and I will ponder over it before handing it to senior Corneil for his views and actions.~
= ~I hope he will consider it proof enough to drop charges, but I suspect otherwise, and indeed I would also know who was the murderer. I hope the case goes well with you, and you find more information to support your stand.~ 
DO ~SetGlobal("JermClue", "GLOBAL", 3)
TakePartyItem("JerSig")
DestroyItem("JerSig")
SetGlobalTimer("KKGovtT","GLOBAL",50400)
SetGlobal("GovtGuards", "GLOBAL", 2)~ EXIT

CHAIN 
IF ~~ THEN Z#KIYOJ byleviddayv
~My lady, you should already have received the information from the Inspector, regarding the review of the murders of the nobles, but here are my own reports on the matter as well, for you to compare them.~
== BYLANNA
~Thank you, Kiyone. It was a very disturbing report, and I cannot accept that the Shadow Thieves would hasten the course of justice without having some motivation of their own.~
= ~While externally, no conclusions of the case have changed, this is certainly something to bear in mind when considering the nature behind of the charges, and it could well be that the accused has been framed in this matter.~
= ~Meantime I wish you well, and hope the rest of the investigation proves fruitful.~
DO ~SetGlobal("DayvClue", "GLOBAL", 3) 
SetGlobalTimer("KKGovtT","GLOBAL",50400)
SetGlobal("GovtGuards", "GLOBAL", 2)~ EXIT

CHAIN 
IF ~~ THEN Z#KIYOJ bylevidloa
~My lady, we have come across a Letter of Authority from within the Thieves' Guild, authorising the poisoning of the village. A noteworthy piece, given that the Shadow Thieves supposedly want the accused dead as well.~
= ~Here it is, along with the relevant reports I've prepared, for your evaluation.~
== BYLANNA
~This is an unexpected and troubling letter, bringing into question how many more citizens might be lost if the Shadow Thieves remain in power, and highlighting the gravity of the matter. If only we had the power to remove them...~
= ~I dare not asked how you came to have this, nor I think, would it be wise for me to know. Suffice to say, this is a testimony to the high recommendations with which you came with, and I am most grateful for this piece of work.~
= ~While it does not indicate that this Kova person is innocent, it does bring to question why the Shadow Thieves would wish him dead, if he were one of their operatives. There are many unanswered questions here.~
= ~I wish you well, and hope the rest of the investigation sheds more light on such matters. There could be more at stake than is apparent.~
DO ~SetGlobal("LOAClue", "GLOBAL", 3) 
TakePartyItem("MaeLOA")
DestroyItem("MaeLOA")
SetGlobalTimer("KKGovtT","GLOBAL",50400)
SetGlobal("GovtGuards", "GLOBAL", 2)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidcornrep
~I wouldn't consider this evidence enough for your direct consideration, Magistrate, but I have been instructed to hand them to you all the same.~
= ~Here are some reports from among the Cowled Wizards, and we have good reason to suspect their chief investigator might have something to do with the Shadow Thieves, though we have no proof just yet. Here's some brief notes I have written on the matter, perhaps they might prove useful.~
== BYLANNA
~This is hardly enough to stand by for any amount of time, and I only have your verbal word for it.~
= ~Still, if you can do no better, I suppose I can sit on the matter for time, if only for a while. Indeed, I had expected more of you than just this.~
== Z#KIYOJ
~I apologise, my lady, but I do only as I have been instructed. I'm sure we'll be able to place more concrete evidence in your hands soon.~
== BYLANNA
~I hope so too, Kiyone. For all your sakes.~
DO ~TakePartyItem("CornRep")
DestroyItem("CornRep")
SetGlobalTimer("KKGovtT","GLOBAL",10800)
SetGlobal("GovtGuards", "GLOBAL", 2)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ bylevidraynote
~We have here a penned note, written by a Cowled Wizard named Rayic Gethras, who has since been murdered through the machinations of the Shadow Thieves. While it is only a conjecture in here, it seems to imply Kova is innocent of murdering the wizards.~
= ~I hope that we can be given more time to follow up on the clue and locate the person who it refers to as having knowledge of the actual outcome of the case.~
== BYLANNA
~This is certainly of interest, and though it barely enough to be considered evidence on its own, it promises to supply more concrete evidence, something that I have no doubt you will be able to obtain soon.~
= ~I hope that you can give it to Myroven when you do come across it, and I'll be sending her after you relatively shortly, but given your reputation, it will likely be more than enough time for you to obtain the information.~
== Z#KIYOJ
~Thank you, my lady. I will see to it that the information is ready by then.~
DO ~SetGlobal("AddRayic", "GLOBAL", 3) 
SetGlobalTimer("KKGovtT","GLOBAL",25200)
SetGlobal("GovtGuards", "GLOBAL", 2)~ EXIT


// Brega Extension

EXTEND_BOTTOM ~HABREGA~ 0
IF ~Global("KKJoin", "GLOBAL", 1) InParty("Kiyone") InParty("Kova")~ 
THEN REPLY ~I'd like to ask you about the evidence for each of the charges levelled against Kova Kashiro.~ GOTO C1
IF ~Global("KKJoin", "GLOBAL", 1) !Global("BregaTalk", "GLOBAL", 0) InParty("Kiyone") InParty("Kova")~ 
THEN REPLY ~I think you're right, harbouring this criminal is unwise. He's here actually, so I have to keep my voice down. You know what to do.~ GOTO TIGovt1
IF ~Global("KKJoin", "GLOBAL", 1) 
OR(3)
Global("Dayven", "GLOBAL", 9)
Global("Dayven", "GLOBAL", 10)
Global("Dayven", "GLOBAL", 11)
PartyHasItem("DayRec")~
THEN REPLY ~I thought you may be interested in knowing, that Inspector Dayven took a bribe from the Shadow Thieves while handling the case regarding the murders of the Nobles.~ GOTO DayvIn
IF ~Global("KKJoin", "GLOBAL", 1) 
Global("Dayven", "GLOBAL", 14)~
THEN REPLY ~Have you reviewed the case yet, Inspector?~ GOTO Review
IF ~GlobalGT("Z#BaevrinPlot","GLOBAL",2)
GlobalLT("Z#BaevrinPlot","GLOBAL",11)~ 
THEN REPLY ~I've come to ask you about the witness.~ GOTO bregacanseebaev
IF ~Global("Z#BaevrinPlot","GLOBAL",13) InParty("Kiyone")~ THEN REPLY ~There have been some new developments about Baevrin and the statement he made previously.~ EXTERN HABREGA BvPlot13
IF ~Global("Z#BaevrinPlot","GLOBAL",14) InParty("Kiyone")~ THEN REPLY ~There have been some new developments about Baevrin and the statement he made previously.~ EXTERN HABREGA BvPlot14
IF ~Global("KKJoin", "GLOBAL", 0) 
Dead("Kiyone")
Dead("Kova")
Global("FindingKova", "GLOBAL", 113)
PartyHasItem("KvDieDag")~
THEN REPLY ~I have come to claim the reward for killing the criminal Kova Kashiro. Here is his weapon as proof of the deed.~ GOTO GetReward
END 

CHAIN
IF ~~ THEN HABREGA bregacanseebaev
~Well, did you do something about the clearance I gave for you to see him? What did the boy have to say?~
END
IF ~Global("Z#BaevrinPlot","GLOBAL",3)~ THEN EXTERN Z#KIYOJ breganotseebaev
IF ~!Global("Z#BaevrinPlot","GLOBAL",3)
GlobalLT("Z#BaevrinPlot","GLOBAL",11)~ THEN EXTERN Z#KIYOJ breganotsaveadyl

CHAIN
IF ~~ THEN Z#KIYOJ breganotseebaev
~We haven't been there to see him yet, Inspector. I just wanted to verify that the arrangement was in accordance with your wishes.~
== HABREGA ~Don't worry, Kiyone. It is.~
== Z#KIYOJ ~Anything we need to look out for in particular?~
== HABREGA ~Just try to keep his location a secret and make sure no others follow after your party. Some people are still looking for him, I suspect, though I'm not sure for what.~
== Z#KIYOJ ~I'll keep a look out for that, Chief Inspector. Meantime, we'll be going.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOJ breganotsaveadyl
~We did, but we weren't able to uncover more clues from him.~
== HABREGA ~That's all right. I tried that, as well, but there was only so much to go on with, Kiyone. I hope the rest of your investigation turns out well.~
== Z#KIYOJ ~Thank you, Chief Inspector.~
EXIT


APPEND ~HABREGA~

	IF ~~ THEN BEGIN GetReward
	SAY ~Yes, I see that is indeed the case. Here is your reward, I am sure it is well deserved for ridding the realms of so dangerous a cretin.~
	= ~Thank you, citizen <CHARNAME>. You do not know the good that you have done.~
	IF ~~ THEN DO ~	SetGlobal("FindingKova", "GLOBAL", 114)
	TakePartyItemNum("KvDieDag",1)   DestroyItem("KvDieDag")
	GiveGoldForce(7000) 
	ReputationInc(1)
	EraseJournalEntry(@1001)
	EraseJournalEntry(@1002)
	EraseJournalEntry(@1051)
	AddJournalEntry(@1052, QUEST_DONE)
	~ EXIT
	END

	IF ~~ THEN BEGIN C1
	SAY ~Since you have Kiyone with you, I suppose you must be assisting her in her case. Very well, these are the charges and the evidence for each.~
	= ~The first charge involves the poisoning of Shanro, a village, a despicable act that claimed the lives of nearly a hundred people. At the source of the wells we found some bodies of Shadow Thieves, bearing special blade marks that seems to be a cross between a dagger and a wakizashi.~
	= ~We learned of the Shadow Thieves' interest in the name Kova at about the same time, and, with some additional information, it was not difficult to put two and two together. Our sources provided some information on the weapon he wielded, and such matched the wounds on the bodies.~ 
	= ~On top of that, the description of the man that the Shadow Thieves were seeking also matched the description given by an eyewitness who saw the battle among the Shadow Thieves. Apparently the poisoner had been one of them. ~
	= ~Some time later, in this very district, there was a short spate of ransoms. Despite the fee having been paid by their family, each noble turned up dead.~ 
	= ~It was only after Inspector Dayven investigated the matter that he brought to my attention the mortal wounds on the bodies. These matched with those we found on the bodies of the Shadow Thieves.~ 
	= ~The final charge is one raised by the Cowled Wizards, whose matters we do not investigate directly. Members Corneil and Tolgerias probably would know the details, but I doubt you'd get anything from them.~
	= ~Those are the charges and the supporting evidence presented.~
	IF ~Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ 	DO ~SetGlobal("BregaTalk", "GLOBAL", 1)~ GOTO C2
	IF ~Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Even if all the charges were true, the price on his head still seems remarkably high.~ 	DO ~SetGlobal("BregaTalk", "GLOBAL", 1)~ GOTO C3
	IF ~Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Do you know where I may find Inspector Dayven? I have some questions I would like to ask him.~ 	DO ~SetGlobal("BregaTalk", "GLOBAL", 1)~ GOTO C4
	IF ~Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Is there a way for me to locate the eyewitness for the poisoning of the well?~	DO ~SetGlobal("BregaTalk", "GLOBAL", 1)~ GOTO C5
	IF ~!Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ 	GOTO C2
	IF ~!Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Even if all the charges were true, the price on his head still seems remarkably high.~ 	GOTO C3
	IF ~!Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Do you know where I may find Inspector Dayven? I have some questions I would like to ask him.~ 	GOTO C4
	IF ~!Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Is there a way for me to locate the eyewitness for the poisoning of the well?~	GOTO C5
	IF ~Global("Dayven", "GLOBAL", 5)~ THEN REPLY ~I was just wondering, how did you come to link the murders of the nobles with the weapon known to be used by Kova?~ DO ~SetGlobal("Dayven", "GLOBAL", 6)~ GOTO C7
	IF ~Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ 	DO ~SetGlobal("BregaTalk", "GLOBAL", 1)~ GOTO C6
	IF ~!Global("BregaTalk", "GLOBAL", 0)~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ 	GOTO C6
	END

	IF ~~ THEN BEGIN C2
	SAY ~You say that only because you are one who is unschooled in such matters. Men have been punished for crimes on less concrete evidence than this. In the eyes of the court, the evidence for the first two charges is almost overwhelming.~
	IF ~~ THEN REPLY ~Even if all the charges were true, the price of 7,000 gold on his head still seems remarkably high.~ GOTO C3
	IF ~~ THEN REPLY ~Do you know where I may find Inspector Dayven? I have some questions I would like to ask him.~ GOTO C4
	IF ~~ THEN REPLY ~Is there a way for me to locate the eyewitness for the poisoning of the well?~ GOTO C5
	IF ~Global("Dayven", "GLOBAL", 5)~ THEN REPLY ~I was just wondering, how did you come to link the murders of the nobles with the weapon known to be used by Kova?~ DO ~SetGlobal("Dayven", "GLOBAL", 6)~ GOTO C7
	IF ~~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ GOTO C6
	END

	IF ~~ THEN BEGIN C3
	SAY ~An astute observation, but it is a separate issue from the matter of his guilt. Both the Shadow Thieves and the Cowled Wizards want him dead, and the Council has decided that settling this matter will be beneficial for us.~
	= ~While I understand the benefits involve filling our coffers, improving relations and possibly having agreeable future developments, I am not particularly keen on doing the dirty work for the Shadow Thieves, but I have my orders.~ 
	IF ~~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ GOTO C2
	IF ~~ THEN REPLY ~Do you know where I may find Inspector Dayven? I have some questions I would like to ask him.~ GOTO C4
	IF ~~ THEN REPLY ~I would like to speak to the eyewitness who saw the battle at the poisoning of the village. Where can I find him?~ GOTO C5
	IF ~Global("Dayven", "GLOBAL", 5)~ THEN REPLY ~I was just wondering, how did you come to link the murders of the nobles with the weapon known to be used by Kova?~ DO ~SetGlobal("Dayven", "GLOBAL", 6)~ GOTO C7
	IF ~~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ GOTO C6
	END

	IF ~~ THEN BEGIN C4
	SAY ~Inspector Dayven usually moves about town, but lately he has been to the Prison more frequently. It seems that for some reason he has gained a preference for that place, and I've been told he's been talking to the Prison Keeper about how much easier it is to simply tend to the prisoners.~
	IF ~Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ 
	UNSOLVED_JOURNAL @1005	DO ~SetGlobal("Dayven", "GLOBAL", 1)~ GOTO C2
	IF ~Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~Even if all the charges were true, the price of 7,000 gold on his head still seems remarkably high.~ 
	UNSOLVED_JOURNAL @1005	DO ~SetGlobal("Dayven", "GLOBAL", 1)~ GOTO C3
	IF ~Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~I would like to speak to the eyewitness who saw the battle at the poisoning of the village. Where can I find him?~ 	
	UNSOLVED_JOURNAL @1005	DO ~SetGlobal("Dayven", "GLOBAL", 1)~ GOTO C5
	IF ~Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ 
	UNSOLVED_JOURNAL @1005	DO ~SetGlobal("Dayven", "GLOBAL", 1)~ GOTO C6
	IF ~!Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ GOTO C2
	IF ~!Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~Even if all the charges were true, the price of 7,000 gold on his head still seems remarkably high.~ GOTO C3
	IF ~!Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~I would like to speak to the eyewitness who saw the battle at the poisoning of the village. Where can I find him?~ 	GOTO C5
	IF ~!Global("Dayven", "GLOBAL", 0)~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ GOTO C6
	END

	IF ~~ THEN BEGIN C5
	SAY ~I understand you've been keeping company with the criminal himself, and it would be foolish to tell you where the witness is.~
	= ~While I doubt you would hurt him, you might well unwittingly lead this Kova to him. The lad has been through quite enough, losing his family and all, and I will not let anything happen to him.~
	= ~Still, I will assist you as is my duty. If there comes a time when enough evidence has been presented to us, that we have reason to believe that this man Kova is not the bloodthirsty murderer we've been led to believe he is, I'll let you know this witness' whereabouts.~
	IF ~~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ GOTO C2
	IF ~~ THEN REPLY ~Even if all the charges were true, the price of 7,000 gold on his head still seems remarkably high.~ GOTO C3
	IF ~~ THEN REPLY ~Do you know where I may find Inspector Dayven? I have some questions I would like to ask him.~ GOTO C4
	IF ~Global("Dayven", "GLOBAL", 5)~ THEN REPLY ~I was just wondering, how did you come to link the murders of the nobles with the weapon known to be used by Kova?~ DO ~SetGlobal("Dayven", "GLOBAL", 6)~ GOTO C7
	IF ~~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ GOTO C6
	END
	
	IF ~~ THEN BEGIN C6
	SAY ~Very well then, citizen. Remember, he could be pulling your leg - if you're worried about him, just bring him to me and I'll see to it that you'll be richer by a good 7,000 gold.~
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN C7
	SAY ~Now that's a rather odd question to be asking. Inspector Dayven brought the matter up to me, and suggested I look at the bodies, as it might be related to the case I was handling. Indeed it was, but I've always known Dayven to be one good with the detective instincts.~
	IF ~~ THEN REPLY ~It seems that much of your evidence is circumstantial.~ GOTO C2
	IF ~~ THEN REPLY ~Even if all the charges were true, the price of 7,000 gold on his head still seems remarkably high.~ GOTO C3
	IF ~~ THEN REPLY ~Is there a way for me to locate the eyewitness for the poisoning of the well?~ GOTO C5
	IF ~~ THEN REPLY ~Thank you for your assistance, Chief Inspector. We will be going now. ~ GOTO C6
	END

	IF ~~ THEN BEGIN TIGovt1
	SAY ~Ah, I understand perfectly. This shouldn't take long.~
	IF ~~ THEN DO ~SetGlobal("BregaTalk", "GLOBAL", 248) 
	SetGlobal("FindingKova", "GLOBAL", 250)~ EXIT
	END
	
	IF ~Global("BregaTalk", "GLOBAL", 252)~ THEN BEGIN TIGovt4
	SAY ~Thank you, citizen <CHARNAME>. You know not the good you have done.~
	IF ~~ THEN DO ~GiveGoldForce(7000) 
	ReputationInc(1) ActionOverride("Kova", LeaveParty() )
	SetGlobal("BregaTalk", "GLOBAL", 253)~ EXIT
	END
	
	IF ~~ THEN BEGIN DayvIn
	SAY ~Is that so? What proof have you of what you say?~ 
	= ~Yes, I see now the evidence, and I'll give the orders to withdraw him from active duty into detention, immediately.~
	= ~I suppose this came to your attention because of the case you've been looking into, and I'll immediately re open the findings that he presented, and will look it up to see if he has falsified evidence in the case against Kova.~
	= ~Meantime, I give you my thanks, citizen. I should be able to give you the results of the case review in a relatively short while.~
	IF ~~ THEN DO ~TakePartyItem("DayRec")
	SetGlobal("Dayven", "GLOBAL", 14)~ EXIT
	END 

	IF ~~ THEN BEGIN Review
	SAY ~I have done so already, but it disturbs me to report that the findings were exactly as Dayven reported it, even down to the nature of the wounds on the bodies, which my men have looked into.~ 
	= ~Regardless of his bribe, it appears that Dayven did not distort any of the findings. I find it puzzling that the Shadow Thieves would do such a thing, yet the evidence compels judgment on this Kova person.~
	= ~I have already informed Bylanna of the matter, and I trust she will factor this incident in her eventual judgment.~
	= ~I hope that helps, as that is about all we have for the present.~
	IF ~~ THEN DO ~SetGlobal("Dayven", "GLOBAL", 15)
	AddJournalEntry(@1009, QUEST)
	AddexperienceParty(15000)
	SetGlobal("DayvClue", "GLOBAL", 1)~ EXIT
	END
END

// Corneil / Tolgerias Extensions

EXTEND_BOTTOM ~TOLGER~ 1
IF ~Global("KKJoin", "GLOBAL", 1) InParty("Kova") InParty("Kiyone")~ THEN REPLY ~Actually I came regarding the murder of some Cowled Enforcers by a certain man called Kova.~GOTO TolTalk
END

EXTEND_BOTTOM ~TOLGER~ 28
IF ~Global("KKJoin", "GLOBAL", 1) InParty("Kova") InParty("Kiyone")~ THEN REPLY ~Actually I came regarding the murder of some Cowled Enforcers by a certain man called Kova.~GOTO TolTalk
END


APPEND ~TOLGER~
	IF ~~ THEN BEGIN TolTalk
	SAY ~Bah, this is about that other murderer. Corneil will entertain you on that case - my interest is solely in the task I had Madeen speak to you about.~ 
	IF ~~ THEN EXIT
	END
END

EXTEND_BOTTOM ~CORNEIL~ 0
IF ~Global("KKJoin", "GLOBAL", 1) InParty("Kova") InParty("Kiyone") 
Global("CornTalk", "GLOBAL", 0)~ THEN REPLY ~I was told you are the one to talk to about the case of one Kova.~ 
DO ~CreateItem("CornRep", 0,0,0) SetGlobal("CornTalk", "GLOBAL", 1)~  GOTO CornTalk
IF ~Global("KKJoin", "GLOBAL", 1) InParty("Kova") InParty("Kiyone") 
!Global("CornTalk", "GLOBAL", 0)~ THEN REPLY ~I was told you are the one to talk to about the case of one Kova.~ GOTO CornTalk
IF ~Global("KKJoin", "GLOBAL", 1) InParty("Kova") InParty("Kiyone") !Global("CornTalk", "GLOBAL", 0)~ THEN REPLY ~He is in here with us, and I would have you take him off my hands as soon as possible.~ GOTO TICowl1
IF ~Global("KKJoin", "GLOBAL", 1) 
InParty("Kova") 
InParty("Kiyone") 
!Global("CornTalk", "GLOBAL", 0)
!Global("BribeCorn", "GLOBAL", 0)~ THEN REPLY ~Is there some way I could get you to get your Cowled Wizards off my back?~ GOTO BC1
IF ~Global("KKJoin", "GLOBAL", 1) 
InParty("Kova") 
InParty("Kiyone") 
PartyHasItem("Z#Eye")
Global("Z#BTLPart7","GLOBAL",7)~ THEN REPLY ~We have something regarding Kharen, as witnessed by Ribald's Everseeing Eye.~ EXTERN CORNEIL z#showcorneye
END

APPEND ~CORNEIL~
	IF ~~ THEN BEGIN CornTalk
	SAY ~Indeed, I have some reports with me from our Enforcers that you are keeping the company of this Kova. No matter, the longer you hold on to him, the more likely you will eventually share in his fate at our hands.~
	=
	~If you have wish to hand him over to us, in return for the rather generous compensation of 8,000 gold, you only need to speak, and I will settle the matter for you. Otherwise, I will leave you to the Enforcers to take care of. It will only be a matter of time.~
	IF ~~ THEN REPLY ~I suppose I'd best be on my way then.~ EXIT
	IF ~~ THEN REPLY ~He is in here with us, and I would have you take him off my hands as soon as possible.~ GOTO TICowl1
	END
	
	IF ~~ THEN BEGIN TICowl1
	SAY ~Finally, you show some sense with that reasonable course of action. And now, to settle the matter appropriately.~
	IF ~~ THEN DO ~	SetGlobal("CornTalk", "GLOBAL", 248)~ EXIT
	END

	IF ~Global("CornTalk", "GLOBAL", 252)~ THEN BEGIN TICowl4
	SAY ~Well, that concludes that pesky little affair. Here is your gold, take it and begone. I have other pressing matters to attend to.~
	IF ~~ THEN DO ~ActionOverride("Kova", LeaveParty() )
	GiveGoldForce(8000) 
	SetGlobal("CornTalk", "GLOBAL", 253)~ EXIT
	END
	
	IF ~~ THEN BEGIN BC1
	SAY ~Well, you would have to make such an arrangement worth my while. After all, I do have other more pressing interests to attend to, too much for the likes of you to comprehend.~
	= 
	~Still, we do speak in terms of one common denomination. 2500 gold should be a fair price to keep you and your merry little band from being decimated by my men for five days or so.~
	IF ~PartyGoldGT(2499)~ THEN REPLY ~Here is your fee. See to it that we are undisturbed.~ 
	DO ~TakePartyGold(2500) DestroyGold(2500)~ GOTO BC2
	IF ~~ THEN REPLY ~You ask for too much from me.~ GOTO BC3
	END
	
	IF ~~ THEN BEGIN BC3
	SAY ~I can understand fully if you think yourself worth less than the amount of gold I've asked for. Now cease wasting my time, I have other business to attend to.~
	IF ~~ THEN EXIT
	END
	
	IF ~~ THEN BEGIN BC2
	SAY ~There is some sense in you after all. Keep it up, especially if you wish to remain on sensible footing with us.~ 
	= ~Now begone, I have other matters to attend to.~
	IF ~~ THEN DO ~SetGlobal("BribeCorn","GLOBAL",1)
	SetGlobalTimer("KKCowlT","GLOBAL",36000)~ EXIT
	END
END


// Z#MESSEN

BEGIN Z#MESSEN

CHAIN
IF WEIGHT #-1 ~Global("JermClue", "GLOBAL", 3)
Global("DayvClue", "GLOBAL", 3)
Global("LOAClue", "GLOBAL", 3)
Global("Z#BaevrinPlot","GLOBAL",0)~ THEN Z#MESSEN evidenough
~Greetings, lady Kiyone. Lady Bylanna has asked me to let you know that the evidence you have uncovered has been enough for her to grant you free rein in doing your work.~
= ~I will no longer be sent out to look for you, nor will our men be sent out to seek you and your companions. She trusts that you will eventually return the accused to stand trial once you feel your investigations have concluded.~
== Z#KIYOJ
~Thank you, Myroven. Please tell Bylanna I am most grateful and thankful for the trust and freedom given to me in conducting my investigation. I will not fail her trust.~ 
== Z#MESSEN
~It is also a great personal pleasure for me to deliver such good news. Though it is our duty, it would disturb both myself and Bylanna greatly to send men out after one as true as you and one as probably innocent as your companion.~
== Z#KIYOJ 
~Thank you, Myroven. I appreciate that very much, and I think so does the accused.~
== Z#MESSEN
~You are most welcome, though really, you only have your own skill in obtaining the necessary evidence to thank.~
= ~I will be going now, and I wish you well in your investigation.~
DO ~SetGlobal("GovtGuards", "GLOBAL", 4)
SetGlobal("Z#NoMoreGovt", "GLOBAL", 1)
RealSetGlobalTimer("Z#enoughT", "GLOBAL", 15)
EscapeArea()~ EXIT


CHAIN
IF ~OR(3)
!Global("JermClue", "GLOBAL", 3)
!Global("DayvClue", "GLOBAL", 3)
!Global("LOAClue", "GLOBAL", 3)
~ THEN Z#MESSEN evidgo
~Lady Bylanna sends her greetings, lady Kiyone. She has sent me forth to collect what reports and evidence you have uncovered so far regarding the case.~
DO ~SetGlobal("GovtGuards", "GLOBAL", 2)~
== Z#KIYOJ IF ~OR(7)
Global("JermClue", "GLOBAL", 1)
Global("JermClue", "GLOBAL", 2)
Global("DayvClue", "GLOBAL", 1)
Global("LOAClue", "GLOBAL", 1)
Global("LOAClue", "GLOBAL", 2)
Global("AddRayic", "GLOBAL", 2)
PartyHasItem("CornRep")~ THEN 
~Thank you, Myroven. Let's see which of the reports I have on hand that <CHARNAME> would wish me to submit to Bylanna, then.~
END
IF ~GlobalGT("JermClue", "GLOBAL", 0)
!Global("JermClue", "GLOBAL", 3)~ THEN 
REPLY ~Tell her about the information we got from Jermien about the Cowled Wizard murders.~ EXTERN Z#KIYOJ evidjerm
IF ~GlobalGT("DayvClue", "GLOBAL", 0)
!Global("DayvClue", "GLOBAL", 3)~ THEN 
REPLY ~Give her the results of the review on the murder of the nobles.~ EXTERN Z#KIYOJ eviddayv
IF ~GlobalGT("LOAClue", "GLOBAL", 0)
// PartyHasItem("MaeLOA")
!Global("LOAClue", "GLOBAL", 3)~ THEN 
REPLY ~Hand her a copy of the letter of authority from the Shadow Thieves regarding the poisoning of the village.~ EXTERN Z#KIYOJ evidloa
IF ~Global("JermClue", "GLOBAL", 0)
// PartyHasItem("RayNote")
Global("AddRayic", "GLOBAL", 2)~ THEN
REPLY ~It might not be much, but we can give a copy of the note written by Rayic.~ EXTERN Z#KIYOJ evidraynote
IF ~PartyHasItem("CornRep")~ THEN
REPLY ~It is scant evidence, but we can give her the reports from Corneil on the matter.~ EXTERN Z#KIYOJ evidcornrep 
IF ~GlobalGT("MetKharen", "GLOBAL", 0)
!Global("MetKharen", "GLOBAL", 3)~ THEN
REPLY ~We should tell her about the encounter we had at Spellhold.~ EXTERN Z#KIYOJ evidmetkharen
IF ~!Global("JermClue", "GLOBAL", 1)
!Global("JermClue", "GLOBAL", 2)
!Global("MetKharen", "GLOBAL", 1)
!Global("MetKharen", "GLOBAL", 2)
!Global("DayvClue", "GLOBAL", 1)
!Global("LOAClue", "GLOBAL", 1)
!Global("LOAClue", "GLOBAL", 2)
!Global("AddRayic", "GLOBAL", 2)
!PartyHasItem("CornRep")~ THEN EXTERN Z#KIYOJ evidnone

CHAIN
IF ~~ THEN Z#KIYOJ evidmetkharen
~Indeed, it was an encounter that has unsettled me greatly.~
= ~While we were leaving Spellhold, Myroven, we met a group of Cowled Wizards, led by a woman called Kharen, who was seeking to apprehend Kova.~ 
= ~This person clearly has a personal motivation for seeking Kova's demise, and we believe her to have some connection with the Shadow Thieves, as we shortly encountered some Shadow Thieves after the encounter with her.~
== Z#KIYOJ IF ~GlobalGT("JermClue", "GLOBAL", 0) Global("CornTalk", "GLOBAL", 3)~ THEN
~What is more disturbing is that we believe this person to be the same one who murdered the Cowled Enforcers and, by being appointed to investigate the murders, conveniently set him up for the murders.~
== Z#KIYOJ IF ~GlobalGT("JermClue", "GLOBAL", 0) !Global("CornTalk", "GLOBAL", 3)~ THEN
~What is more disturbing is that we believe this person to be the same one who murdered the Cowled Enforcers, and somehow managed to set Kova up for the murders.~
== Z#MESSEN
~This is a rather unsettling piece of information.~
== Z#KIYOJ
~Yes, and not only is this about framing Kova, but it seems there is more to this than meets the eye, since this Kharen appears to have considerable influence among the Cowled Wizards.~
= ~If she truly is some agent of the Shadow Thieves, then it could well be doubly important that these reports I've prepared on the matter get to the right people for them to deal with it.~
== Z#MESSEN
~Rest assured, I will deliver this with due haste to Bylanna, and I'm sure they'll come to the attention of those that can handle them in an appropriate manner.~
= ~As for yourself, good hunting. I hope you can get to the bottom of this case, the sooner the better, I suspect. Be well, my lady.~
DO ~EscapeArea()
SetGlobal("MetKharen", "GLOBAL", 3)
SetGlobal("GovtGuards", "GLOBAL", 2)
AddexperienceParty(12000)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidnone
~Well, I'm afraid I don't have any new material at the moment to hand over. If you can just tell her that I'll  soon be presenting what I have to her directly, I'd be most grateful.~
== Z#MESSEN 
~That I will, though she has informed me to let you know that you'll be given just over a day at most to deliver the materials to her.~
= ~I'll be taking my leave now, my lady, and I hope you find what you are looking for.~
DO ~SetGlobal("GovtGuards", "GLOBAL", 1)
SetGlobalTimer("KKGovtT","GLOBAL",12240) EscapeArea()~ EXIT

CHAIN 
IF ~~ THEN Z#KIYOJ evidjerm
~Very well, <CHARNAME>.~
= ~In the course of our investigations we have obtained a signed and written note from a Cowled Wizard, vouching for an eyewitness of the murders of his fellow enforcers. The description given hardly matches that of the accused.~
= ~Here it is, along with the relevant reports I've prepared, Myroven. Please present them to lady Bylanna, along with my regards and thanks to her for her patience.~
== Z#MESSEN
~That's a promising piece of work, and I will see to it that it gets to her. Good <DAYNIGHT>, and be well, my lady.~
DO ~SetGlobal("JermClue", "GLOBAL", 3) 
SetGlobal("GovtGuards", "GLOBAL", 2)
TakePartyItem("JerSig")
DestroyItem("JerSig")
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN 
IF ~~ THEN Z#KIYOJ eviddayv
~As you wish.~
= ~Myroven, Lady Bylanna should already have received the information regarding the review of the murders of the nobles, though I have prepared my own reports on the matter as well.~
= ~Here are my own reports, you can give them to her to compare with the Inspector's notes.~
== Z#MESSEN
~That I will, my lady. Good <DAYNIGHT>.~
DO ~SetGlobal("DayvClue", "GLOBAL", 3) 
SetGlobal("GovtGuards", "GLOBAL", 2)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN 
IF ~~ THEN Z#KIYOJ evidloa
~Yes, that's quite an interesting bit of evidence.~
= ~Myroven, we have come across a Letter of Authority from within the Thieves' Guild, authorising the poisoning of the village. A noteworthy piece, given that the Shadow Thieves supposedly want the accused dead as well.~
= ~Here it is, along with the relevant reports I've prepared. Please present them to lady Bylanna, along with my regards and thanks to her for her patience.~
== Z#MESSEN
~Most intriguing. I will certainly deliver this as soon as possible. I wish you well, my lady.~
DO ~SetGlobal("LOAClue", "GLOBAL", 3) 
TakePartyItem("MaeLOA")
DestroyItem("MaeLOA")
SetGlobal("GovtGuards", "GLOBAL", 2)
SetGlobalTimer("KKGovtT","GLOBAL",50400)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidcornrep
~Since it's come down to this, very well.~
= ~I've nothing very conclusive for her at the moment, Myroven, but here are some reports from among the Cowled Wizards. I suspect their chief investigator might have something to do with the Shadow Thieves.~
= ~Here's some brief notes I have written on the matter, perhaps it might prove to be of some small use. I trust you will see them well into her hands.~
== Z#MESSEN
~That I will, but looking this over, I doubt it is enough. I expect she'll be sending me out to locate you again shortly.~
== Z#KIYOJ
~Yes, that is to be expected. This will have to do, for now, and I should have more for you when we next meet again.~
== Z#MESSEN
~That I look forward to, as well. Good hunting to you.~
DO ~TakePartyItem("CornRep")
DestroyItem("CornRep")
SetGlobal("GovtGuards", "GLOBAL", 2)
SetGlobalTimer("KKGovtT","GLOBAL",10800)
EscapeArea()~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ evidraynote
~I do not think this sufficient, but it will have to serve.~
= ~Myroven, I currently only have this penned note, written by a Cowled Wizard named Rayic Gethras. While it is only a conjecture here, it seems to imply Kova is innocent of murdering the wizards.~
= ~Here's some brief comments I have written on the matter, and a copy of the note. I'm not sure what lady Bylanna would make of it, but I would hope she gives us more time to follow up on this clue.~
== Z#MESSEN
~Certainly, my lady. I believe she will grant you some grace before sending me out after you once more, for more concrete findings.~
== Z#KIYOJ
~I believe I will have some ready by then. Thank you, Myroven, and be well.~
== Z#MESSEN
~It's a pleasure to serve, my lady. I hope your investigation goes well.~
DO ~SetGlobal("AddRayic", "GLOBAL", 3) 
SetGlobal("GovtGuards", "GLOBAL", 2)
SetGlobalTimer("KKGovtT","GLOBAL",25200)
EscapeArea()~ EXIT

// Kharen16

EXTEND_BOTTOM PPSAEM2 29
IF ~Global("KKJoin", "GLOBAL", 1)
InParty("Kova")
AreaCheck("AR1500")~ THEN DO 
~SetGlobal("AsylumPlot","GLOBAL",60)
RealSetGlobalTimer("Z#KharenWarnT","AR1500", 7)
ApplySpell(Myself,DRYAD_TELEPORT)
AddJournalEntry(16563, QUEST)
CreateCreature("Z#Khar16", [505.2920], 10)~ EXIT
END

BEGIN KHAREN16

IF ~HPLT(Myself, 3)
GlobalGT("Combat", "LOCALS", 0)~ THEN BEGIN Bye
SAY ~Well, congratulations, it seems you've bested me this day. I go now, but sooner or later, justice will be done, if not by my hand, then by another's.~
IF ~~ THEN DO ~ChangeAIScript("",OVERRIDE)
ChangeAIScript("",DEFAULT)
NoAction()
ApplySpell(Myself,DRYAD_TELEPORT)
SetGlobal("MetKharen", "GLOBAL", 1)
AddexperienceParty(12000)~ EXIT
END

CHAIN
IF ~NumTimesTalkedTo(0)
Global("KhWin", "GLOBAL", 0)~ THEN KHAREN16 Kh0
~There you are, <CHARNAME>. I've been wondering when you'd come to this point.~
= ~I'm very thankful for the favour you have done us, in clearing up our stronghold, at least of the elements we would have some inconvenience in removing on our own.~
END
IF ~!InParty("Kova")~ THEN GOTO NoKova
IF ~InParty("Kova")~ THEN GOTO Kh1

CHAIN 
IF ~~ THEN KHAREN16 NoKova
~I must admit, I had not expected for a certain mutual friend of ours to not be with you, but no matter. Once again, my thanks, <CHARNAME>, and I will be seeing you about.~ 
DO ~ApplySpell(Myself, DRYAD_TELEPORT)~ EXIT

CHAIN 
IF ~~ THEN KHAREN16 Kh1
~However, I'm not here just to offer my thanks. There's someone with you whom we, especially myself, have been seeking for a while.~
= ~I know that my offer is probably no more than what anyone else has offered you, but I hope that you are willing to hand him over to myself for justice to be exacted.~
== Z#KOVAJ ~Your voice sounds familiar...~
== KHAREN16 ~Finally, you deign to stick your head out rather than keep hiding behind <CHARNAME> like the murdering crook you are.~
== Z#KOVAJ ~It's obvious you know that I am here, so there is no further point in hiding.~
== Z#KIYOJ IF ~InParty("Kiyone") 
GlobalGT("JermClue", "GLOBAL", 0)~ THEN
~Wait a minute... you have white hair.~
== Z#KOVAJ IF ~OR(2)
!InParty("Kiyone")
Global("JermClue", "GLOBAL", 0)~ THEN
~White hair, I remember now...~
== KHAREN16 ~And what does my hair have to do with anything?~
== Z#KOVAJ ~Kharen.~
== KHAREN16 ~So, it took you so long to recognise to whom you've given much grief. I suppose being pursued relentlessly probably has taken some memories off your mind.~
= ~Still, my name doesn't matter, nor does the outcome of this matter rest with you.~
= ~Well, <CHARNAME>, I make no threats, and I only offer the hand of peace and 8,000 gold in compensation, as I've been authorised to give. All I ask is that you hand over this... miscreant murderer to me, and let the fallen be avenged.~
END
IF ~!InParty("Kiyone")~ THEN REPLY ~Your offer is more than enough. Take him and do with him as you wish.~ GOTO KhOK-2
IF ~InParty("Kiyone")~ THEN REPLY ~Your offer is more than enough. Take him and do with him as you wish.~ GOTO KhOK
IF ~~ THEN REPLY ~Who is this fallen person of whom you speak?~ GOTO Kh3
IF ~~ THEN REPLY  ~He has been my companion for a good while, and I won't leave him to the tender mercies of others.~ GOTO Kh2

CHAIN
IF ~~ THEN KHAREN16 Kh2
~Please, I implore you, do turn him over to me. Perhaps you do not know what he has done.~
EXTERN KHAREN16 Kh3

CHAIN
IF ~~ THEN KHAREN16 Kh3
~He murdered someone very close and very dear to me. I may represent the Cowled Wizards, but to me it is more than just that.~
= ~I'm sure you've had better offers in any case, <CHARNAME>, offers that you have set aside, and I don't believe mine is any better than theirs.~
= ~Still, I plead with you all the same, not for what you might gain, but for my own sake. Please, show me some small measure of kindness, and grant me this justice I seek.~
END
IF ~InParty("Kiyone")~ THEN REPLY ~Your words have moved me, and I wash my hands of him. Take him and deal with him as you wish.~ GOTO KhOK
IF ~InParty("Kiyone")~ THEN REPLY ~I will help you, but only by stepping aside. I will not lift my hand against my friend.~ GOTO KhOK
IF ~!InParty("Kiyone")~ THEN REPLY ~Your words have moved me, and I wash my hands of him. Take him and deal with him as you wish.~ GOTO KhOK-2
IF ~!InParty("Kiyone")~ THEN REPLY ~I will help you, but only by stepping aside. I will not lift my hand against my friend.~ GOTO KhOK-2
IF ~~ THEN REPLY ~He may have done you wrong before, but I cannot step aside and surrender my friend to harm. As he has stood by me many a time, I stand by him as well.~ GOTO Kh4
IF ~~ THEN REPLY ~Your lies are not enough to make me surrender him to you.~ GOTO Kh4

CHAIN
IF ~~ THEN KHAREN16 Kh4
~You would not do even this little thing, for another person?~
= ~Well, then I regret that it has come to this, <CHARNAME>. I have no quarrel with you, but I cannot let this murderer go unpunished.~
== KHAREN16 IF ~XPLT(Player1, 1000000)~ THEN
~Maybe in another time, another place, we could have known each other as friends. But for now, I can do little, except to apologise then do as I must.~
DO ~  // 505.2920   725.2740
SetInterrupt(FALSE)
ReallyForceSpell(Myself, WIZARD_PROTECTION_FROM_FIRE)
CreateVisualEffect("SPDIMNDR",[550.2895])
CreateVisualEffect("SPDIMNDR",[920.2625])
CreateVisualEffect("SPDIMNDR",[970.2595])
Wait(2)
Enemy()
CreateCreature("COWENF1",[555.2890],10)
CreateCreature("COWENF4",[925.2620],2)
CreateCreature("COWENF3",[975.2590],2)
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("COWENF4",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_STONE_SKIN) )
ActionOverride("COWENF4",ApplySpell(Myself,WIZARD_STONE_SKIN) )
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_STONE_SKIN) )
SetInterrupt(TRUE)~
== KHAREN16 IF ~XPLT(Player1, 2000000)
XPGT(Player1, 999999)~ THEN
~Maybe in another time, another place, we could have known each other as friends. But for now, I can do little, except to apologise then do as I must.~
DO ~
SetInterrupt(FALSE)
ReallyForceSpell(Myself, WIZARD_PROTECTION_FROM_FIRE)
CreateVisualEffect("SPDIMNDR",[550.2895])
CreateVisualEffect("SPDIMNDR",[920.2625])
CreateVisualEffect("SPDIMNDR",[970.2595])
Wait(2)
Enemy()
CreateCreature("Z#CW16",[555.2890],10)
CreateCreature("Z#CW18",[925.2620],2)
CreateCreature("COWENF1",[975.2590],2)
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("COWENF1",ApplySpell(Myself,WIZARD_STONE_SKIN) )
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_STONE_SKIN) )
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_STONE_SKIN) )
SetInterrupt(TRUE)~
== KHAREN16 IF ~XPGT(Player1, 1999999)~ THEN
~Maybe in another time, another place, we could have known each other as friends. But for now, I can do little, except to apologise then do as I must.~
DO ~
SetInterrupt(FALSE)
ReallyForceSpell(Myself, WIZARD_PROTECTION_FROM_FIRE)
CreateVisualEffect("SPDIMNDR",[550.2895])
CreateVisualEffect("SPDIMNDR",[920.2625])
CreateVisualEffect("SPDIMNDR",[970.2595])
Wait(2)
Enemy()
CreateCreature("COWENF3",[555.2890],10)
CreateCreature("Z#CW18",[925.2620],2)
CreateCreature("Z#CW16",[975.2590],2)
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_PROTECTION_FROM_MAGIC_WEAPONS) )
ActionOverride("COWENF3",ApplySpell(Myself,WIZARD_STONE_SKIN) )
ActionOverride("Z#CW16",ApplySpell(Myself,WIZARD_STONE_SKIN) )
ActionOverride("Z#CW18",ApplySpell(Myself,WIZARD_STONE_SKIN) )
SetInterrupt(TRUE)~
EXIT

CHAIN
IF ~~ THEN KHAREN16 KhOK
~Thank you, <CHARNAME>. Let justice be done, then.~
DO ~
ChangeAIScript("",CLASS)
ChangeAIScript("",DEFAULT)
ActionOverride("Kiyone", JumpToPoint([710.2725]) )
ActionOverride("Kova", JumpToPoint([740.2755]) )
ActionOverride("Kiyone", DropInventory() )
ActionOverride("Kiyone", PickUpItem("KiyoBow1") )
ActionOverride("Kiyone", PickUpItem("KiyoBow2") )
ActionOverride("Kiyone", PickUpItem("KiyoArm1") )
ActionOverride("Kiyone", PickUpItem("KiyoArm2") )
ActionOverride("Kiyone", FillSlot(SLOT_WEAPON0) )
ActionOverride("Kiyone", FillSlot(SLOT_ARMOR) )
ActionOverride("Kova", DropInventory() )
ActionOverride("Kova", PickUpItem("KovaDag2") )
ActionOverride("Kova", PickUpItem("KovaDag3") )
ActionOverride("Kova", PickUpItem("KovaArm1") )
ActionOverride("Kova", PickUpItem("KovaArm2") )
ActionOverride("Kova", FillSlot(SLOT_WEAPON0) )
ActionOverride("Kova", FillSlot(SLOT_ARMOR) )
ActionOverride("Kova", Face(2) )
ActionOverride("Kiyone", Face(3) )
ActionOverride("Kiyone", EquipRanged() )
ActionOverride("Kova", EquipRanged() )
ApplySpell(Myself, WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)~
== Z#KIYOJ
~I won't allow you to do anything to him!~
DO ~JumpToPoint([710.2725])
Attack("Kharen")
ChangeAIScript("",DEFAULT)~
== KHAREN16
~We'll just have to see about that, won't we?~
DO ~SetCutSceneLite(TRUE)
ForceSpell(Myself, DO_NOTHING)
SetGlobal("KhWin", "GLOBAL", 1)
MoveViewPoint([820.2830],INSTANT)
SetGlobal("FindingKova", "GLOBAL", 250)
CreateVisualEffectObject("SPSUMPLN" , Myself)
ChangeAIScript("",CLASS)
ChangeAIScript("",DEFAULT)~ EXIT

CHAIN
IF ~~ THEN KHAREN16 KhOK-2
~Thank you, <CHARNAME>. Let justice be done, then.~
DO ~ChangeAIScript("",CLASS)
ChangeAIScript("",DEFAULT)
ActionOverride("Kova", JumpToPoint([725.2740]) )
ActionOverride("Kova", DropInventory() )
ActionOverride("Kova", PickUpItem("KovaDag2") )
ActionOverride("Kova", PickUpItem("KovaDag3") )
ActionOverride("Kova", PickUpItem("KovaArm1") )
ActionOverride("Kova", PickUpItem("KovaArm2") )
ActionOverride("Kova", FillSlot(SLOT_WEAPON0) )
ActionOverride("Kova", FillSlot(SLOT_ARMOR) )
ActionOverride("Kova", Face(2) )
ActionOverride("Kova", EquipRanged() )
ApplySpell(Myself, WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
SetCutSceneLite(TRUE)
ActionOverride("Kova", Attack("Kharen") )
ForceSpell(Myself, DO_NOTHING)
SetGlobal("KhWin", "GLOBAL", 1)
MoveViewPoint([820.2830],INSTANT)
SetGlobal("FindingKova", "GLOBAL", 250)
CreateVisualEffectObject("SPSUMPLN" , Myself)
Wait(1)
CreateVisualEffectObject("SPROTECT" , "Kharen")
SetGlobal("KhWin", "GLOBAL", 2)
TriggerActivation("StoneTrap", TRUE)~ EXIT

CHAIN
IF ~AreaCheck("AR1500")
Global("KhWin", "GLOBAL", 1)
Global("FindingKova", "GLOBAL", 250)~ THEN Z#KOVAJ KhWin1
~Stop her!~
DO ~SetCutSceneLite(TRUE)
SetGlobal("KhWin", "GLOBAL", 2)
CreateVisualEffectObject("SPROTECT" , "Kharen")
// ActionOverride("Kharen", ForceSpell("Kova",FORCE_STONE_TRAP) )
TriggerActivation("StoneTrap", TRUE)
Attack("Kharen")~ EXIT

CHAIN 
IF ~Global("KhWin", "GLOBAL", 2)
StateCheck("Kova",STATE_STONE_DEATH)~ THEN KHAREN16 KhWin2
~And now, to conclude this properly.~
DO ~SetGlobal("KhWin", "GLOBAL", 3)
ForceSpell("Kova", WIZARD_FLAME_ARROW)
SetCutSceneLite(TRUE)~
== Z#KIYOJ IF ~Detect("Kiyone")~ THEN
~Please, cease this madness! Release him and perhaps we can...~
== KHAREN16 IF ~Detect("Kiyone")~ THEN
~He killed my brother...~
DO ~SetCutSceneLite(TRUE)~
EXIT

CHAIN
IF ~AreaCheck("AR1500")
Global("KhWin", "GLOBAL", 3)
Global("FindingKova", "GLOBAL", 250)
Detect("Kiyone")
StateCheck("Kova",STATE_EXPLODING_DEATH)
~ THEN KHAREN16 KhWin3
~There...~
== Z#KIYOJ 
~NO! I... I will kill you, I swear!~
DO ~Attack("Kharen")~
== KHAREN16
~You force my hand, woman. So be it.~
DO ~SetCutSceneLite(TRUE)
ForceSpell(Myself, DO_NOTHING)
CreateVisualEffectObject("SPROTECT" , "Kharen")
SetGlobal("KhWin", "GLOBAL", 4)
TriggerActivation("StoneTrap", TRUE)
//ForceSpell("Kiyone", FORCE_STONE_TRAP)
~ EXIT

CHAIN
IF ~GlobalGT("KhWin", "GLOBAL", 2)
Global("FindingKova", "GLOBAL", 250)
Dead("Kova")
Dead("Kiyone")~ THEN KHAREN16 KhOK2
~It is done, my brother. May your rest be sweet.~
= ~Here <CHARNAME>, this is the reward you have well earned. Thank you for letting me bring this to pass.~
DO ~SetCutSceneLite(FALSE)
GiveGoldForce(8000)~
== KHAREN16 IF ~GlobalGT("KhWin", "GLOBAL", 3)~ THEN
~I apologise about your lady friend here, but she made her own choice, though it was not unexpected. Love is such a foolish, foolish thing, but at least she did not die alone.~
END
IF ~~ THEN REPLY ~I will kill you for this!~ GOTO Kh7
IF ~GlobalGT("KhWin", "GLOBAL", 3)~ THEN REPLY ~They were my companions. Was this necessary?~ GOTO Kh5
IF ~GlobalLT("KhWin", "GLOBAL", 4)~ THEN REPLY ~He was my companion. Was this necessary?~ GOTO Kh5
IF ~~ THEN REPLY ~Thank you for the reward, and I am glad you have been avenged.~ GOTO Kh6

CHAIN
IF ~~ THEN KHAREN16 Kh5
~It was necessary, but then again, that is only my own sentiment and belief.~
EXTERN KHAREN16 Kh6

CHAIN
IF ~~ THEN KHAREN16 Kh6
~I can't claim to understand how you feel about this matter, and I am hardly one to take anyone's words at face value. In parting I can only say this.~
EXTERN KHAREN16 Kh7

CHAIN
IF ~~ THEN KHAREN16 Kh7
~Never let vengeance lead you onward. It leaves behind nothing but a bitter, ashen taste of dust in your mouth.~
= ~Regardless of what you intend to do about me, I have no quarrel with you. Go in peace, and once again, thank you.~ 
DO ~ChangeAIScript("",OVERRIDE)
SetGlobal("FindingKova", "GLOBAL", 251)
SetGlobal("MetKharen", "GLOBAL", 1)
ChangeAIScript("",DEFAULT)
NoAction()
ApplySpell(Myself,DRYAD_TELEPORT)~ EXIT

CHAIN
IF ~AreaCheck("AR1500")
InParty("Kova")
Global("MetKharen", "GLOBAL", 1)
Global("BrynnAmbush", "GLOBAL", 0)
!ActuallyInCombat()~ THEN Z#KIYOJ PostKh
~So she has gone, and those she brought are dead. While the one who slew her dear friend remains at large, hale and hearty. Thanks to me.~
== Z#KOVAJ
~Surely you don't believe...~
== Z#KIYOJ
~Her words ring true, and her plea haunts my ears. She could be misled at best, but I doubt it. Do you think she's misled?~
== Z#KOVAJ
~Kharen.. no. She wouldn't be.~
== Z#KIYOJ IF ~GlobalLT("CornTalk", "GLOBAL", 3)~ THEN
~Who is she, anyway? What have you been keeping from us?~
== Z#KOVAJ IF ~GlobalLT("CornTalk", "GLOBAL", 3)~ THEN
~I've only ever known her as a Shadow Thief a long time ago, before she vanished without a trace from my guild. And now it seems she is a powerful member of the Cowled Wizards.~
== Z#KOVAJ IF ~GlobalGT("JermClue", "GLOBAL", 0)~ THEN
~Though, I think we now know who Deros saw killing the enforcers.~
DO ~AddJournalEntry(@1025, QUEST)~
== Z#KIYOJ IF ~GlobalGT("JermClue", "GLOBAL", 0)~ THEN
~Yes, she probably did it to get back at you. Who did you kill, of hers? Family, loved ones? And don't you even think of keeping from me anything you might know.~
== Z#KIYOJ IF ~Global("JermClue", "GLOBAL", 0)~ THEN
~Thief or mage, her cry is as true as that of any other's... just as your cry is. Who did you kill, of hers? Family, loved ones? And don't you even think of keeping from me anything you might know.~
== Z#KOVAJ
~She had no one, Kiyone, and never had anyone. Her knife and her wits were her best friends, and she had the uncanny knack of always knowing what others were doing, even when her superiors didn't.~
= ~I always thought that the many others who feared her had come together to get rid of her those ten odd years ago. But it seems that reality is far from that.~
== Z#KIYOJ
~So, I've been fooled by a consummate schemer?~
== Z#KOVAJ
~That she is, but she didn't seem to have many emotions. She'd probably find it simpler to stab a person in the back than to even show the slightest sign of weakness. I cannot hide my sentiments from you, Kiyone, for I too, do not thinking she is lying.~
== Z#KIYOJ
~Tell me I did not make a mistake in judging you innocent.~
== Z#KOVAJ
~Perhaps all judgments made by mere mortals are mistakes.~
== Z#KIYOJ
~Curse you! I knew I should have put an arrow into your heart once I knew who you were!~
== Z#KOVAJ
~If you want to rectify that mistake now, I wouldn't be able to stop you.~
== Z#KIYOJ
~Damned be all emotions! Damn us all!~
== Z#KOVAJ
~Kiyone, I...~
== Z#KIYOJ
~You said she was a Shadow Thief. What possible immediate considerations would that information provide us?~
== Z#KOVAJ
~Well... now that you mention it, it is likely that there is another group close by, waiting for us.~
== Z#KIYOJ
~Good, let us be watchful then, and set up camp to recover if we need to.~
== Z#KOVAJ
~Kiyone, you truly are an amazing...~
== Z#KIYOJ
~Shut up and stay out of sight. I don't even want to be reminded that you are here.~
DO ~SetGlobal("MetKharen", "GLOBAL", 2)~ EXIT

// ST People Z#BRYNN1 Z#BRYNN2

BEGIN Z#BRYNN1
BEGIN Z#BRYNN2

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN Z#BRYNN1 pardon
~Pardon the intrusion. Just looking for someone.~
DO ~SetGlobal("Z#Brynn1Spoke","GLOBAL",1)~ EXIT

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN Z#BRYNN2 nothere
~He doesn't seem to be here...~
END
IF ~!See("Kova")~ THEN DO ~SetGlobal("Z#Brynn1Spoke","GLOBAL",3)~ EXTERN Z#BRYNN1 drat
IF ~See("Kova")~ THEN DO ~SetGlobal("Z#Brynn1Spoke","GLOBAL",3)~ EXTERN Z#BRYNN2 thereheis

CHAIN 
IF ~~ THEN Z#BRYNN1 drat
~Drat, she must have nailed him after all.~
== Z#BRYNN2 ~So much for a fortune waiting to be made. What a wasted trip.~
== Z#BRYNN1 ~Anyway, don't you be minding us, we were just hoping to make a good amount of money. I suppose we'll be on our way now. The masters send you their regards.~
END
IF ~InParty("Kova")~ THEN DO ~EscapeArea()
ActionOverride("Z#Assas3", EscapeArea() )
SetGlobal("BrynnAmbush", "GLOBAL", 3)~ EXIT
IF ~!InParty("Kova")~ THEN DO ~EscapeArea()
ActionOverride("Z#Assas3", EscapeArea() )~ EXIT

CHAIN
IF ~~ THEN Z#BRYNN2 thereheis
~Oh wait, there he is! Looks like its time to make our fortune!~
== Z#BRYNN1 ~Or die trying.~
END
IF ~XPLT(Player1, 1000000)~ THEN DO ~Enemy()
SetGlobal("BrynnAmbush", "GLOBAL", 2)
ActionOverride("Z#Assas3", Enemy() )
CreateCreatureObjectOffset("Z#Assas1",Player1,[100.-100])
CreateCreatureObjectOffset("Z#Assas2",Player1,[60.-60])
CreateCreatureOffScreen("Z#Assas1",0) 
CreateCreatureOffScreen("Z#Assas2",0)
~ EXIT
IF ~XPGT(Player1, 999999)
XPLT(Player1, 2000000)~ THEN DO ~Enemy()
SetGlobal("BrynnAmbush", "GLOBAL", 2)
ActionOverride("Z#Assas3", Enemy() )
CreateCreatureObjectOffset("Z#Assas2",Player1,[100.-100])
CreateCreatureObjectOffset("Z#Assas2",Player1,[60.-60])
CreateCreatureOffScreen("Z#Assas1",0) 
CreateCreatureOffScreen("Z#Assas3",0)
~ EXIT
IF ~XPGT(Player1, 1999999)~ THEN DO ~Enemy()
SetGlobal("BrynnAmbush", "GLOBAL", 2)
ActionOverride("Z#Assas3", Enemy() )
CreateCreatureObjectOffset("Z#Assas2",Player1,[100.-100])
CreateCreatureObjectOffset("Z#Assas3",Player1,[60.-60])
CreateCreatureOffScreen("Z#Assas2",0) 
CreateCreatureOffScreen("Z#Assas3",0)
~ EXIT

CHAIN
IF ~Global("BrynnAmbush", "GLOBAL", 2)~ THEN Z#KOVAJ afterbrynnfight
~Yet more bloodshed, because of me...~
= ~Let us make haste from this isle. I doubt any of us can sleep easy now that they know exactly where we are.~
DO ~SetGlobal("BrynnAmbush", "GLOBAL", 4)~ EXIT

CHAIN
IF ~Global("BrynnAmbush", "GLOBAL", 3)~ THEN Z#KOVAJ nobrynnfight
~That was some very timely placement, and I am glad bloodshed was avoided. Still, there can be very little doubt who they were seeking.~
= ~Let us make haste from this isle. I doubt any of us can sleep easy now that they know exactly where we are.~
DO ~SetGlobal("BrynnAmbush", "GLOBAL", 4)
AddexperienceParty(12000)~ EXIT

CHAIN
IF ~	AreaType(OUTDOOR) 
	InParty("Kiyone") 
	InMyArea("Kiyone")
	Global("GovtGuards", "GLOBAL", 4)
	Global("KvEvidEnough", "GLOBAL", 0)
	RealGlobalTimerExpired("Z#EnoughT","GLOBAL")~ THEN Z#KOVAJ KvEvidEnough
~Well, it seems that some good has come of this after all.~
DO ~SetGlobal("KvEvidEnough", "GLOBAL", 1)~
== Z#KIYOJ IF ~!GlobalGT("BKKChat","GLOBAL",5)~ THEN
~That must be disappointing. After all, it looks like this is less futile than you initially thought it was.~
== Z#KIYOJ IF ~GlobalGT("BKKChat","GLOBAL",5)~ THEN
~That must be disappointing. It is starting to look like you might be wrong about this whole exercise leading to your death.~
== Z#KOVAJ ~And I have you to thank for that, Kiyone.~
= ~Though, the odds are still stacked against us. More in our favour, but still against us.~
== Z#KIYOJ ~You've survived the worst odds for quite a while already, so I'm sure you'll manage.~
== Z#KOVAJ ~I wish I could agree. Though, I get the feeling that the worst has yet to be seen.~
== Z#KIYOJ ~Your comments really do get on my nerves at times.~
== Z#KOVAJ ~I can't help it if someone agrees with me.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("z#gaelanc6", "GLOBAL", 1)
Global("Chapter","GLOBAL",6)
GlobalGT("JermClue", "GLOBAL", 0)
GlobalGT("LOAClue", "GLOBAL", 0)
GlobalGT("DayvClue", "GLOBAL", 0)~ THEN GAELAN z#gaelanc6
~Coo!  It's good to be seeing ye once again.~ [GAELEN26]
= ~Ye be lookin' fairly different from when I last saw you. Couldn't have been an easy way over there, though ye be finding we nay be playin' ye out.~
= ~Well, me sources could be mistaken, but I been told ye might be needin' some help around here, aye?~
== GAELAN IF ~!Dead("c6bodhi")~ THEN
~Me good friend whose key ye be havin' thought it might be good for ye both to catch up, and find something ye can help each other with.~
== GAELAN IF ~!Dead("c6bodhi")~ THEN
~Oh, nearly slipped me mind, a side offer of note for some readin' if ye feel up to it.~
== GAELAN IF ~Dead("c6bodhi")~ THEN
~Best not be talkin' too much, especially not out here about. This note should say it all, it should, so there ye go.~
== GAELAN ~So, I'll be seeing ye about, <CHARNAME>. Good business to ye, heh.~
DO ~SetGlobal("z#gaelanc6", "GLOBAL", 2)
AddJournalEntry(@1020, QUEST)
GiveItemCreate("RenNote",Player1,0,0,0)
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#gaelanc6","GLOBAL",2)
Global("Chapter","GLOBAL",6)
!Dead("c6Bodhi")~ THEN RENAL rennote1auto
~So it is <CHARNAME>, just as I was wondering when you would drop by. I trust you come regarding the note delivered.~
EXTERN RENAL rennote1

CHAIN
IF ~~ THEN RENAL rennote1ask
~Just as I was wondering when you would ask about it. Good to see that Gaelan has been as dependable as he normally is.~
EXTERN RENAL rennote1

CHAIN
IF ~~ THEN RENAL rennote1
~Still, friends as you and I are, there's also an understanding between us. It is important information regarding your friend Kova's case, and it did not cost me nothing to obtain it.~
= ~It wasn't easy coming by such information, in fact it was quite costly and dangerous for my men, and if not for my consideration of you as a business partner, I wouldn't have made the investment.~
= ~So now that you have arrived, I hope to recoup at least some of that investment. What do you think, you won't make my smile disappear now, will you?~
END
IF ~~ THEN REPLY ~Sure, just tell me how much you want and I'll pay.~ GOTO rennote1-1ext
IF ~~ THEN REPLY ~How much do you want for the information, and how do I know it's worth the coin?~ GOTO rennote1-1
IF ~~ THEN REPLY ~I'm sorry, but I'm not interested in hearing about this.~ GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-1ext
~That's a good sport! It's been a bit troublesome to obtain the information, but I know you will well be able to afford it.~
= ~Three thousand gold should be fair enough, I think, for the sacrifices I've made. What say you?~
END
IF ~PartyGoldGT(2999)~ THEN REPLY ~I look forward to hearing what you have for me. Here you go.~ DO ~TakePartyGold(3000) DestroyGold(3000) SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY ~That is a huge sum to expect for information.~ GOTO rennote1-1-2
IF ~~ THEN REPLY ~I do not have the amount that you ask for.~ GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-1
~Is this the first day that we have known each other? I'm sure not even the shrewdest among you would be able to say that any of our exchanges thus far have been less than generous to both of us.~ 
= ~The information is crucial for you, or rather your friend, to say the least, and though I could charge you outrageously for it, as no other would be able to procure it for you, I won't.~
= ~Just enough to cover my costs and the risks my men have undertaken in this investment of mine will do. And the loss of some spare workers, of course.~
= ~Three thousand gold should be fair enough, I think, for the sacrifices I've made. What say you?~
END
IF ~PartyGoldGT(2999)~ THEN REPLY ~I will pay, but this had better be worth it.~ DO ~TakePartyGold(3000) DestroyGold(3000) 	
SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY ~That is a huge sum to expect for information.~ GOTO rennote1-1-2
IF ~~ THEN REPLY ~I do not have the amount that you ask for.~ GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-1-2
~Really, you should know better than that, <CHARNAME>. I do all things with good business sense, and I assure you that is a paltry sum compared to the princely compensation I could ask in return.~
= ~In any case, you will certainly find me the sole purveyor of this precious commodity. And whether or not you believe me, the amount I ask is more than reasonable. So, what will it be?~
END
IF ~PartyGoldGT(2999)~ THEN REPLY ~I will pay, but this had better be worth it.~ DO ~TakePartyGold(3000) DestroyGold(3000) 	
SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY ~I do not have the amount that you ask for.~ GOTO rennote1-2

CHAIN
IF ~~ THEN RENAL rennote1-2
~It is a disappointing thing when returns do not come in as projected, but that is little compared to the wounds of having a trusted partner turn down an initiative like this.~
DO ~SetGlobal("z#gaelanc6", "GLOBAL", 3)~
= ~Still, what can I say? The information isn't going anywhere, nor will it do me much good. As such, my offer remains, whether or not you choose to act on it now.~
== RENAL IF ~Dead("c6bodhi")~ THEN
~So, if fortune should grace you with a change of heart and purse, you can return and we can discuss the offer again.~
== RENAL IF ~!Dead("c6bodhi") 
GlobalGT("ShadowFightBodhi","GLOBAL",0)~ THEN
~For now, I'm afraid more pressing business awaits you with a certain mutual undead acquaintance, and we can speak again after that unpleasant business has been suitably concluded.~
== RENAL IF ~!Dead("c6bodhi") 
Global("ShadowFightBodhi","GLOBAL",0)~ THEN
~For now, I understand that the Shadowmaster himself has called for you, and we can speak again on this offer after that business is suitably concluded.~
== RENAL
~Till next time, <CHARNAME>.~
EXIT

CHAIN
IF ~~ THEN RENAL rennote2
~Pleasant words to hear, indeed. I trust you have come to your senses regarding my previous offer?~
= ~It's not much that I'm asking, considering how crucial and difficult this information is to come by. Have you any idea about the time, the risks, and the losses my men have taken as a result of this?~
= ~But enough, I shan't bore you with the details. Three thousand gold will be enough compensation for the costs involved in bringing this information to you.~
END 
IF ~PartyGoldGT(2999)~ THEN REPLY ~I will pay, but this had better be worth it.~ DO ~TakePartyGold(3000) DestroyGold(3000) SetGlobal("z#gaelanc6","GLOBAL",4) AddexperienceParty(9000)~ GOTO rennote3
IF ~~ THEN REPLY ~That is a huge sum to expect for information.~ GOTO rennote2-2
IF ~~ THEN REPLY ~I do not have the amount that you ask for.~ GOTO rennote2-2

CHAIN
IF ~~ THEN RENAL rennote2-2
~What a pity, but sometimes things aren't what we hope they would be.~
= ~If you change your mind, do feel free to speak to me again on the matter. I doubt I'd be going anywhere, and I always make time for business.~
EXIT

CHAIN
IF ~~ THEN RENAL rennote3
~Excellent, I knew you wouldn't let me down.~
= ~Yes, the details. I understand you were looking into the murders of some nobles, and I took the liberty of finding some things out myself, so to speak.~
= ~Apparently the charges centre around the weapon used to kill the three chaps, and is of a make largely believed to be uniquely held by your friend Kova.~
= ~On a hunch, I've had some of my men look into the workings of that other guildmaster, Seida, I believe, who wanted your friend dead. It took some risk and cost me a few men, but the results make it rather promising.~
= ~He does recently seem to have a bladed weapon he enjoys using very much. Very versatile, I understand, and its make and form does very well suit the marks on the bodies.~
= ~Of course, these are just conclusions drawn from the print of the weapon on some... material I have. Not that the courts will find it convincing of course, unless they have the weapon to examine for themselves.~
END
IF ~~ THEN REPLY ~Is there a way to find him, or to obtain the blade?~ GOTO rennote3-1
IF ~~ THEN REPLY ~And how do you expect me to make use of this information?~ GOTO rennote3-1
IF ~~ THEN REPLY ~If there isn't more information than this, I would consider my money ill spent.~ GOTO rennote3-2
IF ~~ THEN REPLY ~Then this information is worthless to me and you should return my gold. Now.~ GOTO rennote3-2

CHAIN
IF ~~ THEN RENAL rennote3-1
~I was just coming round to that. The gold of course didn't just secure the information, though it made some compensation for it.~
EXTERN RENAL rennote4

CHAIN
IF ~~ THEN RENAL rennote3-2
~Now now, I assure you your gold has not been wasted. While it was primarily information you bought, I have seen to it that it is considerably more than just that.~
EXTERN RENAL rennote4

CHAIN
IF ~~ THEN RENAL rennote4
~I have taken the initiative of investigating various avenues for you to obtain the evidence you need. After all, there is little purpose in giving you the information, unless you can act on it.~
= ~There might be the possibility of the Shadowmaster himself arranging for Seida to meet with him, and that's when perhaps you might find yourself well and able to obtain the evidence you need.~
== RENAL IF ~!Dead("c6bodhi")~ THEN
~But I think it is unlikely he'd risk losing more of his guildmasters before the external threat has been put to rest. Namely, a certain vampire we are both well acquainted with.~
== RENAL IF ~Dead("c6bodhi")~ THEN
~Now that Bodhi has been well disposed of, I'm sure he'd be very willing to speak to you and your friends on that matter.~
== RENAL ~Regardless, when the time comes you'll probably need to give him a few very good reasons why he should turn over one of his best guildmasters, and my closest rival in fact, to you.~
= ~Oh yes, before you go, a word of friendly advice just between the two of us - please do remember that he is the Shadowmaster, for a good reason.~
= ~Good luck, <CHARNAME>.~
DO ~AddJournalEntry(@1021, QUEST)~ EXIT


// Baevrin Starts

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",2)~ THEN Z#MESSEN bae1
~Greetings again, lady Kiyone and <CHARNAME>. Chief Inspector Brega has sent me to deliver some news regarding your investigation.~
= ~After reviewing your case files and findings, he has decided to grant you access to his witness, who survived the poisoning of Shanro.~
== Z#KIYOJ ~This is welcome news, Myroven.~
== Z#MESSEN ~I am glad you think such of this arrangement.~
== Z#MESSEN IF ~!Global("GovtGuards", "GLOBAL", 4)~ THEN
~Lady Bylanna has also asked me to let you know that the evidence you have uncovered has been enough for her to grant you free rein in doing your work.~
= ~Our men will no longer be sent out to seek you and your companions. She trusts that you will eventually return the accused to stand trial once you feel your investigations have concluded.~
== Z#KIYOJ IF ~!Global("GovtGuards", "GLOBAL", 4)~ THEN
~Thank you, Myroven. Please tell Bylanna I am most grateful and thankful for the trust and freedom given to me in conducting my investigation. I will not fail her trust.~ 
== Z#MESSEN IF ~!Global("GovtGuards", "GLOBAL", 4)~ THEN
~It is also a great personal pleasure for me to deliver such good news. Though it is our duty, it would disturb both myself and Bylanna greatly to send men out after one as true as you and one as probably innocent as your companion.~
== Z#KIYOJ IF ~!Global("GovtGuards", "GLOBAL", 4)~ THEN
~Thank you, Myroven. I appreciate that very much, and I think so does the accused.~
== Z#MESSEN IF ~!Global("GovtGuards", "GLOBAL", 4)~ THEN
~You are most welcome, though really, you only have your own skill in obtaining the necessary evidence to thank. If not for your findings, Brega would not have been persuaded to disclose the boy's whereabouts.~
DO ~SetGlobal("GovtGuards", "GLOBAL", 4)~ 
== Z#MESSEN ~You will be able to find the witness in the second floor of the Five Flagons Inn, and the men who are protecting him have already been given descriptions of yourself and <CHARNAME>.~
= ~If you wish me to, I can take you to where the witness it, and make sure that none of us are being followed. Otherwise I will be there waiting for you, to see to it that nothing untoward happens.~
END
IF ~~ THEN REPLY ~Take us to the witness then, Myroven.~ GOTO bae1-1
IF ~~ THEN REPLY ~I would like to check with Brega about the details first.~ GOTO bae1-2
IF ~CheckStatGT(Player1, 12, INT)~ THEN REPLY ~Is there a need for you, Bylanna's messenger, to watch over Brega's witness? Does he not trust us?~ GOTO bae1-3

CHAIN
IF ~~ THEN Z#MESSEN bae1-3
~Not exactly, but Bylanna and myself spent quite some time persuading Brega regarding releasing the details of his witness to us.~
= ~If anything happens to this witness, not only will it be harder for us to deal with Brega in future, but his previous statement given in the court of law will remain standing, forever incriminating your friend Kova.~
END
IF ~~ THEN REPLY ~Take us to the witness then, Myroven.~ GOTO bae1-1
IF ~~ THEN REPLY ~In that case it would be best for me to check with Brega about the details first.~ GOTO bae1-2

CHAIN
IF ~~ THEN Z#MESSEN bae1-2
~Very well, I will meet you there where the witness is. Till then I wish you well.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",3)
AddJournalEntry(@1030, QUEST)
EscapeAreaMove("AR0511",430,955,2)~ EXIT

CHAIN
IF ~~ THEN Z#MESSEN bae1-1
~Very well, follow me and I will take you there.~
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
~This is a private room. Who are you and what is your business here?~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",5)~
== Z#KIYOJ ~I am Kiyone, investigator of this case regarding the poisoning of Shanro, acting on behalf of magistrate Bylanna and Chief Inspector Brega. We are here to speak to the witness.~
== Z#Merahn ~They certainly match the descriptions given.~
== Z#Messen ~These are indeed those to whom Chief Inspector Brega has authorised access to the witness, so let them pass and do not fear.~
== Z#Merahn  ~Very well my lady. You will find the boy Baevrin at the back of the room, lady Kiyone.~
== Z#Terahn ~Go easy on the lad. Things haven't been easy for all of us, but more so for him.~
= ~At least we know our wives and children are waiting for us, but this boy has lost everything dear to him, and has hardly been able to move about Athkatla for fear of the Shadow Thieves.~
== Z#Ardel ~If it weren't for the guild war I think they would have found us already. We've been moving about for more than a few months now.~
= ~Baevrin, there's some people here to see you.~
DO ~ActionOverride("Z#Baev", MoveToObject(Player1) ) SmallWait(22) 
ActionOverride("Z#Baev",StartDialogNoSet(Player1) )~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",5)~ THEN Z#BAEV BaevPlot51
~What do you want?~
== Z#KIYOJ ~It's about the poisoning of your village. We would like to know who and what you saw poisoning the well sources of the village.~
== Z#Baev ~How many times do I have to say this? It was Kova Kashiro.~
== Z#KIYOJ ~Kova Kashiro? What kind of appearance did he have?~
== Z#Baev ~Moderately long dark blue hair, mid-height, slender built.~
== Z#KIYOJ ~When did this happen, and how far were you from it?~
== Z#Baev ~What difference does it make? The man's guilty that's all there is to it.~
= ~But it looks as if you're not going to leave til I answer you, so I'll say it then.~
= ~It was in the night, near the forest area close to the hills, near the water sources. I was enjoying the view until... they showed up.~
= ~The rest is the usual. There was some fight, good thing it was far from me, but the guy with dark blue hair killed some and the rest ran, so he got to poison the water and then left.~
== Z#KIYOJ ~I see. Why didn't you warn your village?~
== Z#Baev ~I was on my way back down to do so when I got caught by some others. They were content to let me go after two days. I couldn't do anything to stop them from killing everybody.~
= ~(sigh) Look, I don't get any kicks out of telling this over and over again. Any other questions? If not just leave me alone. It's bad enough everyone died and I'm now perpetually on the run.~
END
IF ~~ THEN REPLY ~Why did they catch you in the first place?~ GOTO BaevPlot511
IF ~~ THEN REPLY ~Why didn't they simply kill you?~ GOTO BaevPlot512
IF ~~ THEN REPLY ~Do you know what they were there for?~ GOTO BaevPlot513
IF ~~ THEN REPLY ~Do you know why they fought with that guy?~ GOTO BaevPlot514
IF ~~ THEN REPLY ~Was this Kova fellow with them before you saw any fighting happen?~ GOTO BaevPlot519
IF ~CheckStatGT(Player1,13,WIS) CheckStatGT(Player1,13,INT)~ THEN REPLY ~If they were willing to let you go, why are they now still after you?~ GOTO BaevPlot521
IF ~CheckStatGT(Player1,17,WIS)~ THEN REPLY ~Were you alone in the forest at night? Or was there someone with you enjoying the view?~ GOTO BaevPlot522
IF ~CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,16,INT)~ THEN REPLY ~How did you manage to tell his hair was dark blue at a distance while at night?~ GOTO BaevPlot523
IF ~~ THEN REPLY ~It's all right, there's no more questions I'd like to ask.~ GOTO BaevPlot54

CHAIN
IF ~~ THEN Z#BAEV BaevPlot51Stop
~Yes, it was really all very upsetting, and please just quickly ask your questions so I can be left in peace without having to think of all that has happened.~
END
IF ~~ THEN REPLY ~Why did they catch you in the first place?~ GOTO BaevPlot511
IF ~~ THEN REPLY ~Why didn't they simply kill you?~ GOTO BaevPlot512
IF ~~ THEN REPLY ~Do you know what they were there for?~ GOTO BaevPlot513
IF ~~ THEN REPLY ~Do you know why they fought with that guy?~ GOTO BaevPlot514
IF ~~ THEN REPLY ~Was this Kova fellow with them before you saw any fighting happen?~ GOTO BaevPlot519
IF ~CheckStatGT(Player1,13,WIS) CheckStatGT(Player1,13,INT)~ THEN REPLY ~If they were willing to let you go, why are they now still after you?~ GOTO BaevPlot521
IF ~CheckStatGT(Player1,17,WIS)~ THEN REPLY ~Were you alone in the forest at night? Or was there someone with you enjoying the view?~ GOTO BaevPlot522
IF ~CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,16,INT)~ THEN REPLY ~How did you manage to tell his hair was dark blue at a distance while at night?~ GOTO BaevPlot523
IF ~~ THEN REPLY ~It's all right, there's no more questions I'd like to ask.~ GOTO BaevPlot54

CHAIN
IF ~~ THEN Z#BAEV BaevPlot511
~I'm not sure, but I think they caught me because they were hunting for that Kova guy, and held me so I couldn't warn the rest of the village. After that they set me free.~
END
IF ~~ THEN REPLY ~I find it odd that they didn't kill you.~ GOTO BaevPlot512
IF ~~ THEN REPLY ~So they were the ones who wanted your entire village dead?~ GOTO BaevPlot513
IF ~~ THEN REPLY ~Do you know why they fought with that guy?~ GOTO BaevPlot514
IF ~~ THEN REPLY ~Was this Kova fellow with them before you saw any fighting happen?~ GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot512
~They did want to, I think... but they wanted revenge on that Kova guy, and they knew what I saw, so I think they set me free so the government would know who was responsible.~
END
IF ~~ THEN REPLY ~But it didn't make a difference - weren't they the ones who wanted to kill everyone in your village?~ GOTO BaevPlot513
IF ~~ THEN REPLY ~Do you know why they fought with that guy?~ GOTO BaevPlot514
IF ~~ THEN REPLY ~How did they know what you saw?~ GOTO BaevPlot515
IF ~~ THEN REPLY ~Was this Kova fellow with them before you saw any fighting happen?~ GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot513
~I am not sure, maybe he was the one who wanted to kill everyone but they just wanted to drug us all, or maybe they were there for something else after all.~
END
IF ~~ THEN REPLY ~But if they really didn't want to kill everyone, they wouldn't have stopped you from warning them, right?~ GOTO BaevPlot516
IF ~~ THEN REPLY ~Was this Kova fellow with them before you saw any fighting happen?~ GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot514
~I have no idea... maybe they did something that upset him. Maybe he wanted to kill everyone but they just wanted to drug us... I don't really know.~
END
IF ~~ THEN REPLY ~But if they really didn't want to kill everyone, they wouldn't have stopped you from warning them, right?~ GOTO BaevPlot516
IF ~~ THEN REPLY ~Was this Kova fellow with them before you saw any fighting happen?~ GOTO BaevPlot519

CHAIN
IF ~~ THEN Z#BAEV BaevPlot515
~They asked me.. and I told them I didn't see anything, and they were going to kill me, and then I... told them what I saw, and after that they decided they would keep me alive.~
END 
IF ~CheckStatGT(Player1,15,WIS)~ THEN REPLY ~Was it what you saw, or what they wanted you to see, that kept you alive?~ GOTO BaevPlot525
IF ~~ THEN REPLY ~I see. That couldn't have been easy.~ EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot525
~Wha...? What do you mean by that?~
== Z#KIYOJ ~The thieves wouldn't have let you off so easily, Baevrin, unless you agreed to do something for them. Such as saying what they wanted you to say, rather than what actually happened.~
== Z#BAEV ~I didn't say that...~
== Z#KIYOJ ~Such as seeing a man with dark blue hair on a dark night from a distance, who moved to poison the water sources - something that didn't happen.~
== Z#BAEV ~I...~
= ~No, it did happen! Please, I told the Chief the truth, don't doubt me - it's the truth, really it is, you must believe me!~
== Z#KIYOJ ~Something is troubling you, Baevrin, that's why you've been keeping the truth from us. Look, only if you tell us, might we be able to help you.~
DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot516
~I really don't know, look it doesn't matter what they wanted, or whether I might have warned the rest of them. All I know is that everyone is dead, dead... except for me. And all I want is to... I don't know anymore.~
END
IF ~CheckStatGT(Player1,15,INT)~ THEN REPLY ~If they wanted to poison the village, same as what Kova wanted, then they should not have fought in the first place.~ GOTO BaevPlot526
IF ~~ THEN REPLY ~I hope you find some way to put all this behind you and know what you want.~ EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot526
~Ah, like I said I'm not very sure why they fought. Maybe it was the reward or maybe they said something to offend him.~
== Z#KIYOJ ~Or he was the one who didn't want to poison your village, and the thieves were the ones who wanted to.~
== Z#BAEV ~I didn't say that...~
== Z#KIYOJ ~He wasn't the one who poisoned the village, after all, was he?~
== Z#BAEV ~I definitely didn't say that! Please, please don't put words in my mouth!~
== Z#KIYOJ ~Something is troubling you, Baevrin, that's why you've been keeping the truth from us. Look, only if you tell us, might we be able to help you.~
DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot519
~I don't know, since if not for the fighting and all that, I probably would never have seen them. Maybe he attacked them, maybe he was one of them, maybe he was their leader, I don't know, I really don't.~
END
IF ~CheckStatGT(Player1,13,WIS)~ THEN REPLY ~Do you remember what most of them were wearing, and what he was wearing?~ GOTO BaevPlot529
IF ~~ THEN REPLY ~It's all right, I'm doubt it's easy to spot them, and hard to remember after all that you've went through.~ EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot529
~Yes, they were all wearing dark colored cloaks, with their hoods drawn up. At least that's what I remember, I think.~
END
IF ~CheckStatGT(Player1,13,INT)~ THEN REPLY ~If that's the case, how did you manage to see the color of his hair? Especially at night and from a distance?~ GOTO BaevPlot523
IF ~~ THEN REPLY ~Thank you. It must hard to remember such details after all that you've went through.~ EXTERN Z#BAEV BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot521
~I don't know, I just wanted to keep myself safe so I thought to ask for some protection...~
== Z#ARDEL ~There have been attempts made on his life since. Mainly Shadow Thieves~
== Z#BAEV ~Yes... I don't know I think now that I've made my statement to the Chief they want to make sure I don't change it or something... they don't like witnesses much.~
END
IF ~OR(2) CheckStatGT(Player1,15,INT) CheckStatGT(Player1,15,WIS)~ THEN REPLY ~Or maybe they wanted to make sure you don't tell the inspector the truth.~ GOTO BaevPlot524
IF ~~ THEN REPLY ~I see. All this being hunted around the city, couldn't have been easy.~ GOTO BaevPlot51Stop

CHAIN
IF ~~ THEN Z#BAEV BaevPlot524
~The truth...? I... what are you talking about? I told the Chief all that I had seen...~
== Z#KIYOJ ~I don't think you did. You only said what they wanted you to say you had seen.~
= ~It's all right though, we're not going to hurt you. We're here to help you, but we won't be able to unless we know the full story.~
DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot522
~Wha...? How did you know about her...?~
== Z#KIYOJ ~So there was someone with you. Who was it, and why isn't she a witness, like you?~
DO ~AddExperienceParty(15000)~ EXTERN Z#BAEV BaevPlot55

CHAIN
IF ~~ THEN Z#BAEV BaevPlot523
~What? I... oh. Err...~
= ~The moonlight shone on his head, I think... oh. Yes, that must be it.~
= ~I can't really remember, but it's definitely a man, definitely dark blue hair... but it did look a bit black, I'm not really sure.~
== Z#KIYOJ ~There's something you are keeping from us, Baevrin, and we need to know what it is, or we won't be able to help you.~
END 
IF ~OR(2) !CheckStatGT(Player1,14,WIS) !CheckStatGT(Player1,16,INT)~ THEN DO ~AddExperienceParty(12000)~ EXTERN Z#BAEV BaevPlot55
IF ~CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,16,INT)~ THEN DO ~AddExperienceParty(18000)~ EXTERN Z#BAEV BaevPlot55

CHAIN 
IF ~~ THEN Z#BAEV BaevPlot54
~That's a relief, then - now I can just think about...~
== Z#KIYOJ ~Sorry about this, I just have a few more questions for you, Baevrin. Just a bit longer will do.~
= ~I was just wondering, how did you manage to see that the man's hair was dark blue at a distance while at night?~
EXTERN Z#BAEV BaevPlot523

CHAIN
IF ~~ THEN Z#BAEV BaevPlot55
~I... no, I can't say, I mustn't, or they will...~
== Z#KIYOJ ~Or they will what? They took her, didn't she?~
= ~And you had to say what they wanted you to say, or something would happen to her.~
== Z#BAEV ~I... yes.~
== Z#KIYOJ ~They aren't going to give her back to you, you know. They want to kill you, even now.~
== Z#BAEV ~I... I know. But, I can't breathe a word, say a thing, or she will die. And if I try to find Brega now, they will definitely kill me, maybe even before I reach him... And if I die, she dies, because they will no longer have a use for her...~
== Z#KIYOJ ~Don't worry, we won't breathe a word to anyone else. The people here will stay with you, while we go and find your girl. What's her name, how does she look like?~
== Z#BAEV ~Her name is Adylin, about my age, brownish hair, lovely dark eyes... but, I don't know where she is. I haven't a clue, I haven't seen her in like forever... maybe she's dead, even!~
= ~If I knew for sure that if I died she'd be all right, I would have, but I know they'd kill her once they're sure I'm dead... and I've no idea what to do.~
== Z#KIYOJ ~It's all right, we'll find her. And when we come back, you can tell us what really happened.~
== Z#BAEV ~I thought you came to find out what really happened...~
== Z#KIYOJ ~We came to find out why you lied to Brega. We've another eyewitness as well, but he's also under protection, I'm afraid, so we can't say who he is.~
== Z#MESSEN ~That's an interesting way of putting it, my lady.~ 
== Z#KIYOJ ~Thank you, Myroven.~
== Z#MESSEN ~You're welcome. And do not worry, Baevrin, about me reporting your secret. I do not look kindly on perjury, but I understand your difficulty and will stay here to ensure your safety while they are gone.~
== Z#ARDEL ~I'm afraid we're not staying here, Lady Myroven. Even meeting here was more dangerous than what we prefer. We will be moving elsewhere and setting up a new rendezvous point.~
= ~We'll meet you on the second storey of a deserted house north of this place, where there's a small table for wares outside, beside a cart.~
== Z#MESSEN ~That will do, then.~
== Z#BAEV ~Thank you for your kindness, and please, bring Adylin back to me. If I could just see her once more before I die, I will be content.~
== Z#MESSEN ~Speak not of such things, boy! You do not know what you are talking about. Life is more precious than that.~
== Z#ARDEL ~Good luck on your search, <CHARNAME> - we will have to be going now before the enemy realises where we are.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",6) 
AddJournalEntry(@1031, QUEST)
SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",2400) // 8 hours	
ReallyForceSpell("Z#BAEV",WIZARD_INVISIBILITY)
ReallyForceSpell("Z#TERAHN",WIZARD_INVISIBILITY)
ReallyForceSpell("Z#MERAHN",WIZARD_INVISIBILITY)
ReallyForceSpell("Z#MESSEN",WIZARD_INVISIBILITY)
ReallyForceSpell(Myself,WIZARD_INVISIBILITY)
ActionOverride("Z#BAEV",MoveBetweenAreas("AR0528",[620.270],3) )
ActionOverride("Z#TERAHN", MoveBetweenAreas("AR0528",[490.370],4) )
ActionOverride("Z#MERAHN", MoveBetweenAreas("AR0528",[360.280],2) )
ActionOverride("Z#MESSEN", MoveBetweenAreas("AR0528",[475.285],2) )
MoveBetweenAreas("AR0528",[430.215],0)~ EXIT

CHAIN
IF ~GlobalGT("Z#BaevrinPlot","GLOBAL",5)
GlobalLT("Z#BaevrinPlot","GLOBAL",11)~ THEN Z#BAEV Misc
~I hope you bring Adylin back to me soon.~
EXIT

CHAIN
IF ~OR(2) AreaCheck("AR0522") AreaCheck("AR0509")
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BvPlotComm1","LOCALS",0)~ THEN Z#KOVAJ Z#BvPlotComm1
~I was wondering why the witness would say such a thing about me. No surprise though, that the thieves are behind this.~
DO ~SetGlobal("Z#BvPlotComm1","LOCALS",1)~
= ~It was easy to be angered at first about his blatant lies, but he's as much a victim as I am.~
== Z#KIYOJ ~That is still a problem, though, as we have almost no clues to follow up on his missing girlfriend. If we can't find her, we might have little choice but to force him to tell Brega.~
== Z#KOVAJ ~I hope it won't come to that, Kiyone. He has lost more than I have, and if there is anything we can do for him, we should.~
== Z#KIYOJ ~I see.~
== Z#KOVAJ ~So, how did I do?~
== Z#KIYOJ ~Flying colors.~
EXIT

// Arledrian in BvP7

CHAIN
IF WEIGHT #-1 ~OR(2)
Global("Z#BaevrinPlot","GLOBAL",6)
Global("Z#BaevrinPlot","GLOBAL",7)
Global("Z#BvPlotArdelSpoke","GLOBAL",0)~
THEN ARLED BvPlot7
~A fair <DAYNIGHT> to you, my <LADYLORD>. Gaelan thought we might be able to do business, and so I have been looking forward to seeing you. You came from Brega's witness, I believe.~
DO ~SetGlobal("Z#BvPlotArdelSpoke","GLOBAL",1)~
== Z#KIYOJ ~They've moved from their positions since - you won't be able to find them.~
== ARLED ~That's all right, my lady. I am already speaking to the one I'm looking for.~
= ~I have some information on the whereabouts of the boy's girl, if you are willing to pay for it.~
== Z#KIYOJ ~How much?~
== ARLED ~Five hundred gold pieces will do. It is a tidy fortune for a simple man like myself.~
END
IF ~PartyGoldGT(499)~ THEN REPLY ~Here you go. Take your gold and spill the beans.~ 
DO ~TakePartyGold(500) DestroyGold(500)~ GOTO BvPlot7Yes
IF ~~ THEN REPLY ~Is there no end to this extortion?~ GOTO BvPlot7Half
IF ~~ THEN REPLY ~I refuse to pay, I've spent more than enough to get this far!~ GOTO BvPlot7No

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",7) Global("Z#BvPlotArdelSpoke","GLOBAL",1)~ 
THEN ARLED BvPlot7back
~I see you are back. Have you changed your mind about paying the 500 gold for learning the whereabouts of the girl who belongs to the witness?~
END
IF ~PartyGoldGT(499)~ THEN REPLY ~Here's your gold - now talk!~ 
DO ~TakePartyGold(500) DestroyGold(500)~ GOTO BvPlot7Yes
IF ~~ THEN REPLY ~I refuse to pay your little fee.~ GOTO BvPlot7No

CHAIN
IF ~~ THEN ARLED BvPlot7No
~As you wish, though you may find you will go no further. Renal will have nothing for you this time, and even if he did you'd find the price is far steeper.~
= ~You know where to find me if you should change your mind. Meantime, farewell.~
END
IF ~!AreaCheck("AR0312")~ THEN DO ~EscapeArea()~ EXIT
IF ~AreaCheck("AR0312")~ THEN EXIT

CHAIN
IF ~~ THEN ARLED BvPlot7Half
~This is just business, <CHARNAME>. It would be unhealthy for me as well, if I did business without any mind to profit. Others would start to question my worth to my guild.~
= ~So what will it be? Five hundred gold pieces is a fair price, a mere drop in the ocean compared to prices elsewhere, and mere small change to a <LADYLORD> as fine as yourself, I wager.~
END
IF ~PartyGoldGT(499)~ THEN REPLY ~Bah, here's your gold - now talk!~ 
DO ~TakePartyGold(500) DestroyGold(500)~ GOTO BvPlot7Yes
IF ~~ THEN REPLY ~I refuse to pay, I've spent more than enough to get this far!~ GOTO BvPlot7No

CHAIN
IF ~~ THEN ARLED BvPlot7Yes
~My thanks, <CHARNAME>. The girl you want who belongs to the witness is being held in Delosar's Inn.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",8)
AddJournalEntry(@1032, QUEST)
SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",1800) ~ // 6 hours
= ~We'd like to thank you in advance for getting rid of the ones guarding her - they've been doubting Gaelan's veracity for a while now.~
= ~Seida will not be happy, but that is his loss.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~
~So we've given you the gold to have the privilege of doing your dirty work for you. What a familiar turn of events.~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN
~I don't like the thought of being involved in all these double-crossing and things. Playing tricks and stealing, maybe, but killing people is not really my idea of fun.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN
~Such conniving in dealings are only to be expected among thieves. You might be on our side today, but who knows which side you will be on tomorrow?~
== ARLED ~We only have so many means, and we must do what we can to survive.~
== ARLED ~I suggest you move quickly, as they are there to meet with myself, and they'll start to get suspicious if I do not show up on time.~
= ~I doubt they will leave if they think you might be attempting a rescue - more likely they will ask for reinforcements to get that princely amount on your companion's head, nor will they send the girl away in case you decide to leave without fighting.~ 
= ~I might be tempted if I were capable of going up against you, but I have the sense to know better.~
= ~Farewell and good business to you. Renal and Gaelan will be pleased, I'm sure.~
END
IF ~!AreaCheck("AR0312")~ THEN DO ~EscapeArea()~ EXIT
IF ~AreaCheck("AR0312")~ THEN EXIT

BEGIN Z#BvP8

CHAIN
IF ~GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")
Global("Z#BaevrinPlot","GLOBAL",9)~ THEN Z#BvP8 late
~Just as we expected... get them!~
END
IF ~XPGT(Player1,1100000)~ THEN 
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",10)
DestroyItem("MinHp1")
	CreateCreature("Z#Assas2", [377.320], 14)
	CreateCreature("Z#Assas2", [630.490], 6)
CreateCreature("Z#Assas3", [585.120], 0)
CreateCreature("Z#Assas3", [595.255], 0)
CreateCreature("Z#Assas3", [735.340], 0)
Enemy()~ EXIT
IF ~!XPGT(Player1,1100000)~ THEN 
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",10)
DestroyItem("MinHp1")
	CreateCreature("Z#Assas2", [377.320], 14)
	CreateCreature("Z#Assas2", [630.490], 6)
	CreateCreature("Z#Arch2", [550.602], 8)
	CreateCreature("Z#Arch2", [260.384], 12)	
CreateCreature("Z#Assas2", [585.120], 0)
CreateCreature("Z#Assas3", [595.255], 0)
CreateCreature("Z#Assas2", [735.340], 0)
Enemy()~ EXIT

CHAIN
IF ~!GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")
Global("Z#BaevrinPlot","GLOBAL",9)~ THEN Z#BvP8 punctual
~What... what are you doing here?~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",10)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Hand the girl over and we'll let you off the hook.~
== Z#BvP8 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~No, I don't think so. He said he'd find out where you were, and while we were expecting him instead of you, we are not unprepared.~
== Z#BvP8 IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
~Never mind, though your arrival was earlier than expected, we still have enough men to deal with the likes of you.~
== Z#BvP8 ~Let's see how you stand up to the might of the Shadow Thieves!~
DO ~DestroyItem("MinHp1")
	CreateCreature("Z#Assas2", [377.320], 14)
	CreateCreature("Z#Assas2", [630.490], 6)
	CreateCreature("Z#Arch2", [550.602], 8)
	CreateCreature("Z#Arch2", [260.384], 12)
Enemy()~ EXIT

BEGIN Z#ADYL

CHAIN 
IF ~	Global("Z#BaevrinPlot","GLOBAL",10)
	!Detect([ENEMY])
	AreaCheck("AR0515")
	!ActuallyInCombat()~ THEN Z#Adyl BvPlot10
~Is... is it safe to come out now? Has all the fighting stopped?~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",11)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~It's safe now. Are you all right, girl?~
== Z#Adyl IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I... I'm all right. I think...~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Good. Let's get going, we're going to take you to see Baevrin.~
== Z#Adyl IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~What? You.. you know him? Is he alive and safe?~
END
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN REPLY ~Yes, he's safe and doing well, and we will gladly take you to him.~ GOTO BvPlot101
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN REPLY ~I need him to testify in a case, so I'm here to rescue you.~ GOTO BvPlot101
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN REPLY ~Just come along, and you'll see him.~ GOTO BvPlot101
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN REPLY ~We're here to rescue you and take you to Baevrin.~ GOTO BvPlot102
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN REPLY ~Good to see you're all right - now let's get you to Baevrin.~ GOTO BvPlot102

CHAIN
IF ~~ THEN Z#ADYL BvPlot101
~Oh he is, he really is! I've been wanting so much to see him!~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~This is certainly... unexpectedly gratifying. And she matches his description rather well.~
== Z#Adyl ~Please please, let's go from here, now! I can't wait to see him again!~
== Z#KIYOJ ~And so you shall, my dear girl.~ 
= ~Come, <CHARNAME>, let us quickly go from here before more thieves arrive.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Let us take care not to leave a trail for any to follow. This might yet be a ploy to find out where Baevrin is.~ 
DO ~ActionOverride("Z#ADYL", MoveBetweenAreas("AR0528",[550.325],10)) 
ActionOverride(Player1,LeaveAreaLUA("AR0528","",[175.443],10))
ActionOverride(Player2,LeaveAreaLUA("AR0528","",[145.413],10))
ActionOverride(Player3,LeaveAreaLUA("AR0528","",[205.473],10))
ActionOverride(Player4,LeaveAreaLUA("AR0528","",[145.473],10))
ActionOverride(Player5,LeaveAreaLUA("AR0528","",[115.443],10))
ActionOverride(Player6,LeaveAreaLUA("AR0528","",[175.503],10))~ EXIT

CHAIN
IF ~~ THEN Z#ADYL BvPlot102
~You're from Baevrin? He's alive and well?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Yes, he is rather well at the moment, and looking forward very much to seeing you.~
== Z#Adyl ~Please please, let's go from here, now! I can't wait to see him again!~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~How unexpectedly gratifying... it is good to see someone this glad.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~But let us take care not to leave a trail for any to follow. This might yet be a ploy to find out where Baevrin is.~ 
DO ~ActionOverride(Player1,LeaveAreaLUA("AR0528","",[175.443],10))
ActionOverride(Player2,LeaveAreaLUA("AR0528","",[145.413],10))
ActionOverride(Player3,LeaveAreaLUA("AR0528","",[205.473],10))
ActionOverride(Player4,LeaveAreaLUA("AR0528","",[145.473],10))
ActionOverride(Player5,LeaveAreaLUA("AR0528","",[115.443],10))
ActionOverride(Player6,LeaveAreaLUA("AR0528","",[175.503],10))
MoveBetweenAreas("AR0528",[550.325],10)~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",11) InMyArea("Z#Adyl")~ THEN Z#Baev BvPlot11
~Adylin, is that really you? Is that really you?~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",12) MoveToObject("Z#Adyl")~
== Z#Adyl ~Oh Baevrin... I thought I would never see you again!~
DO ~MoveToObject("Z#Baev") 
SetCutSceneLite(TRUE)
Wait(2)
SetCutSceneLite(FALSE)
ActionOverride("Z#Baev",StartDialogNoSet(Player1))~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",12) InMyArea("Z#Adyl")~ THEN Z#Baev BvPlot12
~It's all right now, Adylin. The worst is over, everything is going to be fine.~
== Z#Adyl ~All right. But, I'm not going to be separated from you again.~
== Z#Baev ~Adylin, please. There is something I have to do, and it might be dangerous still, to be around me.~
== Z#Adyl ~I don't care, I'm going to go with you.~
== Z#Baev ~I... well I don't want you to leave, either. So...~
= ~I think I'm ready, <CHARNAME>, to see the Inspector to amend my previous witness statement.~
= ~How should we go about it though?~
END 
IF ~~ THEN REPLY ~It's easier to stay undetected if we split up. We'll meet you at the Government building.~ DO ~SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",1800)
SetGlobal("Z#BaevrinPlot","GLOBAL",13)~ EXTERN Z#MESSEN BvPlotOk1a
IF ~~ THEN REPLY ~It maybe easier for them to find us, but I can't risk them finding and silencing you. We'll go to see Inspector Brega together.~ DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",20)~ EXTERN Z#MESSEN BvPlotOk2
IF ~~ THEN REPLY ~It's best if you move on to the next place, and we'll go inform Inspector Brega to meet you at the rendezvous.~ 
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",14)~ EXTERN Z#MESSEN BvPlotOk1b

CHAIN
IF ~~ THEN Z#MESSEN BvPlotOk1a
~That seems a good course of action to take. Here's to when we next meet again.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",13)
AddJournalEntry(@1033, QUEST)~ EXTERN Z#BAEV BvPlotOk1

CHAIN
IF ~~ THEN Z#MESSEN BvPlotOk1b
~That seems a good course of action to take. Here's to when we next meet again.~
= ~Our rendezvous will be at a little house north of the Five Flagons' Inn.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",14)
AddJournalEntry(@1034, QUEST)~ EXTERN Z#BAEV BvPlotOk1

CHAIN
IF ~~ THEN Z#BAEV BvPlotOk1
~Oh and <CHARNAME>, before we go I'd just like to say thank you, for bringing Adylin back to me.~
DO ~ActionOverride("Z#ARDEL", ReallyForceSpell("Z#BAEV",WIZARD_INVISIBILITY) )
ActionOverride("Z#ARDEL", ReallyForceSpell("Z#MESSEN",WIZARD_INVISIBILITY) )
ActionOverride("Z#ARDEL", ReallyForceSpell("Z#MERAHN",WIZARD_INVISIBILITY) )
ActionOverride("Z#ARDEL", ReallyForceSpell("Z#TERAHN",WIZARD_INVISIBILITY) )
ActionOverride("Z#ARDEL", ReallyForceSpell("Z#ADYL",WIZARD_INVISIBILITY) )
ActionOverride("Z#ARDEL", ReallyForceSpell(Myself,WIZARD_INVISIBILITY) )
ActionOverride("Z#ARDEL", DestroySelf())
ActionOverride("Z#MERAHN", DestroySelf())
ActionOverride("Z#TERAHN", DestroySelf())
ActionOverride("Z#MESSEN", DestroyAllEquipment())
ActionOverride("Z#MESSEN", DestroySelf())
ActionOverride("Z#ADYL", DestroyAllEquipment())
ActionOverride("Z#ADYL", DestroySelf())
DestroySelf()~ EXIT

CHAIN
IF ~~ THEN Z#MESSEN BvPlotOk2
~That seems a more dangerous course of action, but the reasoning is sound. Let us set out together then, without delay.~
== Z#Baev ~Oh and <CHARNAME>, before we go I'd just like to say thank you, for bringing Adylin back to me.~
DO ~AddJournalEntry(@1035, QUEST)
SetGlobalTimer("KKCowlT","GLOBAL",9000)
SetGlobal("KKCowl", "GLOBAL", 0)
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
ActionOverride("Z#TERAHN", MoveBetweenAreas("AR0500",[3180.1010],10) )
ActionOverride("Z#MERAHN", MoveBetweenAreas("AR0500",[3240.1010],10) )
ActionOverride("Z#ADYL",MoveBetweenAreas("AR0500",[3180.1070],10) )
ActionOverride("Z#MESSEN", MoveBetweenAreas("AR0500",[3290.960],10) )
ActionOverride("Z#ARDEL", MoveBetweenAreas("AR0500",[3120.1090],10) )
MoveBetweenAreas("AR0500",[3210.1040],10)~ EXIT

CHAIN
IF WEIGHT #-1 ~Dead("Z#Ardel")
Global("Z#BaevrinPlot","GLOBAL",22)~ THEN ARLED BvPlot22
~A good blow, and good riddance.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",23)~ 
= ~Oh, I see you're busy, <CHARNAME>. I'd like to thank you very much - the trail left by a few spell components on the girl made it easy for us to find the man we want.~
END
IF ~~ THEN REPLY ~What are you doing? I thought you were on our side!~ GOTO BvPlot221
IF ~~ THEN REPLY ~Wait till Renal and Gaelan learn of your treachery, then we'll see about that smile on your face!~ GOTO BvPlot221
IF ~~ THEN REPLY ~You treacherous snake! I will have your hide for this!~ GOTO BvPlot221

CHAIN
IF ~~ THEN ARLED BvPlot221
~Do as you will, it makes little difference to me. I've done what I can, and have to be going now.~
= ~Meantime I trust my associates will continue our business with you. A fair <DAYNIGHT> to you, and farewell.~
DO ~EscapeArea()~ 
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~<CHARNAME>, they're going after Baevrin! We have to protect him!~
EXIT

CHAIN
IF WEIGHT #-1 ~Dead("Z#Baev") 
!ActuallyInCombat()
Global("Z#BaevrinPlot","GLOBAL",23)~ THEN Z#MESSEN BvPlot23NotSurv
~At the end of the day, it looks like they have succeeded in their mission, and I have failed in my duty.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The last survivors of Shanro... dead, because of me.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Neither of you are to be blamed. We did what we could, and it just wasn't enough.~
== Z#MESSEN IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~You were right about this man after all, lady Kiyone, but now we have no one left to give a true statement as to what happened.~
== Z#MESSEN ~Still, life must go on. It's too dangerous to stay around here - let us report to Brega what has happened, and return to bury the fallen another day.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",30)
// Brega at 1123.491
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[1100.560],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[1040.500],12))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[1160.620],7))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[1040.620],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[980.560],11))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[1100.680],8))
ActionOverride("Z#TERAHN", MoveBetweenAreas("AR1002",[1160.700],6) )
ActionOverride("Z#MERAHN", MoveBetweenAreas("AR1002",[1190.650],6) )
MoveBetweenAreas("AR1002",[1060.430],14) ~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",30)
Dead("Z#Baev")
AreaCheck("AR1002")~ THEN Z#MESSEN MyroFail
~And that is the full account of all that has happened.~
== HABREGA ~I see. This is... very sad.~
== Z#MESSEN ~I am sorry I have disappointed you, and failed in my duty. There will be a full report written as soon as this is done.~
== HABREGA ~No, you are not to blame. I've always felt something was amiss with his account, and though I should have known Kiyone and <CHARNAME> would be able to see through it the sooner, I had also anticipated it would be dangerous.~
= ~But enough of our losses, what do you think of this development?~ 
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Well, clearly this case is significant enough for the Shadow Thieves to take an effort to plot how to track down and kill the witness.~
== Z#MESSEN IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN 
~Well, clearly this case is significant enough for the Shadow Thieves to take an effort to plot how to track down and kill the witness.~
== Z#MESSEN ~And they sent a force large enough with considerable planning to coordinate the attack, so what he had to say must have been important. But he is now forever silenced.~
== HABREGA IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Even if I had previous cause to, I now have no doubt about your friend's account, Kiyone. However, with the witness dead there is no way to amend his previous statement.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I understand, Chief Inspector.~
== HABREGA IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN 
~Even if I had previous cause to, I now have no doubt about Kova's account which was given to me by Kiyone. However, with the witness dead there is no way to amend his previous statement.~
== HABREGA 
~The best I can do for now is to prepare the relevant reports and take into account what developments I have been kept informed of.~
= ~It is not sufficient to overturn the previous evidence, though it casts doubts on its validity. It will be up to Bylanna to decide on this matter, and she has to do so keeping in mind the demands of the nobility, the government and other factors.~
= ~Meantime, I wish you all the best in what other leads you might have. It would be good to nail the despicable snake behind all of this.~
== Z#MESSEN
~And I will take my leave to reflect on all that has happened, as well as prepare my reports regarding the case. Farewell, my friends.~
DO ~SetGlobal("BaevClue","GLOBAL",1) AddexperienceParty(12000)
AddJournalEntry(@1038, QUEST)
ActionOverride("Z#Terahn", EscapeArea() ) ActionOverride("Z#Merahn", EscapeArea() )
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~!Dead("Z#Baev") 
!ActuallyInCombat()
Global("Z#BaevrinPlot","GLOBAL",23)~ THEN Z#MESSEN BvPlot23Surv
~Looks like our efforts paid off, for now. Are you all right, boy?~
== Z#BAEV ~I.. I'm still alive, I think.~
== Z#MESSEN ~Good. Let us get going now, before more of them come. We will come back to bury our fallen comrades some other day.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",24)
// Brega at 1123.491
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[1100.560],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[1040.500],12))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[1160.620],7))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[1040.620],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[980.560],11))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[1100.680],8))
ActionOverride("Z#TERAHN", MoveBetweenAreas("AR1002",[1160.700],6) )
ActionOverride("Z#MERAHN", MoveBetweenAreas("AR1002",[1190.650],6) )
ActionOverride("Z#ADYL",MoveBetweenAreas("AR1002",[1160.540],7) )
ActionOverride("Z#BAEV", MoveBetweenAreas("AR1002",[1120.540],8) )
MoveBetweenAreas("AR1002",[1060.430],14)~ EXIT

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",24)
!InParty("Kiyone") AreaCheck("AR1002")~ THEN Z#MESSEN BvPlot24Hibrega
~Inspector, we have safely escorted Baevrin back into your presence.~
EXTERN HABREGA BvPlot24

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",24)
InParty("Kiyone") AreaCheck("AR1002")~ THEN Z#KIYOJ BvPlot24Hibrega
~Inspector, we have brought Baevrin to you.~
EXTERN HABREGA BvPlot24

CHAIN
IF ~~ THEN HABREGA BvPlot24
~Really, whatever for? Do you not know the danger in...~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",25)~
== Z#Baev ~I want to change my statement, the one that I signed to. Regarding the events I supposedly witnessed.~
== HABREGA ~What sort of changes are you proposing?~
== Z#Baev ~Nothing but the truth, I suppose.~
= ~I hadn't exactly been honest... but that was because the thieves had taken someone important to me.~
== HABREGA ~I see. And you must be the one who belongs to this boy.~
== Z#Adyl ~Yes... I am.~
== HABREGA ~Perhaps I should have been a little more thorough in my questioning of you, boy. Perjury should not have happened, regardless of duress or otherwise.~
== Z#Baev ~Well, I hope now it will be set right. I... also want to see the guilty ones apprehended, very much. So here is the true account of the matter.~
= ~Adylin and myself were both in the forest that night when we heard the sounds of battle, and saw a band of dark figures doing battle as a few others crept away towards the well sources.~
= ~There were some flashes of light, magic I think, and one managed to break away from the rest amidst the blast, to rush towards those who were by the water sources, but they seemed done and turned back to face him, prepared.~
= ~There was a surge of heat as a ball of fire exploded, and that's when we snapped out of it and decided to run for it, but shortly after that a few of them caught me and Adylin.~
= ~We weren't allowed to warn the villagers, and they took her from me in return for me telling you what they wanted me to.~ 
== HABREGA ~I see. Well, are you willing to sign to an amendment on your statement of witness?~
== Z#Baev ~Yes.~
== HABREGA ~You could well be charged for perjury based on that signature.~
== Z#Baev ~It's the truth, Chief Inspector. If you would charge me for wanting to protect someone I care for, then I...~
== HABREGA ~That is a separate issue. Now, here is the statement - you can sign it, if you wish.~
== Z#Baev ~Done.~
== HABREGA ~Very good. I'm glad you've come to your senses, boy, and no, I'm not going to charge you. You may still want to stay under our protection however, both you and the girl with you.~
== Z#Baev ~I am very grateful, Chief Inspector. I hope you find the real villain soon.~ 
= ~And <CHARNAME>, I just would like to say thank you, from the bottom of my heart.~
== Z#Adyl ~What you have done for Baevrin and me, we shall never forget. May the Gods bless you, always.~
DO ~ReputationInc(1)~
== Z#Messen IF ~InParty("Kiyone")~ THEN 
~Chief Inspector, lady Kiyone, I shall take my leave as well - the two of them will need the protection that I can provide.~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN 
~Thank you, and be careful, Myroven. Godspeed.~
== Z#Messen ~The same to you, my lady. May Helm watch over your path and guide your hand.~
DO ~ActionOverride("Z#Baev", EscapeArea() ) ActionOverride("Z#Adyl", EscapeArea() )
ActionOverride("Z#Terahn", EscapeArea() ) ActionOverride("Z#Merahn", EscapeArea() )
AddJournalEntry(@1039, QUEST)
// SetCutSceneLite(TRUE) 
MoveToPoint([860.580]) // 1060.430
SetInterrupt(FALSE)
SetGlobal("BaevClue","GLOBAL",2)
Wait(1) ActionOverride("HABREGA",StartDialogNoSet(Player1)) SetInterrupt(TRUE)~ EXIT
      
CHAIN
IF WEIGHT #-1 ~Global("BaevClue","GLOBAL",2)
AreaCheck("AR1002")
Global("Z#BaevrinPlot","GLOBAL",25)~ THEN HABREGA BvPlotEnd
~This is a most excellent development. I always knew he was hiding something from me, but no matter how much I pressed him he would not reveal it.~
END
IF ~InParty("Kiyone")~ THEN DO ~ActionOverride("Z#MESSEN",DestroySelf())~ EXTERN HABREGA BvPlotEndKiyo
IF ~!InParty("Kiyone")~ THEN DO ~ActionOverride("Z#MESSEN",DestroySelf())~ EXTERN HABREGA BvPlotEndNoKiyo

CHAIN      
IF ~~ THEN HABREGA BvPlotEndNoKiyo
~Bylanna was right about Kiyone being able to get more out of him, and I am glad I listened to your words, Myroven.~
== Z#MESSEN ~You give me too much credit, Inspector. It was due to lady Kiyone's work and <CHARNAME>'s heroism that we've uncovered this much detail so quickly.~
= ~Here are the reports regarding what I've seen of the developments, and some from Kiyone as well.~
== HABREGA ~Very good. <CHARNAME>, it looks as if there is a high chance that the trial will turn out in favour of your companion.~
= ~All that is left now is to prove that he didn't kill the nobles, and he will certainly leave here acquitted and whole.~
== HABREGA ~Meantime I have confidence that you will find what you need, <CHARNAME>, and I wish you all the best in uncovering the last piece of the puzzle.~
DO ~SetGlobal("BaevClue","GLOBAL",3) SetCutSceneLite(FALSE) 
AddexperienceParty(24000) ActionOverride("Myroven",EscapeArea() )~ EXIT

CHAIN
IF ~~ THEN HABREGA BvPlotEndKiyo
~I thought you two would be able to get more out of him, and you have not disappointed. Congratulations, Kiyone, on the sterling outcome of your work!~
== Z#KIYOJ ~Thank you, Inspector. It's nothing more than what I should have done. Which reminds me, here are the reports that you can refer to as well.~
== HABREGA ~Very good. It looks as if there is a high chance that the trial will turn out in favour of your companion.~
== Z#KIYOJ ~That is good to know.~
== HABREGA ~All that is left now is to prove that he didn't kill the nobles, and he will certainly leave here acquitted and whole.~
== Z#KIYOJ ~Yes, we need more solid evidence about the blade, something that is sufficient for the courts.~
== HABREGA ~And I have confidence that you will find what you need, Kiyone. I wish you and <CHARNAME> all the best, and look forward to seeing that last piece of the puzzle.~
DO ~SetGlobal("BaevClue","GLOBAL",3) SetCutSceneLite(FALSE) 
AddexperienceParty(24000) ActionOverride("Myroven",EscapeArea() )~ EXIT

CHAIN
IF ~~ THEN HABREGA BvPlot14 // Meet you at Rendezvous
~What kind of developments are you talking about?~
== Z#KIYOJ 
~The Shadow Thieves were holding a girl called Adylin hostage, and had threatened to kill her unless Baevrin cooperated by giving you a false account of the incident - an account that made Kova culpable.~
== HABREGA
~That is good to hear - I've always felt something was amiss with his account. Now we'll have to get him to amend his statement, and the matter will be set right.~
= ~I do not see them here yet. What was the arrangement you had among yourselves? Who are the ones escorting Baevrin?~
== Z#KIYOJ ~We were to take you to meet them at a house north of the Five Flagons' Inn, in the bridge district.~
= ~Myroven and the others are escorting Baevrin and Adylin, Chief.~
== HABREGA ~That is welcome news. Lady Myroven is dependable, and Ardelios is well-trained in using his magic for secrecy. The Shadow Thieves shouldn't be able to find them.~
= ~Still, we best hurry. None of the places they lodge in are ever safe for too long, and it's better not to risk things.~
DO ~MoveBetweenAreas("AR0531",[370.425],4)~
== Z#KIYOJ ~Agreed, Inspector. Let us hurry, then, and the sooner we get this done the better.~
DO ~SetCutSceneLite(TRUE)
FadeToColor([10.0],0)
ActionOverride(Player1,LeaveAreaLUA("AR0531","",[550.360],4))
ActionOverride(Player2,LeaveAreaLUA("AR0531","",[550.440],4))
ActionOverride(Player3,LeaveAreaLUA("AR0531","",[550.280],4))
ActionOverride(Player4,LeaveAreaLUA("AR0531","",[630.360],4))
ActionOverride(Player5,LeaveAreaLUA("AR0531","",[630.440],4))
ActionOverride(Player6,LeaveAreaLUA("AR0531","",[630.380],4))
AddJournalEntry(@1037, QUEST)
SetGlobal("Z#BaevrinPlot","GLOBAL",17)~ EXIT

CHAIN
IF ~~ THEN HABREGA BvPlot13 // Meet you at Brega 
~What kind of developments are you talking about?~
== Z#KIYOJ 
~The Shadow Thieves were holding a girl called Adylin hostage, and had threatened to kill her unless Baevrin cooperated by giving you a false account of the incident - an account that made Kova culpable.~
== HABREGA
~That is good to hear - I've always felt something was amiss with his account. So now we'll have to get him to amend his statement, and the matter will be set right.~
== Z#KIYOJ IF ~GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")~ THEN 
~They might yet take a while to arrive, since they won't be travelling as openly as we are with Myroven and the others escorting them.~
== Z#KIYOJ IF ~GlobalTimerExpired("Z#BaevrinPlotT","GLOBAL")~ THEN 
~They should have arrived by now. Myroven and the others were escorting them.~
== HABREGA ~Lady Myroven is dependable, and Ardelios is well-trained in using his magic for secrecy. The Shadow Thieves shouldn't be able to find them.~
== Z#KIYOJ ~I trust they will be well, especially Myroven.~
== HABREGA ~Just to be on the safe side, I'll send out patrols to find and assist in bringing them to us.~
DO ~SetGlobal("Z#BaevrinPlot","GLOBAL",15)
SetCutSceneLite(TRUE)
// Brega at 1123.491
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[1100.560],10))
CreateCreature("AMNG1",[900.650], 10)
ActionOverride("AMNG1",StartDialog("Z#AMNG1","Habrega") )~ EXIT

BEGIN Z#AMNG1

CHAIN
IF ~Global("Z#BaevrinPlot","GLOBAL",15)~ THEN Z#AMNG1 BvPlot15
~Chief Inspector, we found some bodies in the Bridge District. One of them corresponded to your description of Lady Myroven.~
== Z#KIYOJ ~What? No... damn it!~
== HABREGA ~Hurry up and take us there!~
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#BaevrinPlot","GLOBAL",17) FadeToColor([10.0],0)
ActionOverride("AMNG1",DestroySelf() )
ActionOverride(Player2,LeaveAreaLUA("AR0500","",[2990.870],7))
ActionOverride(Player3,LeaveAreaLUA("AR0500","",[3110.990],7))
ActionOverride(Player4,LeaveAreaLUA("AR0500","",[2990.990],7))
ActionOverride(Player5,LeaveAreaLUA("AR0500","",[2930.930],7))
ActionOverride(Player6,LeaveAreaLUA("AR0500","",[3050.1050],7))
ActionOverride(Player1,LeaveAreaLUA("AR0500","",[3050.930],7))
AddJournalEntry(@1036, QUEST)
MoveBetweenAreas("AR0500",[3070.850],10)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BaevrinPlot","GLOBAL",18)~ THEN HABREGA BvPlot18
~It is as I have feared. It seems that we have arrived too late.~
DO ~SetGlobal("BaevClue","GLOBAL",2) SetGlobal("Z#BaevrinPlot","GLOBAL",19)
SetCutSceneLite(FALSE)~
= ~Ardelios was a potent mage, and they must have either surprised him or had skilled mages around to overcome him.~
== Z#KIYOJ ~Myroven is dead as well. The Shadow Thieves must have sent a considerable force, not a chance group, out looking for us or them.~
= ~With Myroven's astuteness and Ardelios' spells, the assassins must have had some way of tracking them, or they wouldn't have been able to find them.~
== HABREGA ~This is disturbing. Lady Bylanna will be most upset about Myroven's death, and clearly this case is significant enough for the Shadow Thieves to take effort to kill the witness and everyone else.~
= ~Even if I had previous cause to, I now have no doubt about your account, Inspector Kiyone. However, with the witness dead there is no way to amend his previous statement.~
== Z#KIYOJ ~I understand, Chief Inspector.~
== HABREGA ~The best I can do for now is to write the relevant reports and take into account what you have informed me of, as well as your word on what he confessed to.~
= ~It is not sufficient to overturn the previous evidence, though it casts doubts on its validity.~
= ~It will be up to Bylanna to decide on this matter, and she has to do so keeping in mind the demands of the nobility, the government and other factors.~
= ~Meantime, I wish you all the best in what other leads you might have. It would be good to nail the despicable snake behind all of this.~
DO ~AddexperienceParty(12000)
SetGlobal("BaevClue","GLOBAL",1)
EscapeAreaMove("AR1002",1123,491,2)~ EXIT

CHAIN 
IF ~Dead("Z#Messen") !InMyArea("Habrega")
InMyArea("Kiyone") InParty("Kiyone")
Global("Z#MyroDead","LOCALS",0)~ THEN Z#KOVAJ MyroDead
~Kiyone, I'm sorry about Myroven.~
DO ~SetGlobal("Z#MyroDead","LOCALS",1)~
== Z#KIYOJ ~She was Lady Bylanna's trusted lieutenant, and a very upright and intelligent person. Apart from the areas which we both know about, she also helped in the initial case details before I met <CHARNAME>.~
= ~Altogether, a woman more than worthy to be a Sentinel.~
== Z#KOVAJ ~She shouldn't have perished on this case of mine.~
== Z#KIYOJ ~Unless she shirked the more dangerous cases, it would only be a matter of time. She knew the risks she was taking, the risks that her job entails. ~
== Z#KOVAJ ~As do you...~ 
= ~Damn Seida! I'll...~
== Z#KIYOJ ~There'll be no talk of vengeance. We will honor her memory by finishing this case off, at least as well as we possibly can with this development.~
EXIT

// Edwin outside the Party before Seida Meeting

CHAIN
IF WEIGHT #-1 ~Global("KickedOut","LOCALS",1)
GlobalGT("z#gaelanc6","GLOBAL",3)
Global("Z#MeetingSeida","GLOBAL",0)~ THEN EDWINP z#iambusymakingpreps
~Do not waste my time with your idle chatter. I am busy making preparations.~
END
IF ~~ THEN REPLY ~I need your skills and would like for you to join me.~ EXTERN EDWINP z#notwantjoin
IF ~~ THEN REPLY ~Making preparations for what?~ EXTERN EDWINP z#askwhatprep
IF ~~ THEN REPLY ~Good bye and good riddance then.~ EXTERN EDWINP z#leave

CHAIN
IF ~~ THEN EDWINP z#askwhatprep
~You asks as if the likes of your puny intellect would be able to comprehend such intricacies. Now stop wasting my time and leave me to my work.~
END
IF ~~ THEN REPLY ~I need your skills and would like for you to join me.~ EXTERN EDWINP z#notwantjoin
IF ~~ THEN REPLY ~Good bye and good riddance then.~ EXTERN EDWINP z#leave

CHAIN
IF ~~ THEN EDWINP z#notwantjoin
~Bah, it certainly is well within the behaviour of fools to not know when they should leave! I have important work to do and have no time for monkeys like you!~
END
IF ~~ THEN REPLY ~How much gold would make it worth your while to join me?~ EXTERN EDWINP z#askjoinmoney
IF ~~ THEN REPLY ~Making preparations for what?~ EXTERN EDWINP z#askwhatprep
IF ~~ THEN REPLY ~Good bye and good riddance then.~ EXTERN EDWINP z#leave

CHAIN
IF ~~ THEN EDWINP z#leave
~Excellent, then I can finally be rid of you idiots.~
= ~But it will be best to leave here entirely, lest you change your mind and disturb me with more of your simian noises.~
DO ~ReallyForceSpell(Myself, WIZARD_STONE_SKIN)
ReallyForceSpell(Myself, WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT

CHAIN
IF ~~ THEN EDWINP z#askjoinmoney
~It would take no less than 500 gold to convince me to put up with your company, the amount being acceptably descriptive of how asinine your company is, especially in the midst my work.~
END
IF ~~ THEN REPLY ~Forget it, I'm not paying to put up with your insults, Edwin.~ EXTERN EDWINP z#leave
IF ~PartyGoldGT(499)~ THEN REPLY ~I need your services, and I will pay for it.~ 
DO ~TakePartyGold(500) DestroyGold(500)~ EXTERN EDWINP z#moneyjoin

CHAIN
IF ~~ THEN EDWINP z#moneyjoin
~Excellent! Perhaps you are less of an imbecile than I thought, being able to appreciate value when occasion calls for it.~
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
~<CHARNAME>, I still have doubts about Edwin, and the idea of having to watch my back while facing Seida does not appeal to me.~ 
DO ~SetGlobal("Z#doubtededwin","GLOBAL",1)~
== Z#KIYOJ ~Perhaps you should talk to him and if possible come to an agreement. Seida will be ready for us, and we had best be ready for whatever might happen.~
EXIT

// Edwin Talk

CHAIN
IF ~	Global("Z#doubtededwin","GLOBAL",1)
	Global("Z#GotGameDream","GLOBAL",0)
	InParty("Edwin") InMyArea("Edwin")
	InPartyAllowDead("Kiyone")
	InPartyAllowDead("Kova")
	OR(2)
		Global("Z#gaelanc6","GLOBAL",6)
		Global("Z#gaelanc6","GLOBAL",7)~ THEN PLAYER1 Z#checkwithedwin
~Remembering what Kova and Kiyone had warned you of earlier, you consider if you should speak to your companion Edwin to make sure that he intends no treachery during your upcoming meeting with Seida.~
DO ~SetGlobal("Z#doubtededwin","GLOBAL",2)~
END
IF ~~ THEN REPLY ~Excuse me, Edwin, I would like to have a private word with you.~ EXTERN EDWINJ Z#edwinpolite
IF ~~ THEN REPLY ~Edwin, I demand to know what you are up to and what exactly are your reasons for keeping company with us.~ EXTERN EDWINJ Z#edwindemand
IF ~~ THEN REPLY ~(do nothing and just rest)~ DO ~RestParty()~ EXIT

CHAIN
IF ~~ THEN EDWINJ Z#edwinpolite
~As if it's not enough that I'm busy preparing my spells so that you can decide how to waste them when we get back to travelling, you now have to interrupt me while I am doing so!~
= ~Bah, what is it now?~
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT)  CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I suspect you're up to something, but perhaps we can come to a more mutually beneficial arrangement.~ EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY ~I demand to know what you are up to and what exactly are your reasons for keeping company with us.~ EXTERN EDWINJ Z#edwindemand
IF ~~ THEN REPLY ~Are you or are you not in league with Seida? I will not stand for any treachery against me at this juncture!~ EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY ~If you have any hidden agenda against me, you better speak up or when I find out I will not let you off so easily.~ EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY ~Well, sorry to disturb you, I'll just let you get back to your rest then.~ EXTERN EDWINJ Z#edwinendsleep
IF ~~ THEN REPLY ~Bah, I'm done with trying to talk to you, get back to sleep.~ EXTERN EDWINJ Z#edwinendsleep

CHAIN
IF ~~ THEN EDWINJ Z#edwindemand
~As if someone like you were ever truly in a position to make demands of me. I do not follow except to further my own interests and ends.~
= ~If you do not understand that (which is expected for one as simple-minded as you), you need not ask further - I do not intend to waste my time explaining my motives to someone who will so surely find them inexplicable and beyond <PRO_HISHER> understanding.~
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT)  CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I suspect you're up to something, but perhaps we can come to a more mutually beneficial arrangement.~ EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY ~Are you or are you not in league with Seida? I will not stand for any treachery against me at this juncture!~ EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY ~If you have any hidden agenda against me, you better speak up or when I find out I will not let you off so easily.~ EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY ~Well, sorry to disturb you, I'll just let you get back to your rest then.~ EXTERN EDWINJ Z#edwinendsleep
IF ~~ THEN REPLY ~Bah, I'm done with trying to talk to you, get back to sleep.~ EXTERN EDWINJ Z#edwinendsleep

CHAIN
IF ~~ THEN EDWINJ Z#edwinendsleep
~Finally, the chattering ceases. Now leave me to my spells (or rather, my bedroll)~
DO ~RestParty()~ EXIT

CHAIN
IF ~~ THEN EDWINJ Z#edwinspecaccuse
~Even if I am as you suggested, you think me fool enough to tell you? If you doubt my loyalty to you (not that I have any, but it has been profitable for me to put up with you), then I would be glad to be out of this mismatched band of simple minded do-gooders.~
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT)  CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I suspect you're up to something, but perhaps we can come to a more mutually beneficial arrangement.~ EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY ~If you have any hidden agenda against me, you better speak up or when I find out I will not let you off so easily.~ EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY ~All right, sorry to disturb you and I guess I'll leave you now to your rest and preparations.~ EXTERN EDWINJ Z#edwinendsleepleave
IF ~~ THEN REPLY ~Bah, I'm done talking to you - but if you betray me you will pay for it, I swear.~ EXTERN EDWINJ Z#edwinendsleepleave

CHAIN
IF ~~ THEN EDWINJ Z#edwinaccuse
~You can accuse me all you want but it will not get you anywhere. Now if you have nothing more to say (certainly enough chattering already) leave me to my spell preparations.~
END
IF ~OR(3) CheckStatGT(Player1,14,CHR) CheckStatGT(Player1,14,INT)  CheckStatGT(Player1,14,WIS)~ THEN REPLY ~I suspect you're up to something, but perhaps we can come to a more mutually beneficial arrangement.~ EXTERN EDWINJ Z#edwinsuggestprofit
IF ~~ THEN REPLY ~Are you or are you not in league with Seida? I will not stand for any treachery against me at this juncture!~ EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY ~All right, sorry to disturb you and I guess I'll leave you now to your rest and preparations.~ EXTERN EDWINJ Z#edwinendsleepleave
IF ~~ THEN REPLY ~Bah, I'm done talking to you - but if you betray me you will pay for it, I swear.~ EXTERN EDWINJ Z#edwinendsleepleave

CHAIN
IF ~~ THEN EDWINJ Z#edwinendsleepleave
~Fine! Now that you will no longer be disturbing me, I can finally get some peace and quiet.~
= ~Especially now that I'm finally rid of you lot. You didn't really think I'd stay around after those accusations now, did you?~
DO ~DropInventory() LeaveParty() 
ReallyForceSpell(Myself, WIZARD_STONE_SKIN)
ReallyForceSpell(Myself, WIZARD_PROTECTION_FROM_MAGIC_WEAPONS)
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT

CHAIN
IF ~~ THEN EDWINJ Z#edwinsuggestprofit
~So, you have something in mind that is profitable? I doubt you even have any idea what you intend to offer me.~
END
IF ~OR(2) CheckStatGT(Player1,13,INT)  CheckStatGT(Player1,13,WIS)~ THEN REPLY ~Given your mercenary tendencies, gold seems to be the most easily obtainable of your many diverse interests.~ EXTERN EDWINJ Z#edwinplayersuggestmoney
IF ~OR(2) CheckStatGT(Player1,13,INT)  CheckStatGT(Player1,13,WIS)~ THEN REPLY ~You're just a greedy piece of scum who would do anything for some gold.~ EXTERN EDWINJ Z#edwinplayersuggestmoney
IF ~~ THEN REPLY ~You dare to test me after all this is caused by your own suspicious motives?~ EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY ~Seeing how you're the one giving me all these doubts, you should be the one telling me what you want.~ EXTERN EDWINJ Z#edwinnotplayersuggestmoney
IF ~~ THEN REPLY ~I'm sure you know very well what you want, without me having to make too many guesses.~ EXTERN EDWINJ Z#edwinnotplayersuggestmoney
IF ~~ THEN REPLY ~Well I'm not too sure, so feel free to make your suggestions.~ EXTERN EDWINJ Z#edwinnotplayersuggestmoney

CHAIN
IF ~~ THEN EDWINJ Z#edwinnotplayersuggestmoney
~How predictable that one of as low comprehension as you would be unable to think of something satisfying to my higher tastes and interests.~
= ~Money seems as much as you can offer me, along with some time to myself so that I may spend it to my leisure (without your incessant interference in my every action).~
EXTERN EDWINJ Z#edwinamttobribe

CHAIN
IF ~~ THEN EDWINJ Z#edwinplayersuggestmoney
~What a surprise that one of as low comprehension as yourself is able to think up a fairly reasonable incentive at times.~ 
= ~Indeed, gold is probably the only thing you have that is of value to me, along with some time to myself so that I may spend it to my leisure (without your incessant interference in my every action).~
EXTERN EDWINJ Z#edwinamttobribe

CHAIN
IF ~~ THEN EDWINJ Z#edwinamttobribe
~The amount to give me, would be up to your generosity (more correctly, stupidity) since none of this really confirms any of my motivations except of course, my desire to enjoy myself with a good sum of money at my disposal away from your insipid company.~
END
IF ~~ THEN REPLY ~I will give you nothing of the sort until you tell me exactly what devilry you are up to.~ EXTERN EDWINJ Z#edwinaccuse
IF ~~ THEN REPLY ~That confirms it, you *are* here to spy for Seida and to betray us when we go to meet him.~ EXTERN EDWINJ Z#edwinspecaccuse
IF ~~ THEN REPLY ~Forget it, this discussion is over - and I won't give you anything.~ EXTERN EDWINJ Z#edwinendsleepleave
IF ~PartyGoldGT(499)~ THEN REPLY ~Fine, here's 500 gold for you to spend as you like.~ DO ~TakePartyGold(500) DestroyGold(500) SetGlobal("Z#BribedEdwin","GLOBAL",1)~ EXTERN EDWINJ edwingetbribed1leave
IF ~PartyGoldGT(999)~ THEN REPLY ~Fine, here's 1000 gold for you to spend as you like.~ DO ~TakePartyGold(1000) DestroyGold(1000)SetGlobal("Z#BribedEdwin","GLOBAL",1)~ EXTERN EDWINJ edwingetbribed1leave
IF ~PartyGoldGT(4999)~ THEN REPLY ~Fine, here's 5000 gold for you to spend as you like.~ DO ~TakePartyGold(5000) DestroyGold(5000)SetGlobal("Z#BribedEdwin","GLOBAL",1)~ EXTERN EDWINJ edwingetbribed1leave
IF ~PartyGoldGT(9999)~ THEN REPLY ~Fine, here's 10000 gold for you to spend as you like.~ DO ~TakePartyGold(10000) DestroyGold(10000)SetGlobal("Z#BribedEdwin","GLOBAL",2)~ EXTERN EDWINJ edwingetbribed2leave
IF ~PartyGoldGT(14999)~ THEN REPLY ~Fine, here's 15000 gold for you to spend as you like.~ DO ~TakePartyGold(15000) DestroyGold(15000)SetGlobal("Z#BribedEdwin","GLOBAL",2)~ EXTERN EDWINJ edwingetbribed2leave
IF ~PartyGoldGT(19999)~ THEN REPLY ~Fine, here's 20000 gold for you to spend as you like.~ DO ~TakePartyGold(20000) DestroyGold(20000)SetGlobal("Z#BribedEdwin","GLOBAL",2)~ EXTERN EDWINJ edwingetbribed2leave

CHAIN
IF ~~ THEN EDWINJ edwingetbribed1leave
~Excellent! (And you, you little red-haired wench, now it's time you felt the full effects of the undivided attentions of a red-blooded Thayvian male!)~
== EDWINJ ~You can find me at the Copper Coronet after you're done with meeting whoever that is you are meeting - if such incentives are going to common place, then I certainly look forward to them (as a small compensation for putting up with your insipid company)~
END
IF ~~ THEN DO ~DropInventory()  SetGlobal("KickedOut","LOCALS",1) LeaveParty()
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT

CHAIN
IF ~~ THEN EDWINJ edwingetbribed2leave
~Excellent! (And you, you little red-haired wench, now it's time you felt the full effects of the undivided attentions of a red-blooded Thayvian male!)~
= ~The money will go into a few scrolls, of course. (though I doubt someone with as little intellect as yourself can appreciate such uses for gold)~
= ~You can find me at the Copper Coronet after you're done with meeting whoever that is you are meeting - if such incentives are going to common place, then I certainly look forward to them (as a small compensation for putting up with your insipid company)~
END
// mage level 1-12, spells 6-7
IF ~!XPGT(Myself, 999999)~ THEN
DO ~DropInventory() SetGlobal("KickedOut","LOCALS",1)
GiveItemCreate("SCRL7Q",Myself,1,0,0)
GiveItemCreate("SCRL8R",Myself,1,0,0)
LeaveParty() 
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT
// mage level 13-15, spells 7-8
IF ~XPGT(Myself, 999999) !XPGT(Myself, 999999)~ THEN // 
DO ~DropInventory() SetGlobal("KickedOut","LOCALS",1)   
GiveItemCreate("SCRL8R",Myself,1,0,0)
GiveItemCreate("SCRL9D",Myself,1,0,0)
LeaveParty()
EscapeAreaMove("Z#0041",1200,0,8)~ EXIT
// mage level 16+, spells 8-9
IF ~XPGT(Myself, 1999999)~ THEN 
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
~Though he killed Ardelios, it was still deplorable to murder him after agreeing to let him off, and there might also be more at stake than just his life.~
DO ~SetGlobal("Z#killarled","LOCALS",1) 
IncrementGlobal("Break", "LOCALS", 1)~ EXIT

// Arledrian shows his face again

CHAIN
IF WEIGHT #-1 ~Global("BaevClue","GLOBAL",3)
AreaCheck("AR0300")
Global("Z#ArledTalk","GLOBAL",1)
OR(2)
	Global("Z#Gaelanc6","GLOBAL",4)
	Global("Z#Gaelanc6","GLOBAL",5)~ THEN ARLED meetbeforeseida
~It seems we are to meet again this <DAYNIGHT>, <CHARNAME>. I had not expected to have to risk this, but I have little choice.~
DO ~SetGlobal("Z#ArledTalk","GLOBAL",2)~ 
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You treacherous scum! After all that has transpired, you have some gall to show your face again!~
== ARLED ~I believe you are coherent enough to realise that this meeting is not of my design. Things have been afoot, and there are a few more complications than we had expected.~
= ~I am here to offer information, little more, and I do not ask for anything in return, except that I am allowed to depart your presence in one piece.~
END
IF ~~ THEN REPLY ~What sort of information are you offering?~ EXTERN ARLED whatsortofinfo
IF ~~ THEN REPLY ~Tell us first, and we will decide if it's worth your life.~ EXTERN ARLED tellusfirst
IF ~~ THEN REPLY ~Very well, we agree to let you off if you tell us what it is.~ EXTERN ARLED arledsay
IF ~~ THEN REPLY ~We care nothing for your lies - you will die here today.~ EXTERN ARLED dienosay

CHAIN
IF ~~ THEN ARLED whatsortofinfo
~We cannot afford to have any dishonesty between us, so I will not hide anything from you.~
= ~The information pertains to something we believe you have access to, which we do not know directly ourselves. It should serve to give you pause to consider what you know, and who you might deliver it to.~
= ~I can speak no further without having the assurance of keeping my life. ~
END
IF ~~ THEN REPLY ~Since you have no real information, we shall first pay you back for Ardelios' murder.~ EXTERN ARLED dienosay
IF ~~ THEN REPLY ~Tell us first, and we will decide if it's worth your life.~ EXTERN ARLED tellusfirst
IF ~~ THEN REPLY ~Very well, we agree to let you off if you tell us what it is.~ EXTERN ARLED arledsay
IF ~~ THEN REPLY ~We care nothing for your lies - you will die here today.~ EXTERN ARLED dienosay

CHAIN
IF ~~ THEN ARLED tellusfirst
~That is beyond my means, I'm afraid. All I can say is that there is more at stake here than just my life. If you kill me here it will only turn out to your disadvantage.~
= ~I will not speak until I am certain that I can leave you alive, and to arrive where I should be before the others grow suspicious.~
END
IF ~~ THEN REPLY ~What sort of information are you offering?~ EXTERN ARLED whatsortofinfo
IF ~~ THEN REPLY ~Very well, we agree to let you off if you tell us what it is.~ EXTERN ARLED arledsay
IF ~~ THEN REPLY ~We care nothing for your lies - you will die here today.~ EXTERN ARLED dienosay

CHAIN
IF ~~ THEN ARLED dienosay
~I had been dreading such an outcome, but it was only to be expected.~
= ~It is a pity though, that Gaelan is as much a fool as you are, but he had little choice.~
DO ~Enemy()~ EXIT

CHAIN
IF ~~ THEN ARLED arledsay
~That's a relief. It looks like our gambit paid off after all.~
= ~This is what we have for you, as promised. We have certain information that the efforts taken to eliminate your friend are not solely due to personal vengeance.~
= ~It seems there is more at stake than is apparent, and Seida is also concerned about silencing your friend. What we are unable to determine is if this is a deciding factor in his motivations.~
= ~It could just be a small reason compared to the importance of avenging his son, or it could be more important than that, unlikely as it seems.~
= ~We cannot tell, because we do not know what your friend knows, and so have no idea how important it is.~
= ~This could well be a shot in the dark, but we believe that the right person to draw attention to would be Aran. If the information is valuable, I believe he would be a lot more willing to arrange for your desired meeting with Seida.~
DO ~SetGlobal("Z#ArledTalk","GLOBAL",3)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yes, I think I might be starting to have an idea what this information might be. My thanks, Arledrian - it could not have been easy obtaining this information.~
== ARLED ~That is all I have to say, and I will be taking my leave now. Fair <DAYNIGHT> to you, my <PRO_LADYLORD>, I hope the information proves valuable to you.~
END
IF ~~ THEN REPLY ~I'm afraid that was hardly enough for your life, Arledrian. Time to die.~ EXTERN ARLED dieaftersay
IF ~~ THEN REPLY ~The next time you cross my path, we won't let you off so easily.~ EXTERN ARLED badbye
IF ~~ THEN REPLY ~Thank you for the information, and be well.~ EXTERN ARLED goodbye

CHAIN
IF ~~ THEN ARLED dieaftersay
~I thought you might just be this treacherous, but doubtless you feel that I am well-deserving of it.~
= ~It is a pity though, that Gaelan is as much a fool as you are, but he had little choice.~
DO ~Enemy()~ EXIT

CHAIN
IF ~~ THEN ARLED badbye
~I am fortunate then, that you are honorable. A fool, perhaps, but an honorable fool nonetheless. Perhaps one day you will understand our position.~
DO ~EscapeArea()~ EXIT

CHAIN
IF ~~ THEN ARLED goodbye
~Many thanks, my <PRO_LADYLORD>. I had thought Gaelan a fool to trust you, and I would not have come, but we had only a few options left then.~ 
= ~Still, I am glad that in the end, I was proven wrong, and he the wiser.~
== ARLED IF ~!InParty("Edwin") !Dead("Edwin")~ THEN
~Oh yes, something for free, as a token of appreciation. An old acquaintance of yours has been meeting some of my associates in the Copper Coronet recently, and you might wish to look him up, though I would advise caution in dealing with him.~
DO ~SetGlobal("Z#ArledSpokeEdwin","GLOBAL",1)~
== ARLED ~May Mask watch over your way.~
DO ~EscapeArea()~ EXIT

// Gaelan Dies

CHAIN
IF WEIGHT #-1 ~Dead("Arledrian")
GlobalGT("Z#ArledTalk","GLOBAL",0)
Global("Z#GaelanDie","AR0311",1)~ THEN GAELAN idiots
~You idiots...~
= ~I was... a fool to...~
DO ~SetGlobal("Z#GaelanDie","AR0311",2) DestroyAllEquipment() Kill(Myself)~ EXIT

// Kiyone asks about Arled's information

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
!InMyArea("Arledrian")
GlobalGT("Z#ArledTalk","GLOBAL",2)
Global("Z#kovaarledinfo","LOCALS",0)~ THEN Z#KIYOJ kovaarledinfo
~Care to share what information you have that might make Seida eager to eradicate you?~
DO ~SetGlobal("Z#kovaarledinfo","LOCALS",1)~
== Z#KOVAJ ~Well, the only thing I knew with certainty beforehand is the insertion of Shadow Thief moles into the Cowled Wizards. It is hard to believe Aran would be unaware of this fact, but it may be possible.~
= ~And now I also know about Kharen, and more importantly, about Shanro, supposedly a Cowled Wizard supply base.~
== Z#KIYOJ ~I see. Now, putting all the pieces together...~
== Z#KOVAJ ~Yes, it could very well be that Seida is plotting to supplant Renal, or even Aran, completely.~
== Z#KIYOJ ~Right. That information would almost certainly prove very interesting to Aran, though we don't have the complete picture, it should be more than enough.~
EXIT

// Aran on Seida

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
Global("z#gaelanc6","GLOBAL",4)~ THEN ARAN findseida1
~So... finally, Bodhi is dead, is she?  I am very pleased.  The Shadow Thieves at large can breathe a sigh of relief, now.  A job well done, <CHARNAME>.~
= ~Renal has already informed me you would appreciate some help meeting up with one of our very top associates, Seida by name.~ 
= ~It would normally not be difficult, especially as a reward, but I have reason to believe neither you nor he wish each other well.~
= ~Fortunately for you, I have myself a bone to pick with him. Recent information has it that he had not been as forthcoming in assisting us against Bodhi as we had thought. But then again, that could simply be Renal plotting against him.~
= ~In any case, he is probably aware of this and will not be too enthusiastic to receive my summons.~ 
END
IF ~OR(4) 
GlobalLT("Z#Trial", "GLOBAL", 2) 
!InMyArea("Kova") !InParty("Kova")
GlobalGT("Z#TrialClear","GLOBAL",0)~ THEN GOTO findseidano
IF ~GlobalGT("Z#Trial", "GLOBAL", 1) InMyArea("Kova") InParty("Kova")~ THEN GOTO findseidayes

CHAIN
IF ~~ THEN ARAN findseidano
~It would be best if you could return to me after some more developments have occurred. I have little doubt that Seida would be more willing to meet if he is convinced there is no other way he can get back at your friend.~
= ~Till then, I wish you all the best. If things go well with you, we should have no problems coming to a settlement when we next meet again.~
DO ~SetGlobal("z#gaelanc6","GLOBAL",5)~ EXIT

CHAIN
IF ~~ THEN ARAN findseidayes
~However, in spite all these reasons, he seems rather pliable and willing to consider a meeting. I think we can safely say that is due to the favourable turn your investigations have taken.~
= ~It seems that he no longer trusts the courts to avenge him on your friend, and intends to take personal steps to ensure that your companion meets his end at his very own hands.~
EXTERN ARAN wonderseida

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
Global("z#gaelanc6","GLOBAL",5)
OR(4) 
GlobalLT("Z#Trial", "GLOBAL", 2) 
!InMyArea("Kova") 
!InParty("Kova")
GlobalGT("Z#TrialClear","GLOBAL",0)~ THEN ARAN stillfindseidano
~I'm afraid I cannot set up a meeting with Seida on your behalf just yet, <CHARNAME>. He is not beyond my power, but I exercise prudence in my authority over the guildmasters, and he is still unwilling to meet with you.~
= ~Still, if your investigations turn out well, I have little doubt that he will be eager to catch up with you and ensure your friend's demise.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
Global("z#gaelanc6","GLOBAL",5)
GlobalGT("Z#Trial", "GLOBAL", 1)
InParty("Kova")
InMyArea("Kova")~ THEN ARAN congratsseida
~I must congratulate you on your success in investigating your friend's case, <CHARNAME>. It must have been sterling work for Seida to be willing to meet you.~
EXTERN ARAN wonderseida

CHAIN
IF ~~ THEN ARAN wonderseida
~I have wondered before though, have you any idea what is it about your friend Kova that Seida would want so badly to get rid of him? It certainly seems more than just about his son.~
END
IF ~GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN REPLY ~I think it is best that you tell him what you know, Kova.~ EXTERN Z#KOVAJ wonderseidayes
IF ~GlobalGT("Z#ArledTalk","GLOBAL",2)~ THEN REPLY ~How much are you willing to pay us for the information? About time we got something out of you thieves.~ EXTERN ARAN wonderseidahowmuch
IF ~~ THEN REPLY ~I have no idea as well.~ EXTERN ARAN wonderseidadunno

CHAIN
IF ~~ THEN ARAN wonderseidahowmuch
~I'm afraid I will have to hear it first. I have always treated you fairly, <CHARNAME>, and I assure you that your reward will be more than sufficient compensation.~
END
IF ~~ THEN REPLY ~Very well. Tell him about your thoughts, Kova.~ EXTERN Z#KOVAJ wonderseidayes
IF ~CheckStatGT(Player1,15,CHR)~ THEN REPLY ~We'll spill the beans, but we want some money upfront first.~ EXTERN ARAN wonderseidapay
IF ~CheckStatLT(Player1,16,CHR)~ THEN REPLY ~We'll spill the beans, but we want some money upfront first.~ EXTERN ARAN wonderseidano
IF ~~ THEN REPLY ~No, I'm afraid you'll learn nothing from me that way.~ EXTERN ARAN wonderseidano

CHAIN
IF ~~ THEN ARAN wonderseidapay
~Very well. I hope for your sake that the information this will be worth this much, at least. There will be no further talk of payment until after I have heard the information.~
DO ~GiveGoldForce(500)~ EXTERN Z#KOVAJ wonderseidayes

CHAIN
IF ~~ THEN ARAN wonderseidadunno
~That's a pity - I had expected more from you. Still, let's move on to the meeting with Seida - it wouldn't do to send you in unprepared now, would it?~
EXTERN ARAN z#dunnoaboutseida

CHAIN
IF ~~ THEN ARAN wonderseidano
~You can keep your information to yourself then. I shall move on to the meeting with Seida - it wouldn't do to send you in unprepared now, would it?~
EXTERN ARAN z#dunnoaboutseida

CHAIN
IF ~~ THEN ARAN z#dunnoaboutseida
~But first, you must understand that this meeting will very probably negatively affect the operations of one of my guilds, especially now that we are recovering our strength in the wake of the guild war.~ 
= ~Seida's future incarceration will serve as warning for not being more forthcoming in supporting the guild war. It will also allow me to acquire some information from him, though I haven't fully ascertained exactly what that information is.~
= ~Nonetheless, he is one of my best performing guildmasters in terms of revenue brought in, and the cost of putting him away at this time is considerable.~
= ~If you intend to get that last shred of evidence from him, I'm afraid it will cost you something, apart from the necessary effort to apprehend him.~
= ~Seven thousand gold should be sufficient, but the payment can come later. I will first tell you what course of action I sanction, and from there you can decide.~
END
IF ~~ THEN REPLY ~So after all this, we aren't going to kill him?~ EXTERN ARAN notgoingkillseida
IF ~~ THEN REPLY ~So, what is it you want me to do now?~ EXTERN ARAN whatnowseida
IF ~~ THEN REPLY ~Can't you do the dirty work yourself?~ EXTERN ARAN dirtyworkseida
IF ~~ THEN REPLY ~This is extortion! 7000 gold for the privilege of doing you a favour!?~ EXTERN ARAN favourseida

CHAIN
IF ~~ THEN ARAN notgoingkillseida
~Of course not, he is more valuable to me alive than dead. Have you any idea how difficult it is to find a capable guildmaster? And there is the matter of the information I require from him.~
EXTERN ARAN nailseidanotfree

CHAIN
IF ~~ THEN ARAN whatnowseida
~Right to the point, eh?~
EXTERN ARAN nailseidanotfree

CHAIN
IF ~~ THEN ARAN dirtyworkseida
~I can, actually, but not in time for your friend's trial. I would need to gather evidence to take action against him so the others will not jittery. Tedious, but unavoidable.. and very time consuming.~
EXTERN ARAN nailseidanotfree

CHAIN
IF ~~ THEN ARAN favourseida
~Do not think you are doing me a favour. I am quite capable of moving against him, myself, directly, but I would need time to gather evidence so the others will not get jittery.~
= ~In the larger scheme of things, we need the gold his guild can provide first, in this crucial recovery period. Reprisals would be issued later after our situation has stabilised, which would probably be after your friend's trial.~
= ~Meantime, I will brief you on what I have ready for you to meet Seida with. You can better decide if you're willing to take that sort of risk for 7000 gold.~
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN nailseidanotfree
~What you will do is to take these two runes of mine, each with a single charge, and when you have knocked Seida unconscious, you will use these to immobilise him indefinitely. It will also make it appear as if he had died, and his men will retreat.~
DO ~SetGlobal("Z#Gaelanc6","GLOBAL",6)
AddJournalEntry(@1022, QUEST)~
== Z#KOVAJ ~Just as well then. Though I've thought of it many a time, I think I would prefer to avoid killing him, if I can.~
== ARAN ~From there you will take his weapon from him as the evidence you need, and there will be arrangements for him to have a prison stay, as a warning from me for his diligent plotting.~
= ~He won't be easy to handle, <CHARNAME>, so you may wish to rest and restock your supplies before we go to meet him together, assuming you choose to pay the price of undertaking the challenge, of course.~
== ARAN IF ~InParty("Edwin")~ THEN
~And perhaps it would do to negotiate, I mean discuss, with some of your party members on how best to confront Seida.~
== ARAN IF ~OR(2) Dead("Gaelan") Dead("Arledrian")~ THEN
~I wish there was more I could do for you, but one of my crucial spies in his ranks has just been removed, so I doubt I can intercept his movements if he draws Cowled Wizards to your confrontation.~
== ARAN IF ~!Dead("Arledrian") !Dead("Gaelan")~ THEN
~Meantime I'll see if a certain agent of mine among his ranks will be able to provide me the information so I can prevent the Cowled Wizards from joining in your confrontation.~
END
IF ~PartyGoldGT(6999)~ THEN REPLY ~I am ready and willing to pay the price to meet him, just lead the way.~ DO ~TakePartyGold(7000) DestroyGold(7000)~ EXTERN ARAN gomeetseidanotfree
IF ~~ THEN REPLY ~I will be back to see you when I am ready to confront him.~ EXTERN ARAN hangonseida

CHAIN
IF ~~ THEN Z#KOVAJ wonderseidayes
~I think I know what may be the real reason he wants to kill me, Shadowmaster.~
= ~You probably know I was one of the Shadow Thieves, and that I was part of the Cowled Wizards as well.  How then, did I come to be part of the latter?~
== ARAN ~Good question, and I suspect I needed but some thought to rightly guess the answer. Go on.~
== Z#KOVAJ ~I was planted as a mole, and not just to gather information. We were to work our way to the top positions on our own, without knowing who any of the others were.~
== ARAN ~And that can't be all there was to it. The poisoning of Shanro was a big deal, it was to crush one of the Cowled Wizard supply bases. It does seem a little bit of an extreme move, though... unless.~
== Z#KOVAJ ~That's right. It's probably also to make the Cowled Wizards come against you.~
== ARAN ~While I still had Bodhi in my hair.~
== Z#KOVAJ ~And there is an unknown number of Cowled Wizards who are under the influence of an unknown number of his moles.~
== ARAN ~And you know at least one of them, if the reports your friend Kiyone has sent in are anything to go by.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I might have expected you'd have friends in high places.~
== ARAN ~The incidents did seem disconnected pieces, but thanks to this disclosure, it's quite a lot more useful to me. I must commend you on your knack of putting the picture together.~
= ~It seems that the situation was a little more serious than I thought. I'm also now more aware of exactly what information I want from Seida to get him out of his future incarceration.~
== Z#KOVAJ ~I am getting a very familiar feeling about this...~
== ARAN ~To be honest, <CHARNAME>, I had intended to charge you for arranging this meeting, since it will very probably affect the operations of one of my guilds very negatively, but your information has proven payment enough.~
= ~Now all that is left is for him to be incarcerated... by you, of course, if you still intend to get the last shred of evidence for your friend's full acquittal.~
END
IF ~~ THEN REPLY ~So after all this, we aren't going to kill him?~ EXTERN ARAN notgoingkillseidaf
IF ~~ THEN REPLY ~What do you want me to do now?~ EXTERN ARAN whatnowseidaf
IF ~~ THEN REPLY ~Can't you do the dirty work yourself?~ EXTERN ARAN dirtyworkseidaf
IF ~~ THEN REPLY ~This is what you call payment for the information we give you?~ EXTERN ARAN nopaymentseidaf

CHAIN
IF ~~ THEN ARAN notgoingkillseidaf
~Of course not, he is more valuable to me alive than dead. Have you any idea how difficult it is to find a capable guildmaster? And there is the matter of the information I require from him.~
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN whatnowseidaf
~Right to the point, eh?~
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN dirtyworkseidaf
~I can, actually, but not in time for your friend's trial. I would need to gather evidence to take action against him so the others will not get jittery. Tedious, but unavoidable.. and very time consuming.~
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN nopaymentseidaf
~Considering that I intended to charge you a hefty seven thousand for me to hand Seida over to you, and to only give you two runes with which to apprehend him, I think you will find the reward more than sufficient.~
EXTERN ARAN nailseidaforfree

CHAIN
IF ~~ THEN ARAN nailseidaforfree
~What you will do is to take these four runes of mine, each with a single charge, and when you have knocked Seida unconscious, you will use these to immobilise him indefinitely. It will also make it appear as if he had died, and his men will retreat.~
DO ~SetGlobal("Z#Gaelanc6","GLOBAL",7)~
== Z#KOVAJ ~Just as well then. Though I've thought of it many a time, I think I would prefer to avoid killing him, if I can.~
== ARAN ~From there you will take his weapon from him as the evidence you need, and there will be arrangements for him to have a prison stay, as a warning from me for his diligent plotting.~
= ~He won't be easy to handle, <CHARNAME>, so you may wish to rest and restock your supplies before we go to meet him together.~
== ARAN IF ~InParty("Edwin")~ THEN
~And perhaps it would do to negotiate, I mean discuss, with some of your party members on how best to confront Seida.~
== ARAN IF ~OR(2) Dead("Gaelan") Dead("Arledrian")~ THEN
~I wish there was more I could do for you, but one of my crucial spies in his ranks has just been removed, so I doubt I can intercept his movements if he draws Cowled Wizards to your confrontation.~
== ARAN IF ~!Dead("Arledrian") !Dead("Gaelan")~ THEN
~Meantime I'll see if a certain agent of mine among his ranks will be able to provide me the information so I can prevent the Cowled Wizards from joining in your confrontation.~
END
IF ~~ THEN REPLY ~I am ready to meet him - let us go to meet him without delay.~ EXTERN ARAN gomeetseidafree
IF ~~ THEN REPLY ~I will be back to see you when I am ready to confront him.~ EXTERN ARAN hangonseida

CHAIN
IF ~~ THEN ARAN hangonseida
~That is well. If you change your mind about coming back, sooner or later I will act on my own.~
EXIT

CHAIN 
IF ~~ THEN ARAN gomeetseidafree
~Very well. These are the runes you will be using - I suggest you keep them close to your person, for if you lose them, or expend all of them without disabling Seida, it will probably mean your death.~ 
= ~And now, we shall be off.~
DO ~GiveItemCreate("Z#Rune",Player1,4,0,0) SetGlobal("z#gaelanc6","GLOBAL",8)
SetGlobal("Z#MeetingSeida","GLOBAL",1)~ EXIT

CHAIN
IF ~~ THEN ARAN gomeetseidanotfree
~Very good. These are the runes you will be using - I suggest you keep them close to your person, for if you lose them, or expend all of them without disabling Seida, it will probably mean your death.~ 
= ~And now, we shall be off.~
DO ~GiveItemCreate("Z#Rune",Player1,2,0,0) SetGlobal("z#gaelanc6","GLOBAL",8)
SetGlobal("Z#MeetingSeida","GLOBAL",1)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
Global("Z#TrialClear","GLOBAL",0)
OR(2)
	Global("z#gaelanc6","GLOBAL",6) // notfree
	Global("z#gaelanc6","GLOBAL",7) // free
InParty("Kova")
InMyArea("Kova")~ THEN ARAN shallwegomeetseida
~Good to see you again, <CHARNAME>, and of course, Kova with you.~
= ~Are you ready with to meet Seida?~
END
IF ~Global("z#gaelanc6","GLOBAL",7)~ THEN REPLY ~I am ready, just lead the way.~ EXTERN ARAN gomeetseidafree
IF ~Global("z#gaelanc6","GLOBAL",6)
PartyGoldGT(6999)~ THEN REPLY ~I am ready and willing to pay the price, just lead the way.~ 
DO ~TakePartyGold(7000) DestroyGold(7000)~ EXTERN ARAN gomeetseidanotfree
IF ~~ THEN REPLY ~I will be back again when I am ready to confront him.~ EXTERN ARAN hangonseida

CHAIN
IF WEIGHT #-1 ~Global("Chapter","GLOBAL",6)
Dead("c6bodhi")
!Global("Z#TrialClear","GLOBAL",0)
OR(2)
	Global("z#gaelanc6","GLOBAL",6) // notfree
	Global("z#gaelanc6","GLOBAL",7) // free
InParty("Kova")
InMyArea("Kova")~ THEN ARAN weshallnotmeetseida
~I do not know what developments have come up recently, but it seems Seida has decided not to meet with you, and is probably right now making his own plans and arrangements.~
= ~It seems that I will have to deal with him myself, and as for your involvement in this matter, it is at an end. I thank you for your help so far and I wish you well.~
EXIT

BEGIN Z#SEID16

// Aran Renal & Seida

CHAIN 
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",2) 
AreaCheck("Z#0041")~ THEN ARAN hiseida
~Good evening, my dear Seida. I've brought them all, as promised, to the venue and place of your choice. I trust you can now gladly give me my dues.~
== Z#SEID16 ~Here it is - nine thousand gold, as promised.~
== ARAN ~Thank you.~
== RENAL ~I've always wondered how you had this much to offer as a reward when most of our resources were tied up with Bodhi.~
== Z#SEID16 ~You just want to assure your tools that the gold they paid you off with has not been wasted.~
== RENAL ~True, but no harm indulging my curiosity.~
== Z#SEID16 ~If they are seeking me for the reason Aran told me about, then both you and them know very well where the gold came from.~
= ~We'll have time to talk after I have conducted my business with the companions of that treacherous viper who murdered my only son.~
== ARAN ~There is no hurry, Seida. My men have surrounded this area - they won't be going anywhere. Though, now is really as good a time as any.~
= ~Come now, <CHARNAME>. Let's see how well you fare. And remember - if you run out of runes you won't leave here alive. We'll be watching.~
DO ~SetGlobal("Z#MeetingSeida","GLOBAL",3)
SetGlobal("Z#Player1MoveIn","Z#0041",1)
SetCutSceneLite(TRUE)
ActionOverride("Renal Bloodscalp", ReallyForceSpell(Myself, DRYAD_TELEPORT) )
ApplySpell(Myself, DRYAD_TELEPORT)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",3)
Global("Z#Player1MoveIn","Z#0041",2)
Allegiance(Myself, NEUTRAL)~ THEN Z#SEID16 hikovaseida
~So, we meet again, Kova my boy.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~He is not just a guildmaster to you?~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Actually, he isn't. I have dreaded this moment for a while now.~
== Z#SEID16 ~Before we come to blows, Kova, there's just one thing I'd really like to know.~
= ~Why... why did you betray me... and kill my son?~
== Z#KOVAJ ~I didn't want to do anything like that, but what you wanted us to do was wrong.~
== Z#SEID16 ~You, talk about right and wrong? Who are you to do that? You, who have been stealing since you were but a boy, talking about right and wrong?~
END
IF ~~ THEN REPLY ~Enough talk, let's get on with this!~ EXTERN Z#SEID16 getonwithit
IF ~~ THEN REPLY ~(listen and say nothing)~ EXTERN Z#SEID16 kovaseidacatchup

CHAIN
IF ~~ THEN Z#SEID16 getonwithit
~So be it. None of you will outlive this day.~
DO ~	CreateCreatureOffScreen("Z#Assas3",0)
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
~You, to whom I gave a second chance, in whom I saw the best in, and for whom I had the best trainers teach... I even taught you myself, together with my very own son.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Kova... is this true?~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Things have been as he said, since I was eleven, when he found me chained to a pole and left to starve to death for refusing to learn how to kill.~
== Z#SEID16 ~And you learnt so very well that you killed my only son.~ 
= ~Why, why did you do that? He was your age, and I watched you both learn together, compete together, grow up together.~
== Z#KOVAJ ~He was NOTHING like me!~ 
= ~He was cruel, greedy, vicious! He took pleasure in hurting others - he was nothing like me.~
== Z#SEID16 ~How DARE you say that, about the one and only person who called you "brother"! And you thought yourself better than him, so you could murder him... murder my trust... when all you had was from him.~
= ~I saved you because you were his age, because you made me think of him, except for your dark hair... I let you spend your money on your own, like he did, and I even had my mages teach you what you wanted.~
= ~Because many others were jealous of you and hated you, I sent you among the Cowled Wizards... but more importantly, it was because you said you didn't want to be a thief forever, and because of your loyalty, because I trusted you.~
= ~Trusted you to do more than stand by myself - trusted you to stand by Jharen.~
== Z#KOVAJ ~Seida...~
== Z#SEID16 ~Yet you betrayed me, and more than that, murdered the one you grew up with. If he had perished at the hands of others, of the guardsmen or the knights or the wizards, I might have been less affected... but at yours!~
= ~I couldn't eat or sleep for almost a week after.~
= ~And why did you kill him? For some thrice-accursed, abominable concept of you being worthy to judge between good and evil, right and wrong?~ 
= ~Who are you.. no, WHAT are you, to even think of such things!?~
== Z#KOVAJ ~Seida, I...~
= ~It... it wasn't like that. It's about what is right... and what is wrong.~
= ~I know what you've done for me, and how close Jharen was to me, before we... grew up. And it's wrong to just kill people, especially when they've done nothing to hurt you.~
= ~Not one or two, but almost a hundred... I only wish I had been more courageous and had warned them, instead of only fleeing for my own skin after that.~
= ~And even if you were my very own flesh and blood, my very own father, even if he had been my very own flesh and blood brother... I would still have done whatever it took to stop it.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Kova...~
== Z#SEID16 ~Then I can only curse my eyes for being blind so many years ago! I made you the man you are, and tonight, I shall unmake you!~
= ~Die, creature, and be eternally damned for your wicked, black heart!~
DO ~	CreateCreatureOffScreen("Z#Assas3",0)
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
~You pathetic, dim-witted fools. Did you even think that like the rest of you simians, I tolerated your company because I had nothing else better to do?~
END
IF ~~ THEN REPLY ~How dare you betray me, Edwin! I will have your hide for this!~ EXTERN EDWINJ nothreatseida
IF ~~ THEN REPLY ~Why have you done this to me, Edwin?~ EXTERN EDWINJ stupidseida

CHAIN
IF ~~ THEN EDWINJ nothreatseida
~Your threats are meaningless - I have more than enough magic to deal with the likes of you. I shall take pleasure in watching you wither away before the power of Edwin Odesseiron!~
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
LeaveParty() SetGlobal("KickedOut","LOCALS",1)
Enemy()~ EXIT

CHAIN
IF ~~ THEN EDWINJ stupidseida
~Bah, you are such a fool that I regret not having sooner removed your stupidity from this plane of existence! Burn now, before the might of Edwin Odesseiron!~
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
LeaveParty() SetGlobal("KickedOut","LOCALS",1)
Enemy()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",4)
Global("Z#EdwinAppear","Z#0041",1)
Global("Z#BribedEdwin","GLOBAL",0)~ THEN EDWINP edwseidanobribe
~Greetings again, <CHARNAME>. You thought my talents too meagre for your attentions, did you?~
= ~Well, now you shall learn the foolishness of your mistake!~
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
Enemy()~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#MeetingSeida","GLOBAL",4)
Global("Z#EdwinAppear","Z#0041",1)
GlobalGT("Z#BribedEdwin","GLOBAL",0)~ THEN EDWINP edseida
~You there! <CHARNAME>! You thought to bribe me, to give up my promised reward for the sake of the pittance you gave to me?~
DO ~ClearAllActions()~
END
IF ~!CheckStatGT(Player1, 13, INT)
!CheckStatGT(Player1, 13, WIS)
Global("Z#BribedEdwin","GLOBAL",1)~ THEN EXTERN EDWINP edseida2
IF ~Global("Z#BribedEdwin","GLOBAL",1)
OR(2)
CheckStatGT(Player1, 13, INT)
CheckStatGT(Player1, 13, WIS)~
THEN REPLY ~You treacherous worm! You dare go back on our agreement?~ EXTERN EDWINP edseida3
IF ~CheckStatLT(Player1,16,CHR)
OR(2)
CheckStatGT(Player1, 13, INT)
CheckStatGT(Player1, 13, WIS)
Global("Z#BribedEdwin","GLOBAL",1)~ THEN REPLY ~He just gave the gold to Aran - he probably just wants to kill you once it's over.~ EXTERN EDWINP edseida3
IF ~!CheckStatLT(Player1,16,CHR) 
OR(2)
CheckStatGT(Player1, 13, INT)
CheckStatGT(Player1, 13, WIS)
Global("Z#BribedEdwin","GLOBAL",1)~ THEN REPLY ~He just gave the gold to Aran - he probably just wants to kill you once it's over.~ EXTERN EDWINP edseida4
IF ~Global("Z#BribedEdwin","GLOBAL",2)~ THEN EXTERN EDWINP edseida1

CHAIN
IF ~~ THEN EDWINP edseida1
~Now I will pay you back for your insult to my talents!~
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
~Edwin, what is the meaning of this!? You betray me too?~
== EDWINP ~This is just business. My current arrangements are much, much more profitable.~
DO ~JoinParty() SetGlobal("KickedOut","LOCALS",0)~ EXIT

CHAIN
IF ~~ THEN EDWINP edseida2
~Now I will pay you back for your insult to my talents!~
DO ~ChangeAIScript("Z#EDSEID",OVERRIDE)
ChangeAIScript("",GENERAL)
ChangeAIScript("",DEFAULT)
Enemy()~ EXIT

CHAIN
IF ~~ THEN EDWINP edseida3
~Rewards aside, I plan to be on the winning side in this affair. Did you think me such a fool as to join you at such a juncture?~
EXTERN EDWINP edseida2

CHAIN
IF ~~ THEN EDWINP edseida4
~Rewards aside, I plan to be on the winning side in this affair. Did you think me such a fool as to join you at such a juncture?~
EXTERN EDWINP edseida1

CHAIN
IF WEIGHT #-1 ~Global("Z#BribedEdwin","GLOBAL",6) 
Global("Z#EdwinAppear","Z#0041",1)
Global("Z#SeidaWizard","Z#0041",0)
GlobalTimerExpired("Z#SeidaWizardT","Z#0041")~ THEN Z#SEID16 edleaveme
~Hmph, that accursed Red Wizard must have betrayed me and fled the scene of battle.~
= ~I would be a fool to have him be my only wizard, though.~
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
~Though it seems my messengers didn't get through to her, I have my own spellcasters to fall back on. None of you will leave here alive.~
DO ~SetGlobal("Z#SeidaWizard","Z#0041",2)
CreateCreatureOffScreen("Z#Mage2",0)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#EdwinAppear","Z#0041",1)
Dead("Edwin")
Global("Z#SeidaWizard","Z#0041",0)~ THEN Z#SEID16 edwindead
~It seems that sharp-tongued, conceited mage has finally got himself killed.~
= ~I would be a fool to have him as my only wizard, though.~
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
~That wizard seems to be running late, or more probably that irritating tone of his finally got brought well-deserved trouble onto his head.~
= ~Not too inconvenient, though, since there are others I can call upon.~
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
~This may be premature, but I'm afraid I simply do not agree with many, if not most, of your actions, <CHARNAME>. As such, I do not think I will be able to travel further with you and still continue to obey your directions as I have.~ 
= ~Thank you for your efforts to assist and protect me thus far, and while I still draw breath, I will certainly remember your kindness, though I fear I will not forget your actions either.~
DO ~LeaveParty() DropInventory() EscapeArea()~ 
== Z#KIYOJ ~I apologise, <CHARNAME>, but I have to take my leave as well. Kova certainly has his reasons for leaving this suddenly, and my duty bids me follow him to finish up the case.~
= ~I thank you for your aid so far, and wish you well, and may righteousness guide your arm.~
DO ~LeaveParty() DropInventory() EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~GlobalGT("Break","LOCALS",6)
InParty("Kova")
InParty(Myself)~ THEN Z#KIYOJ kiyobreak
~From your actions, it seems that I had made an incorrect assessment of your nature, <CHARNAME>. It is not too late for me to rectify that mistake, though.~
= ~I'm afraid your company has become less than agreeable with me, and I can travel with you no further. I hope your actions will take a turn for the better - it would be most disagreeable for us both if my next assignment involves apprehending you.~
= ~Still, I thank you for your assistance regarding the case so far, and maybe there is some hope, though it is limited, that you will yet change your ways.~
DO ~LeaveParty() DropInventory() EscapeArea()~ 
== Z#KOVAJ ~I do not know how you have angered her so, but I trust she has reason enough to make her decision. Much as I am grateful to you for your aid thus far, I have to take my leave as well, and see a proper conclusion to my own matters.~
= ~I bear you no ill will, and wish you well on the road ahead.~
DO ~LeaveParty() DropInventory() EscapeArea()~ EXIT



// Post Fighting Seida

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",0) 
AreaCheck("Z#0041")~ THEN HABREGA shallwego
~Finally, we've broken through! Keep watching your backs though, men - we never know if we've yet seen the last of them.~
DO ~SetGlobal("BregaIn","Z#0041",1)~
== Z#MESSEN ~They slipped away quickly.. too quickly, almost as if they were finally letting us through.~
== HABREGA ~I hope that does not bode ill for our purpose in coming here. Step quickly, men! I hope we are not too late.~
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
~There you are, <CHARNAME>! We had feared you and your companions lost.~
DO ~SetGlobal("BregaIn","Z#0041",2)~
== HABREGA IF ~OR(2)
!InPartyAllowDead("Kova")
!InPartyAllowDead("Kiyone")~ THEN 
~Though it looks a little like our effort might have been for nothing after all...~
== Z#MESSEN IF ~InParty("Kiyone") InPartyAllowDead("Kova")~ THEN
~And it is good to see you are still in one piece, lady Kiyone.~
== Z#KIYOJ IF ~InParty("Kiyone") InPartyAllowDead("Kova")~ THEN
~My thanks, Myroven, and I am grateful to be able to see you as well.~ 
== HABREGA ~We received a tip that pointed us to this alleyway this evening, and that your lives were in danger. However, we were delayed by Shadow Thief ambushes, that kept us at bay with their throwing daggers.~
= ~It is encouraging to know though, that you have managed to fight off the accursed Shadow Thieves.~
== Z#MESSEN ~I find it too coincidental that they left just as they did... this battle here looks recent, and only just over, it seems.~
= ~Wait a minute, I sense someone close by...~
DO ~SetCutSceneLite(TRUE)
MoveToObject("Z#Seid16")
RealSetGlobalTimer("BregaSeeSeidaT","Z#0041",1)~ 
EXIT

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",2)
RealGlobalTimerExpired("BregaSeeSeidaT","Z#0041")
AreaCheck("Z#0041")~ THEN HABREGA seeseida
~Who is this?  He seems unmoving, almost dead.~
END
IF ~~ THEN REPLY ~He might have been reasonable, but his violence was understandable.~ EXTERN HABREGA seidareason
IF ~~ THEN REPLY ~We were fighting him, and he's now here to be taken into custody regarding Kova's case.~ EXTERN HABREGA seidacustody
IF ~~ THEN REPLY ~Seida, the man responsible for the acts that Kova has been charged with.~ EXTERN HABREGA seidacustody
IF ~~ THEN REPLY ~An unspeakably ruthless and murderous Shadow Thief Guildmaster who should be killed, now.~ EXTERN HABREGA seidakill

CHAIN
IF ~~ THEN HABREGA seidakill
~If he is who you say he is, we are better off taking him into custody. Once the facts are established, it will not be too late to execute him.~
DO ~ActionOverride("Z#Kni1",MoveToObject("Z#Seid16")) SetGlobal("BregaIn","Z#0041",3)
ChangeEnemyAlly("Z#MESSEN",NEUTRAL)	
ActionOverride("Z#Kni2",MoveToObject("Z#Seid16"))~
= ~In meantime, tell me when you are done regrouping your party and gathering what spoils there are, and we shall escort you safely from this place.~ 
DO ~SetCutSceneLite(FALSE)
AddJournalEntry(@1023, QUEST)~ EXIT

CHAIN
IF ~~ THEN HABREGA seidareason
~I do not understand what you are talking about, but I suspect this man must be here for a reason, probably something to do with the case we are dealing with.~
= ~We shall take him into custody first, and if he proves innocent, there is no harm releasing him later.~
DO ~ActionOverride("Z#Kni1",MoveToObject("Z#Seid16")) SetGlobal("BregaIn","Z#0041",3)
ChangeEnemyAlly("Z#MESSEN",NEUTRAL)	
ActionOverride("Z#Kni2",MoveToObject("Z#Seid16"))~
= ~In meantime, tell me when you are done regrouping your party and gathering what spoils there are, and we shall escort you safely from this place.~ 
DO ~SetCutSceneLite(FALSE)
AddJournalEntry(@1023, QUEST)~ EXIT

CHAIN
IF ~~ THEN HABREGA seidacustody
~Is that so? We shall take him with us then, and I suspect he has quite a bit to do with the case that we are currently dealing with. If he isn't, then we can always release him later.~
DO ~ActionOverride("Z#Kni1",MoveToObject("Z#Seid16")) SetGlobal("BregaIn","Z#0041",3)
ChangeEnemyAlly("Z#MESSEN",NEUTRAL)	
ActionOverride("Z#Kni2",MoveToObject("Z#Seid16"))~
= ~In meantime, tell me when you are done regrouping your party and gathering what spoils there are, and we shall escort you safely from this place.~ 
DO ~SetCutSceneLite(FALSE)
AddJournalEntry(@1023, QUEST)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("BregaIn","Z#0041",3) 
AreaCheck("Z#0041")~ THEN HABREGA shallwego
~Give the word when you wish to depart from this place, <CHARNAME>.~
END
IF ~InParty("Kiyone") InParty("Kova")~ THEN REPLY ~We are ready to go now.~ EXTERN HABREGA shallwegoyes
IF ~OR(2) !InPartyAllowDead("Kiyone") !InPartyAllowDead("Kova")~ THEN REPLY ~We are ready to go now.~ EXTERN HABREGA shallwegoyesnokk
IF ~~ THEN REPLY ~Give me a bit more time to regather my companions.~ EXTERN HABREGA shallwegono

CHAIN
IF ~~ THEN HABREGA shallwegono
~Very well, though the sooner we go, the better. This alleyway is an excellent place for the Shadow Thieves to come back and surround us.~
EXIT

CHAIN
IF ~~ THEN HABREGA shallwegoyesnokk
~That is good - this place is starting to stink of blood. We had best move out quickly, before the Shadow Thieves return.~
= ~It is a pity that all your effort has seemed to be wasted. Still, as a member of the Athkatlan court, I will remember your efforts kindly.~
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
~That is good - this place is starting to stink of blood. We had best move out quickly, before the Shadow Thieves return.~
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
~I will be the first to admit that I do not have the ability to read minds, but I think given this juncture you would be expected to forge on ahead to find Irenicus and hopefully reclaim your soul.~
= ~I do not know why you would choose to leave Kiyone in this state at such a time as this, but with my trial yet to be settled, and with her unable to help you, the best course of action is probably for us to go separate ways.~
= ~That way not only will you no longer be a burden to you, and once I can find a way to restore her we continue investigating the case at our ease without affecting the urgency of your need for the return of your soul.~
= ~In parting, I wish you well and may you find whatever it is that you are seeking. Much as I would hope to see you again, I doubt we will meet again. Farewell, <CHARNAME>.~
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
~Well, <CHARNAME>, it seems that we must part ways here. While I understand you have your way ahead of you, my investigation is far from done and my duty calls me elsewhere.~
= ~I wish that our investigation together could have been more fruitful, but despite our efforts it seems that the majority of the facts are ot yet known, and working independantly and in better secrecy might uncover details of the case sooner.~
= ~I wish you all the best, and I doubt we will meet again.~
END
IF ~InMyArea("Kova") InParty("Kova")~ THEN DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",1) EscapeArea()~ EXTERN Z#KOVAJ gottagonotcomingback
IF ~!InParty("Kova")~ THEN DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",0) EscapeArea() ActionOverride("Kova",LeaveParty()) ActionOverride("Kova",DestroySelf())~ EXIT

CHAIN
IF ~~ THEN Z#KOVAJ gottagonotcomingback
~I thank you for the protection and effort you have put into helping with the details of my case, and I am sorry that I cannot continue with you, but there are many more details that have to be uncovered.~
= ~I wish you well and though I hope we will cross paths again, it does seem unlikely that we will meet again, given the odds myself and Kiyone will soon be facing.~
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
~Well, <CHARNAME>, much as I regret it, I fear we must part ways here. Just as I understand that you have your way ahead of you, I hope you can understand that my duty calls me elsewhere.~
= ~You have been a great help, and I appreciate very much what you have done to further my case, but there are too many gaps still missing in our understanding of the situation.~
= ~I will give Bylanna a good report of how you have assisted me in the investigation, and in meantime there is not much more I can do for you except to wish you well.~
= ~May the Gods, fickle as they might be, watch over you and guide your ways onward.~
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
~Well, <CHARNAME>, much as I hate to interrupt you, and I understand you must be eager to retrieve your soul, I fear I must at this point in time.~
= ~You near a crucial juncture of your quest, and I suspect that past this point, there is no turning back. Yet the matter of my case and Kova's trial remains without conclusion.~
== Z#KOVAJ ~It saddens me to know that I may have to turn from you after all you have done for me, but unless you should choose to turn aside for a moment from your quest and see us through this last leg of our case, I fear we have little choice but to do as we must.~
= ~Come what may though, <CHARNAME>, you have my most solemn word that as long as I live, be it for a day more or for many years to come, I will not forget the great kindness and steadfastness with which you have stood by one as wretched as I am.~
== Z#KIYOJ ~I am no less grateful for all you have done for us, and I am honored to have known, travelled with and have learnt so much from someone as upright as yourself in this season. But still, my duty yet calls and I cannot ignore it.~
= ~However, we agree it would be rude to expect you to turn from your urgent quest to come back with us to Athkatla, so I do propose that you continue onward as we return to wrap up the investigation and see the trial through.~
= ~If whatever powers there be are kind to us, I promise that even if Kova should prove... indisposed, I will do my best to catch up with you and to stand by your side in your time of need.~
END
IF ~~ THEN REPLY ~Can the two of you not remain by my side for a moment longer?~ EXTERN Z#KIYOJ gottago2
IF ~~ THEN REPLY ~I do not leave my good deeds half-done - let me go with you and this matter through.~ EXTERN Z#KIYOJ backtoathkgd
IF ~~ THEN REPLY ~Very well - go with my blessings, and I look forward to having you both back in my party again.~ EXTERN Z#KIYOJ thanksweleave
IF ~~ THEN REPLY ~It seems you give me little choice except to go with you back to Athkatla.~ EXTERN Z#KIYOJ backtoathk
IF ~~ THEN REPLY ~If you both are ungrateful enough to desert me now, then just go and save me your meaningless words.~ DO ~IncrementGlobal("Break", "LOCALS", 1) ActionOverride("Kova",IncrementGlobal("Break", "LOCALS", 1))~ EXTERN Z#KIYOJ nowweleave

CHAIN
IF ~~ THEN Z#KIYOJ gottago2
~I'm afraid not, <CHARNAME>. There are certain reasons why I do not wish to go further until I'm ready to set my concentration entirely to doing what I can to help with Elhan's city.~
== Z#KOVAJ ~I agree with that sentiment as well. If I am to be involved with the elven city, I would hardly wish any distractions gnawing at the back of my mind, especially in a meeting with Irenicus.~
= ~Truth be told, I don't really wish to meet him again, but to repay what you, <CHARNAME>, have done for me, I would gladly do so.~
= ~But for what Kiyone has done for me as well, I would not wish for her to become as hunted and reviled as I am by overstepping what freedom has been allowed for her to conduct her investigation.~
= ~Even if it costs me my life, I suppose.~
== Z#KIYOJ ~You forgot to mention how you also want a conclusion to the matter as soon as possible. As do I, of course.~
END
IF ~~ THEN REPLY ~I do not leave my good deeds half-done, so I will go with you both and see this matter through.~ EXTERN Z#KIYOJ backtoathkgd
IF ~~ THEN REPLY ~Very well, go with my blessings. I look forward to having you both back in my party again once it's all over.~ EXTERN Z#KIYOJ thanksweleave
IF ~~ THEN REPLY ~It seems you give me little choice except to go with you back to Athkatla.~ EXTERN Z#KIYOJ backtoathk
IF ~~ THEN REPLY ~If you both are ungrateful enough to desert me now, then just go and save me your meaningless words.~ DO ~IncrementGlobal("Break", "LOCALS", 1) ActionOverride("Kova",IncrementGlobal("Break", "LOCALS", 1))~ EXTERN Z#KIYOJ nowweleave

CHAIN
IF ~~ THEN Z#KIYOJ backtoathkgd
~Thank you for your understanding, <CHARNAME>. Now let us return without further delay - the sooner this is done with the sooner we can get back to helping you reclaim your soul.~
DO ~SetGlobal("Z#ForceTrial","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[510.640],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[495.910],10))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[535.930],10))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[525.980],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[490.950],10))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[445.925],10))~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ backtoathk
~Since you feel that way we may as well get going as soon as possible - the sooner we are done with this case the sooner we can get back to helping <CHARNAME> reclaim <PRO_HISHER> soul.~
DO ~SetGlobal("Z#ForceTrial","GLOBAL",2)
ActionOverride(Player1,LeaveAreaLUA("AR1002","",[510.640],10))
ActionOverride(Player2,LeaveAreaLUA("AR1002","",[495.910],10))
ActionOverride(Player3,LeaveAreaLUA("AR1002","",[535.930],10))
ActionOverride(Player4,LeaveAreaLUA("AR1002","",[525.980],10))
ActionOverride(Player5,LeaveAreaLUA("AR1002","",[490.950],10))
ActionOverride(Player6,LeaveAreaLUA("AR1002","",[445.925],10))~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ thanksweleave
~Thank you for your understanding, <CHARNAME>. I too, look forward to seeing you again.~
EXTERN Z#KIYOJ nowweleave

CHAIN
IF ~~ THEN Z#KIYOJ nowweleave
~Now, let us go without further delay, and hopefully that will mean a shorter delay that I may return the sooner.~
DO ~LeaveParty() DropInventory() SetGlobal("KiyoJoined","LOCALS",0) EscapeAreaMove("Z#0041",1100,0,8)~
== Z#KOVAJ  ~And with a lot of luck, I might even make it back with her.~
DO ~LeaveParty() DropInventory() SetGlobal("KovaJoined","LOCALS",0) EscapeAreaMove("Z#0041",1150,0,8)
SetGlobal("Z#KKLeftForTrial","GLOBAL",1)~ EXIT

// ForceTrial

CHAIN
IF ~Global("Z#ForceTrial","GLOBAL",2)~ THEN Z#KIYOJ Z#TalkB4Trial
~Greetings, lady Bylanna. We would like to request to have Kova stand trial with what evidence we have on hand.~
EXTERN BYLANNA Z#TalkB4Trial

CHAIN
IF ~~ THEN BYLANNA Z#TalkB4Trial
~Is that so? Well then, I would like to have a private word with you, <CHARNAME>, and you as well, Kiyone, first.~
EXTERN BYLANNA StartTrialForce
// DO ~SetCutSceneLite(TRUE)
// SetGlobal("Z#ForceTrial","GLOBAL",1)~ EXIT

CHAIN
IF ~~ THEN BYLANNA StartTrialForce
~Before you both decide to have Kova stand trial, there are some matters that I would like for you two to consider.~
= ~Based on your reports, there is not enough concrete evidence to acquit your companion Kova Kashiro of the charges levelled against him. While it is enough to tell us that he appears to have been set up, it cannot show conclusively that he is innocent.~
DO ~SetCutSceneLite(FALSE)
SetGlobal("Z#ForceTrial","GLOBAL",0)~
== Z#KIYOJ ~I understand, lady Bylanna.~
== BYLANNA ~Perhaps you need more time to conduct your investigations. Unless you are fresh out of leads, it is better to wait and see if the actual person behind the crimes Kova is charged with can be apprehended.~
END
IF ~!GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY ~I think we should just get this over and done with.~ EXTERN BYLANNA forcetrial
IF ~!GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY ~Actually, I think I'm about out of leads.~ EXTERN BYLANNA forcetrial
IF ~GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY ~I think we should just get this over and done with.~ EXTERN BYLANNA gomyro
IF ~GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN REPLY ~Actually, I think I'm about out of leads.~ EXTERN BYLANNA gomyro
IF ~~ THEN REPLY ~We'll try to find more clues and maybe apprehend the villain behind all this.~ EXTERN BYLANNA findmoreclues

CHAIN
IF ~~ THEN BYLANNA gomyro
~I believe I have yet another clue that you might be able to follow up with. I have already instructed Myroven to speak to Brega about granting you access to his witness.~
= ~Hopefully the witness will provide you with yet more clues concerning the case, that will provide the trial a better conclusion, for all of us.~
DO ~SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",150) // 0.5 hours	
SetGlobal("Z#BaevrinPlot","GLOBAL",1)~
== Z#KIYOJ ~Thank you, lady Bylanna. I am most grateful for your generous assistance.~
== BYLANNA ~There is no need to thank me, Kiyone. Being a magistrate leaves little room for generosity, and I'm more interested in finding the one behind all this. Failing to do so might prove fatal for my position as magistrate of Athkatla.~
== Z#KIYOJ ~I see.~ 
EXIT 

CHAIN
IF ~~ THEN BYLANNA findmoreclues
~Very well, in that case it is better we not proceed with the trial just yet. I wish you both good luck in your investigations.~
== BYLANNA IF ~GlobalLT("Z#BaevrinPlot","GLOBAL",2)~ THEN 
~By the way, I have asked Myroven to contact Brega regarding the witness - perhaps with some persuasion she might be able to get you access to the person.~
DO ~SetGlobalTimer("Z#BaevrinPlotT","GLOBAL",150) // 0.5 hours	
SetGlobal("Z#BaevrinPlot","GLOBAL",1)~
== Z#KIYOJ ~Thank you, lady Bylanna. You are most kind.~
== BYLANNA ~There is no need to thank me, Kiyone. Being a magistrate leaves little room for kindness, and I'm more interested in finding the one behind all this. Failing to do so might prove fatal for my position as magistrate of Athkatla.~
== Z#KIYOJ ~I see.~ 
EXIT 

CHAIN
IF ~~ THEN BYLANNA forcetrial
~Well, if that is the way it has to be...~
= ~I'm afraid however, that while we may be more or less certain that your friend Kova is innocent, nothing short of a certainty of innocence is sufficient. In fact, that might not even be enough.~
== Z#KIYOJ ~What exactly are you trying to say?~
== BYLANNA ~The nobility are angered by the death of their children, and they need a target to focus their hatred towards.~ 
= ~On this matter even houses long separated by disputes have been united in their grief, and are drawing all their own alliances to pressure the court on this matter.~
= ~I have strained their patience by allowing you time to do your investigation, really, though originally the act of asking for the top Sentinel from the North was more to appease them than for any other reason.~
== Z#KIYOJ ~Yes, I had thought it odd, since I wasn't aware of close working relations between us and the court of Athkatla.~
== BYLANNA ~Still, they had expected once the villain was found that he be executed, preferably without the hassle of a proper trial.~
== Z#KIYOJ ~And his innocence?~
== BYLANNA ~They are convinced of his guilt, and have more or less seen to it that everyone else whose opinion counts are convinced as well. Unless they have an object to direct their hatred at, it would be near-fatal for my career to acquit him.~
END
IF ~~ THEN REPLY ~You'd condemn an innocent man just to further your own interests?~ EXTERN BYLANNA bylcondemninnocent
IF ~~ THEN REPLY ~And how am I suppose to get out of this without losing a valuable travelling companion?~ EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY ~What do you want us to do to get you to acquit Kova?~ EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY ~No, there has to be a better way than this.~ EXTERN BYLANNA byldoesnotknow

CHAIN
IF ~~ THEN BYLANNA bylcondemninnocent
~My position is more than just money and power to me, <CHARNAME>. I have made many enemies, dangerous ones, over the years, and this position is all that keeps me from meeting grief at their hands. I hope you can understand that.~
END
IF ~~ THEN REPLY ~And how am I suppose to get out of this without losing a valuable travelling companion?~ EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY ~What do you want us to do to get you to acquit Kova?~ EXTERN BYLANNA byldoesnotknow
IF ~~ THEN REPLY ~No, there has to be a better way than this.~ EXTERN BYLANNA byldoesnotknow

CHAIN
IF ~~ THEN BYLANNA byldoesnotknow
~I do not know exactly what else you can do within the bounds of the law, but perhaps you can try to find more information, and hopefully apprehend the true perpetrator of these crimes.~
END 
IF ~~ THEN REPLY ~Very well, I will do just that then.~ EXTERN BYLANNA bylbye
IF ~~ THEN REPLY ~I am out of ideas and options on what else to do.~ EXTERN BYLANNA bylbeyondthelaw

CHAIN
IF ~~ THEN BYLANNA bylbye
~It is of some relief to hear that there is more that can be done, <CHARNAME>. I wish you all the best in your investigations.~
EXIT

CHAIN
IF ~~ THEN BYLANNA bylbeyondthelaw 
~I was hoping it would not come to this, but I am afraid then we have to use our very last resort.~
== Z#KIYOJ ~It sounds rather unsavoury, if I read your tone right.~
== BYLANNA ~It is, Kiyone, it is. It pains me to do this, but we need a scapegoat.~
== Z#KIYOJ ~What? Incriminate an innocent man?~
== BYLANNA ~Not just any innocent man, preferably, but yes we need someone. And the funds to pull it off.~
END
IF ~~ THEN REPLY ~Condemning someone for another's crimes does not strike me as the right thing to do.~ EXTERN BYLANNA bylexplainoptions
IF ~~ THEN REPLY ~Surely you are not suggesting that another one of us take his place?~ EXTERN BYLANNA bylexplainoptions
IF ~~ THEN REPLY ~I get sinking feeling this will cost me a lot.~ EXTERN BYLANNA bylexplainoptions
IF ~~ THEN REPLY ~Spare me the details of your schemes and just tell me how much this will cost.~ EXTERN BYLANNA byljustaskgold
 
CHAIN
IF ~~ THEN BYLANNA byljustaskgold
~I see that you are a <PRO_MANWOMAN> of business. Very well, let us consider the costs together.~
= ~There'll certain nobility and law-enforcers to pad to establish some guilt elsewhere, and to purchase some scapegoats and such.~
== Z#KIYOJ ~So, the lying, lawless bitch finally shows her true colors.~
== BYLANNA ~You should be more polite to someone who holds the fate of your friend in her hands. Or maybe he doesn't matter that much to you after all.~
= ~Well, <CHARNAME>, all told 10,000 gold pieces should do nicely for the life of your worthy friend and companion Kova. Or if he is not worth that much, then my hands are as bound as yours.~
= ~I hope you understand why I won't be repeating this offer, and why the trial will begin immediately after this conversation, regardless of your decision.~
END
IF ~PartyGoldGT(9999)~ THEN REPLY ~I will pay whatever it takes to keep him useful to me. Here is your gold.~ DO ~TakePartyGold(10000) DestroyGold(10000)~  EXTERN BYLANNA byltakesbribe
IF ~PartyGoldGT(9999)~ THEN REPLY ~It is wrong to allow a innocent man to be condemned, and I will pay for his life regardless of the cost.~ DO ~TakePartyGold(10000) DestroyGold(10000)~  EXTERN BYLANNA byltakesbribe
IF ~!PartyGoldGT(9999)~ THEN REPLY ~I truly do not have the amount of money you request.~ EXTERN BYLANNA bylnopartschemes
IF ~~ THEN REPLY ~I will have no part in your schemes, Bylanna.~ EXTERN BYLANNA bylnopartschemes

CHAIN
IF ~~ THEN BYLANNA bylexplainoptions
~Don't be so quick with your conclusions, <CHARNAME> - just hear me out first. I do not need any of your companions to stand trial, I only need your finances to pull it off and find a substitute.~
== Z#KIYOJ ~You want us to bribe you so you can provide a scapegoat.~
== BYLANNA ~Not me, but others. I need them to be compliant, both people among nobility and various other more pliable law-enforcers.~
== Z#KIYOJ ~To falsify evidence so that you can acquit Kova and declare someone else guilty.~
== BYLANNA ~You do not mince your words, do you, Kiyone?~
== Z#KIYOJ ~I do not, Bylanna.~
== BYLANNA ~Listen to me, Kiyone. We have every reason to believe that your friend, your close friend, is innocent, so we definitely cannot allow him to be put to death.~
== Z#KIYOJ ~Well if not him then who?!~
== BYLANNA ~I have your reports, Kiyone, and I have those from before. I can move to pin the crime on someone else, perhaps, in affiliation to the person you identified. Kharen, namely.~
== Z#KIYOJ ~But you do NOT know she is guilty!~
== BYLANNA ~What I do know is that your friend is probably not, and she probably is involved in some way, even if she is not herself guilty.~
== Z#KIYOJ ~All right, Bylanna... And how do you intend to do this? From what I've heard of the nobles  they want blood, not another elusive name and figure to go chasing after again.~
== BYLANNA ~That's what the money is for. I need evidence pointing to her, and I need witnesses, contact persons, accomplices who have been apprehended.~
== Z#KIYOJ ~And how are you going to get these? Especially as they probably won't be let off by the nobility.~
== BYLANNA ~Yes, they'll probably be executed. As for where to find them, there are poor petty thieves in the slums, Kiyone. The money will go into taking care of their families after they've confessed to various charges.~
== Z#KIYOJ ~Suddenly the philanthropist, Bylanna? Why should we believe you'll be more honorable in dealing with their families as you have been in your travesty of service as a magistrate?~
== BYLANNA ~For many of them, it would have been a more than a worthy exchange in return for their lives, and those who enter into the agreement will do so voluntarily. As for honoring their sacrifices, you only have my word.~
= ~After all, I am doing this for your friend as well. Does that mean nothing to you?~
== Z#KIYOJ ~You are a conniving murderer of the innocent, Bylanna, for your own profit and position.~
== BYLANNA ~They are some petty thieves, beggars, peddlers of dubious integrity. I end the hardship of their loved ones, and remove the trouble that they cause in the land.~
= ~Life is not easy for them as well. Where they go they need no longer worry about meeting the extortionate demands of the Shadow Thieves and the hounding of moneylenders.~
== Z#KIYOJ ~Murdering bitch.~
== BYLANNA ~I see I was overly optimistic to think that your friend mattered as much to you as I thought he did.~
== Z#KIYOJ ~He does matter, but unlike some, I know right from wrong.~
== BYLANNA ~Do you now? Consider how wrong it is to let him die for what he has not done. By means of my solution, that unjust situation is averted, and others are blessed for it, both the families of those executed, as well as Athkatlan citizenry at large.~
== Z#KIYOJ ~Stop trying to manipulate my sense of what is true, you lying, conniving cur.~
== BYLANNA ~Well, <CHARNAME>, it seems you are the more reasonable one. What about you, have you the money I ask for? 10,000 gold pieces for the life of your worthy companion Kova. Or if he is not worth that much, then my hands are as bound as yours.~
= ~I hope you understand if I won't be repeating this offer, and why the trial will begin immediately after this conversation, regardless of your decision.~
END
IF ~PartyGoldGT(9999)~ THEN REPLY ~I will pay whatever it takes to keep him useful to me. Here is your gold.~ DO ~TakePartyGold(10000) DestroyGold(10000)~  EXTERN BYLANNA byltakesbribe
IF ~PartyGoldGT(9999)~ THEN REPLY ~It is wrong to allow a innocent man to be condemned, and I will pay for his life regardless of the cost.~ DO ~TakePartyGold(10000) DestroyGold(10000)~  EXTERN BYLANNA byltakesbribe
IF ~!PartyGoldGT(9999)~ THEN REPLY ~I truly do not have the amount of money you request.~ EXTERN BYLANNA bylnopartschemes
IF ~~ THEN REPLY ~I will have no part in your schemes, Bylanna.~ EXTERN BYLANNA bylnopartschemes

CHAIN
IF ~~ THEN BYLANNA byltakesbribe
~Thank you, <CHARNAME>, I knew you'd be the reasonable sort.~
= ~And now, on to the trial and the outcome you so deserve.~
DO ~SetGlobal("Z#BribedByl","GLOBAL",1)
ActionOverride(Player1,LeaveAreaLUA("Z#1002","",[840.760],9))
ActionOverride(Player2,LeaveAreaLUA("Z#1002","",[720.730],12))
ActionOverride(Player3,LeaveAreaLUA("Z#1002","",[765.765],10))
ActionOverride(Player4,LeaveAreaLUA("Z#1002","",[820.805],8))
ActionOverride(Player5,LeaveAreaLUA("Z#1002","",[740.750],11))
ActionOverride(Player6,LeaveAreaLUA("Z#1002","",[795.785],9))~ EXIT

CHAIN
IF ~~ THEN BYLANNA bylnopartschemes
~How disappointing, but the trial must go on. Do not worry though - given the evidence you've accumulated, I won't be executing your friend - just holding him in custody.~
= ~And now, justice must be served.~
== Z#KIYOJ ~You have no right to say that.~
== BYLANNA ~Really? If not me, then who?~ 
= ~I decide what justice is around here, Kiyone. You would do well to remember that.~
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
~During the investigations concerning this case, the following new findings have been brought to the attention of this court.~
END
IF ~!Dead("Baevrin") GlobalGT("Z#BaevrinPlot","GLOBAL",22)~ THEN EXTERN BYLANNA Z#ShanroClear
IF ~Dead("Baevrin") !GlobalGT("Z#BaevrinPlot","GLOBAL",22)~ THEN EXTERN BYLANNA Z#ShanroBaevDead
IF ~!Dead("Baevrin") !GlobalGT("Z#BaevrinPlot","GLOBAL",22)~ THEN EXTERN BYLANNA Z#ShanroNotClear

CHAIN 
IF ~~ THEN BYLANNA Z#ShanroClear
~There is hard evidence that the poisoning of the village of Shanro was ordered by a Shadow Thief Guildmaster, the same one who issued a reward for the capture or demise of the accused.~
= ~The witness' statement regarding the accused as the perpetrator has also been found to be made under duress from the Shadow Thieves, and after the hostage was rescued, the statement has been amended and no longer implicates the accused.~
= ~Therefore, this court acquits the accused of the charge against him concerning the poisoning of the village Shanro.~
END
IF ~Global("Z#MeetingSeida","GLOBAL",6)~ THEN EXTERN BYLANNA Z#TrialAllClear
IF ~!Global("Z#MeetingSeida","GLOBAL",6)~ THEN EXTERN BYLANNA Z#CowlClear

CHAIN 
IF ~~ THEN BYLANNA Z#ShanroBaevDead
~There is hard evidence that the poisoning of the village of Shanro was ordered by a Shadow Thief Guildmaster, the same one who issued a reward for the capture or demise of the accused.~
= ~The witness' statement regarding the accused as the perpetrator is also believed to have been made under duress from the Shadow Thieves.~
= ~Unfortunately, after the hostage was rescued, despite being under protection, the witness was ambushed and murdered before being able to make his statement.~
= ~Therefore, this court cannot fully acquit the accused of the charge against him concerning the poisoning of the village Shanro.~
EXTERN BYLANNA Z#CowlClear

// this following block should almost never be executed

CHAIN 
IF ~~ THEN BYLANNA Z#ShanroNotClear
~There is hard evidence that the poisoning of the village of Shanro was ordered by a Shadow Thief Guildmaster, the same one who issued a reward for the capture or demise of the accused.~
== BYLANNA ~However, there is still a damning account against the accused by a witness of the poisoning, and this court will still treat the accused as guilty of the charge against him concerning the poisoning of the village Shanro.~
EXTERN BYLANNA Z#CowlClear

CHAIN 
IF ~~ THEN BYLANNA Z#CowlClear
~Now, to the matters concerning the second charge against the accused, that of the murder of Cowled Enforcers during their tour of duty, barely a few days after Shanro was poisoned.~
= ~The murder of the enforcers was in fact witnessed by one other, who later was himself murdered while fleeing Amn.~ 
= ~He did tell another of what he had seen, from whom we have a signed statement, and the actual murderer's description does not match that of the accused.~
= ~Interestingly, the description matches that of the Cowled Wizard sent to Brynnlaw to apprehend the accused, and whose appearance was closely followed by the appearance of Shadow Thieves.~
= ~Even more coincidentally, this was also the same person who happened to be tasked with investigating the Enforcer Murders within the Cowled Wizards, and whose investigations led to the creation of this very charge against the accused.~ 
== Corneil ~You disappoint me, Bylanna. I told you not to believe their lies.~
== BYLANNA ~I see what I see, Corneil, and judge accordingly. No judgment is perfect, but I do my humble best.~
== Corneil ~They say she has links to the Shadow Thieves, but they have no proof.~
== BYLANNA ~Regardless, this court acquits the accused of the charge against him of murdering the Cowled Enforcers on duty.~
== Corneil ~You are playing into their hands, but you have your favourites, as always.~
== BYLANNA ~I think you will find that I am more than fair, in my view of the final charge against Kova. But if you disagree, there is little I can do if the Cowled Wizards elect not to honor my ruling.~
== Corneil ~How well you know me, Bylanna.~ 
END
IF ~Global("Z#BribedByl","GLOBAL",1)~ THEN EXTERN BYLANNA Z#BribeBylClear
IF ~!Global("Z#BribedByl","GLOBAL",1)~ THEN EXTERN BYLANNA Z#NoBribeBylCondemn

// Not Bribe Byl

CHAIN
IF ~~ THEN BYLANNA Z#NoBribeBylCondemn
~Regarding the murder of the kidnapped nobles, these were first linked to the accused by Inspector Dayven. New findings have indicated that the Shadow Thieves took especial care to make sure the link was made so that evidence points to the accused.~
= ~However, no further evidence has arisen regarding this, and in the light of the limited evidence we have gathered so far, we will have to treat the accused to be guilty as charged.~
== Z#Nob3 ~Then what are we waiting for?~
== Z#Nob1 ~Execute him!~
== BYLANNA ~Due to the evidence of attempts to set him up throughout most of the case, it is this court's decision to keep him in custody for a time, rather than execute him outright. In time, there may yet be evidence to the contrary.~
== Z#Nob2 ~This is an outrage! I want justice for my son!~
== BYLANNA ~Rest assured, my lords and ladies, the guilty one will not go free. He will be held in custody to await results of further investigations, or his execution.~
== Z#Nob3 ~This is a farce! The evidence demands that he be punished - now!~
== BYLANNA ~Regardless, this is a decision made by the court. It will not be altered until more evidence comes to light, or until he is shown to be definitely guilty.~
== Z#Nob2 ~If my son's death is not avenged soon, you will regret it.~
DO ~EscapeArea()~
== Z#Nob1 ~You are a fool to think you can get away with this! ~
DO ~EscapeArea()~
== Z#Nob3 ~If we don't have a magistrate capable of executing justice, then perhaps a new magistrate is in order.~
DO ~SetCutSceneLite(TRUE)
SetGlobal("Z#TrialClear","GLOBAL",1)
SetGlobal("Z#NoblesLeft","Z#1002",1)
RealSetGlobalTimer("Z#NoblesLeftT","Z#1002",1)
EscapeArea()~ EXTERN Z#KOVAJ Z#BidFarewell

CHAIN
IF ~~ THEN Z#KOVAJ Z#BidFarewell
~Well, <CHARNAME>, Kiyone, thank you for seeing me so far. It's further than I had ever thought possible, but as expected, not quite far enough.~
== BYLANNA ~Guards, take the accused away.~
DO ~CreateCreature("Z#Kni2ok",[905.590],1)
CreateCreature("Z#Kni1ok",[1005.645],3)
ActionOverride("Z#Kni1", MoveToObject("Kova"))
ActionOverride("Z#Kni2", MoveToObject("Kova"))~
== Z#KOVAJ ~I wish you both well, and I doubt I will see you again.~
== Z#KIYOJ ~Your case is mine, still, and I will escort you to your cell. It is my duty.~
== Z#KOVAJ ~You should not trouble yourself. Besides, I do not wish you to see me in a cell.~
== Z#KIYOJ ~I'm afraid you have no say in this matter, Kova. I will see you there regardless.~
== Z#KOVAJ ~I doubt the prison would be all that safe.~
DO ~SetGlobal("KovaJoined","LOCALS",0)
GivePartyAllEquipment() LeaveParty() SetGlobal("KKJoin","GLOBAL",0)~
== Z#KIYOJ ~That is exactly why I'm coming.~
= ~Thank you <CHARNAME>, for all you've done for my case and my client. I wish there was more I could do to repay your kindness, but duty calls me elsewhere. I bid you farewell, and may the Gods smile upon you, for whatever good that that's worth.~
DO ~GivePartyAllEquipment() LeaveParty()
SetGlobal("KiyoJoined","LOCALS",0)
GiveItemCreate("KiyoArm1",Myself,1,0,0)
GiveItemCreate("KiyoBow1",Myself,1,0,0)
EquipItem("KiyoBow1")
EquipItem("KiyoArm1")
AddexperienceParty(24000)
ReputationInc(1)
AddJournalEntry(@1040,QUEST_DONE)
SetCutSceneLite(TRUE)
MoveToObject("Kova")~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR1005")
Global("Z#TrialClear","GLOBAL",1)~ THEN Z#KIYOP whatyoudoinginprison
~I am slightly surprised to see you here, <GABBER>. The prison is not a place for someone like you to be.~
== Z#KOVAP ~Nor for someone like you to be, Kiyone.~
== Z#KIYOP ~Perhaps, Kova.~
= ~So, what brings you to the prison, <GABBER>?~
END
IF ~~ THEN REPLY ~Why do you remain here in the prison when you could be elsewhere?~ GOTO whystayprison
IF ~~ THEN REPLY ~We would like you to join us and travel with us again.~ GOTO prisjoinus
IF ~~ THEN REPLY ~Just dropping by to see how you are doing.~ GOTO byefromprison

CHAIN
IF ~~ THEN Z#KIYOP whystayprison
~For one thing, my duty calls me to remain here. For another, I rather expect something to happen in here, sooner or later, perhaps an attempt on Kova's life or some other similar sort.~
DO ~SetGlobal("Z#Kiyosaywhyprison","AR1005",1)~
END
IF ~~ THEN REPLY ~If it happens, aren't you courting death then, to be waiting here?~ GOTO prisonattackready
IF ~~ THEN REPLY ~Are you even ready for such an attack?~ GOTO prisonattackready
IF ~~ THEN REPLY ~It sounds dangerous and I hope your preparations are adequate.~ GOTO prisonattackready
IF ~~ THEN REPLY ~What if such an attempt never comes?~ GOTO prisonifattacknevercome

CHAIN
IF ~~ THEN Z#KIYOP prisonattackready
~I am as well prepared as I can be, to the extent of preparing some equipment of Kova's for him as well, as I will need him on my side if we are to escape from an attack in one piece.~
= ~Meantime, if there are attempts to transfer him to other holding areas, I will shadow the escort in my own way to see to it that no treachery is afoot.~
END
IF ~~ THEN REPLY ~Very well, I hope that you can deal with what does come up.~ GOTO byefromprison
IF ~~ THEN REPLY ~What if such an attempt never comes?~ GOTO prisonifattacknevercome

CHAIN
IF ~~ THEN Z#KIYOP prisonifattacknevercome
~I'll wait until I am certain before I leave him to his fate here. In meantime, if there is an official court order for him to be executed, then I'll decide it's time to move on.~
= ~In any case, I appreciate your concern. We are doing as well as can be under current circumstances.~
= ~Meantime, I would like to be left to my thoughts, but I wish be well in your travels ahead.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOP prisjoinus
~Much as I would like to, I'm afraid I cannot accept your offer for a few reasons.~
EXTERN Z#KIYOP whystayprison

CHAIN
IF ~~ THEN Z#KIYOP byefromprison
~I appreciate your concern. We are doing as fine as can be expected under such circumstances.~
= ~Meantime, I wish you well in your travels ahead.~
EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR1005")
Global("Z#TrialClear","GLOBAL",1)~ THEN Z#KOVAP whatyoudoinginprison
~We meet again, but what is there to say that has not already been said?~ 
= ~As I mentioned before, thank you for everything, and now at the end of the day I am right where I deserve to be, right where I belong. Things are as they should be.~
= ~But life can't be so unhappy for you. You do not belong here like I do.~
== Z#KIYOP ~You know as well as I do that you do not belong here.~
== Z#KOVAP ~Which is not very well at all.~
= ~Well, <GABBER>, is there anything you wish to say to me?~
END
IF ~~ THEN REPLY ~Why do you remain here in the prison when you could break free and be elsewhere?~ GOTO priskvfree
IF ~~ THEN REPLY ~You are innocent - could you not try to break free and maybe even travel with us again?~ GOTO priskvfree
IF ~Global("Z#Kiyosaywhyprison","AR1005",1)~ THEN REPLY ~Kiyone mentioned possible attacks on your person. Are you ready for that?~ GOTO priskvonattacks

CHAIN
IF ~~ THEN Z#KOVAP priskvfree
~Though I may be innocent of the charges raised against me, there are other things I am guilty of. I might get out of here in one piece, but the question that should be asked is if I deserve to belong here.~
= ~I might be placed here by corruption and schemes, but it does not change the fact that this is the place for those who have walked in darkness like I did. Perhaps if this world were anything but a human world, there might be forgiveness, but it is not.~
= ~Now that my past has caught up with me, I have no intention to keep running from it. Though some may consider me strong, like she who guards me, I think it only goes to show how weak people do not belong in the shadows.~
EXTERN Z#KOVAP prisamdone

CHAIN
IF ~~ THEN Z#KOVAP priskvonattacks
~I think before either of us joined you, we both expected attacks of some sorts. Travelling with you only proved that point even though we were continually moving about.~
= ~Now that I'm incarcerated here, not only are we no longer surrounded by strong companions, but they now know exactly where I am. As such, I think it would be a given that some sort of attack will come, unless of course, I am to be executed officially.~
END
IF ~~ THEN REPLY ~What then would you do if you are executed officially?~ GOTO priskvonexec
IF ~~ THEN REPLY ~How do you intend to handle an attack in such confines and surroundings as this?~ GOTO priskvonattacks2

CHAIN
IF ~~ THEN Z#KOVAP priskvonattacks2
~I still have knowledge of some spells, and I expect Kiyone would free me from my cell about then, and I'll have some use of my own equipment.~
= ~From there, I expect we will both try to sneak out in the confusion, or some such. If we fail, I'll probably die, and she might die unless she gets away, and that'll be all there is to it.~
EXTERN Z#KOVAP prisamdone

CHAIN
IF ~~ THEN Z#KOVAP priskvonexec
~I'm not sure what Kiyone plans to do for that, but I don't have much views on it personally. I just look forward to seeing how she'll react when it comes up, I think.~
= ~Just one of a few simple little pleasures left for me to look forward to.~
EXTERN Z#KOVAP prisamdone

CHAIN
IF ~~ THEN Z#KOVAP prisamdone
~Well, you've wasted enough time here already, <GABBER>. I'm sure there must be more interesting, important and profitable things to do than to remain here speaking with me.~
= ~The road ahead is bright, so keep walking in the light, and do not miss the darkness.~
EXIT

EXTEND_BOTTOM PRISONK1 0
IF ~InMyArea("Kiyone") InMyArea("Kova") Global("Z#TrialClear","GLOBAL",1)
!InParty("Kiyone") !InParty("Kova") Global("Z#KKLeavePrison","AR1005",0)~ THEN REPLY ~I'm here to see Kova, and maybe Kiyone, if she is here.~ EXTERN PRISONK1 kkareinprison
IF ~!InMyArea("Kiyone") !InMyArea("Kova") Global("Z#TrialClear","GLOBAL",1)
!InParty("Kiyone") !InParty("Kova") Global("Z#KKLeavePrison","AR1005",1)~ THEN REPLY ~Where are Kova and Kiyone?~ EXTERN PRISONK1 kkarenolongerinprison
IF ~GlobalGT("Z#TrialClear","GLOBAL",2) !GlobalTimerExpired("Z#Part7Timer","GLOBAL")~ THEN REPLY ~Is Seida being held here in the prison?~ EXTERN PRISONK1 seidacaptive
IF ~GlobalGT("Z#TrialClear","GLOBAL",2) GlobalTimerExpired("Z#Part7Timer","GLOBAL")~ THEN REPLY ~Is Seida being held here in the prison?~ EXTERN PRISONK1 seidaescaped
END

CHAIN
IF ~~ THEN PRISONK1 seidaescaped
~It pains me to say this, but yesterday the special prison we held him in was... attacked.~
= ~All we found the next day was several corpses of the guards, and the prisoner you speak of was nowhere to be found. All the other inmates were left as they were.~
EXIT

CHAIN
IF ~~ THEN PRISONK1 kkareinprison
~You must be the one who assisted in the case. Very well, you can find them just left of the way you came in, past the wall.~
= ~That girl though, she isn't the most chatty sort. Would appreciate it if you could soften her a little - my men are tiptoeing around her practically all the time.~
EXIT

CHAIN
IF ~~ THEN PRISONK1 kkarenolongerinprison
~They're no longer here. That Kova fellow was transferred out of here just the other day, and a group of guardsmen came to take him away.~ 
= ~That girl who was guarding him checked their papers and handed him over to them, before leaving shortly after, for her next case, as I heard her saying.~
= ~If you intend to locate them, you're better off looking somewhere else other than in my prison.~
EXIT

// Bribe Byl Clear

CHAIN
IF ~~ THEN BYLANNA Z#BribeBylClear
~Regarding the murder of the kidnapped nobles, these were first linked to the accused by Inspector Dayven. New findings have indicated that the Shadow Thieves took especial care to make sure the link was made so that evidence points to the accused.~
= ~Further evidence has arisen regarding this pointing to individuals who are guilty in the crime. Although the key perpetrator has not been apprehended yet, at this point in time we can be certain that the accused is almost certainly innocent of the charge.~
== Z#Nob3 ~"Almost certainly"? You call THAT a verdict!?~
== Z#Nob1 ~This is an outrage!~
== BYLANNA ~Regardless of opinion, we have evidence that declares him innocent, though since investigations are still underway, to present them in this trial would endanger the investigators.~
= ~Therefore, this court acquits the accused of the charge against him concerning the murders of the kidnapped nobles.~
== Z#Nob1 ~You cannot expect us to accept this!~
== Z#Nob2 ~I demand justice for my son!~
== Z#Nob3 ~Who then is guilty!?~
== BYLANNA ~Rest assured, my lords and ladies, the guilty one will not go free. Even now we have accomplices in custody, and once statements have been extracted from them to identify the main culprit, we will put them up for trial.~
== Z#Nob1 ~Pfaugh! I want them on the stand now!~ 
== Z#Nob2 ~*WE* want them on the stand now! We've waited long enough for you to conclude your investigations, now we want justice for our children!~
== BYLANNA ~This session is in hearing concerning the accused Kova Kashiro. The accomplices will stand trial in due time, and the murderer as well, when identified and apprehended.~
== Z#Nob1 ~You incompetent idiots! After so long you haven't yet found the culprit?~
== Z#Nob3 ~This is a farce! I came here to see justice for my daughter, not to see a man go free!~
== BYLANNA ~Order.~
== Z#Nob2 ~This has been a waste of our time!~
== BYLANNA ~My lords and ladies, this hearing concerns accused Kova Kashiro, and that detail will not change.~
= ~However, if you wish to, there is nothing to stop you from leaving this trial.~
== Z#Nob3 ~We will not forget this farce, magistrate.~
DO ~EscapeArea()~
== Z#Nob1 ~If my son's death is not avenged soon, you will regret it.~
DO ~EscapeArea()~
== Z#Nob2 ~I've wasted enough time here already. I have more important things to do than to see all this fuss about a mere commoner.~
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
~It is done, and you and your companions are free to go, <CHARNAME>.~
== Z#KIYOJ ~Good. Now that our business here is done, let us begone from here.~
DO ~AddexperienceParty(36000)
SetGlobal("Z#ByePostBribe","Z#1002",1)
AddJournalEntry(@1041,QUEST_DONE)
ReputationInc(1)~ EXIT

CHAIN
IF ~AreaCheck("AR1000")
Global("Z#KiyoneComplainBylBribe","LOCALS",0)
Global("Z#TrialClear","GLOBAL",2)~ THEN Z#KIYOJ GetBackAtByl
~Finally, out of that festering pit of corruption!~
DO ~SetGlobal("Z#KiyoneComplainBylBribe","LOCALS",1)~
== Z#KOVAJ ~Thank you, Kiyone. I did not expect to come out of all this in one piece, but now I wonder if was worth it.~
== Z#KIYOJ ~You owe me nothing, and certainly no thanks of any sort. It was <CHARNAME>'s decision alone that spared you from being condemned.~
== Z#KOVAJ ~You were the one who led the investigation.~
== Z#KIYOJ ~You know as well as I do that none of it means anything, and none of it ever meant anything. Life continues as it always has been - with the gold speaking louder than anything else.~
== Z#KOVAJ ~I am sorry, Kiyone.~
== Z#KIYOJ ~Whatever for? It is fitting that I am reminded that this is the unchanging reality of life.~
== Z#KOVAJ ~Perhaps you would not have forgotten, if not for me.~
== Z#KIYOJ IF ~Dead("Z#MESSEN")~ THEN
~You had nothing to do with it - my lack of concentration and carelessness was what led me to it. Meantime, I hope Bylanna enjoys her current position - she will certainly be out of it when I return to Athkatla and carry out a proper investigation.~
== Z#KIYOJ IF ~!Dead("Z#MESSEN")~ THEN
~You had nothing to do with it - my lack of concentration and carelessness was what led me to it. I only hope that Myroven will succeed in putting her in the stocks she belongs in.~
= ~If not, I hope Bylanna enjoys her current position - she will certainly be out of it when I return to Athkatla and carry out a proper investigation.~
EXIT

// Trial All Clear

CHAIN
IF ~~ THEN BYLANNA Z#TrialAllClear
~Regarding the murder of the kidnapped nobles, these were first linked to the accused by Inspector Dayven. New findings have indicated that the Shadow Thieves took especial care to make sure the link was made so that evidence points to the accused.~
= ~Most recently though, we have found that the accused is not the only one in possession of the type of blade used to be murder the nobles.~ 
= ~The man who wants him dead also possesses a similar blade, and coincidentally, the reward that this man offers for the accused's capture or demise is of the same amount as the total of the ransom paid by victims' families.~
= ~Therefore, this court acquits the accused of the charge against him concerning the murders of the kidnapped nobles.~
== Z#Nob3 ~You cannot expect us to accept this!~
== Z#Nob1 ~This is an outrage!~
== Z#Nob2 ~Who then is responsible for my son's murder?~
== Z#Nob3 ~Where is this murderer?~
== BYLANNA ~Rest assured, my lords and ladies, the guilty one will not go free. He is currently kept in custody, awaiting his turn to stand trial.~
== Z#Nob1 ~Pfaugh! I want him on the stand now!~ 
== Z#Nob2 ~*WE* want him on the stand now! We've waited long enough for you to conclude your investigations, now we want justice for our children!~
== BYLANNA ~This session is in hearing concerning the accused Kova Kashiro. The actual murderer will stand trial in due time.~
== Z#Nob3 ~This is a farce! I came here to see justice for my daughter, not to see a man go free!~
== BYLANNA ~Order.~
== Z#Nob2 ~This has been a waste of our time!~
== Z#Nob1 ~Where is the bastard!? Make him face justice!~
== BYLANNA ~My lords and ladies, this hearing concerns accused Kova Kashiro, and that detail will not change.~
= ~However, if you wish to, there is nothing to stop you from leaving this trial.~
== Z#Nob3 ~We will not forget this farce, magistrate.~
DO ~EscapeArea()~
== Z#Nob1 ~If my son's death is not avenged soon, you will regret it.~
DO ~EscapeArea()~
== Z#Nob2 ~I've wasted enough time here already. I have more important things to do than to see all this fuss about a mere commoner.~
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
~Now, where were we?~
DO ~SetGlobal("Z#NoblesLeft","Z#1002",2)~
= ~Yes, to matters concerning the final charge against the accused, that of the murder of Cowled Enforcers during their tour of duty, barely a few days after Shanro was poisoned.~
== BYLANNA ~The murder of the enforcers was in fact witnessed by one other, who later was himself murdered while fleeing Amn.~
= ~He did tell another of what he had seen, from whom we have a signed statement, and the actual murderer's description does not match that of the accused.~
== BYLANNA ~Interestingly, the description matches that of the Cowled Wizard sent to Brynnlaw to apprehend the accused, and whose appearance was closely followed by the appearance of Shadow Thieves.~
== BYLANNA ~Even more coincidentally, this was also the same person who happened to be tasked with investigating the Enforcer Murders within the Cowled Wizards, and whose investigations led to the creation of this very charge against the accused.~ 
== Corneil ~You disappoint me, Bylanna. I told you not to believe their lies.~
== BYLANNA ~I see what I see, Corneil, and judge accordingly. No judgment is perfect, but I do my humble best.~
== Corneil ~They say she has links to the Shadow Thieves, but they have no proof.~
== BYLANNA ~Regardless, this court acquits the accused of the charge against him of murdering the Cowled Enforcers on duty.~
== Corneil ~You are playing into their hands, but you have your favourites, as always.~
== BYLANNA ~As do you, and I am sure your favourite's view holds more weight than any of the proceedings of this court. I know the boundaries of my jurisdication well, Corneil. There is little I can do if the Cowled Wizards elect not to honor this ruling.~
== Corneil ~How well you know me, Bylanna.~ 
== BYLANNA ~In conclusion, this court has found the accused not guilty of all the charges brought against him, and declares him innocent with respect to those charges.~
= ~There is however, the matter of previous trespasses against the law that the accused is guilty of, by his own admission, especially during his time in association with the Shadow Thieves.~
= ~This concern is measured off against the fact that his assistance and presence was critical in ferreting out the true perpetrator of such deeds.~
= ~As such, this court has decided not to award the accused the reward concerning the apprehension of the perpetrator, but will instead pardon the accused of all previous trespasses against the law and the nation of Amn.~
= ~That is all.~
DO ~SetCutSceneLite(TRUE)
PlaySound("kktrialc") PlaySong(0)
AddexperienceParty(48000)
ReputationInc(1)
AddJournalEntry(@1042,QUEST_DONE)
RealSetGlobalTimer("Z#NoblesLeftT","Z#1002",2) // (move to AR1002)
SetGlobal("Z#TrialClear","GLOBAL",4)~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1002")
RealGlobalTimerExpired("Z#NoblesLeftT","Z#1002")
Global("Z#TrialClear","GLOBAL",4)~ THEN BYLANNA Z#PostAcquittal
~Ah, it is good to finally have all that unpleasant business behind us.~
DO ~SetGlobal("Z#TrialClear","GLOBAL",5)~
== Z#MESSEN ~Indeed. All that is left is to say what farewells might be said, though the possibility of assuaging Corneil's doubts might also be good idea.~
== BYLANNA ~Let us not worry about that stodgy colleague of mine. If nothing else, congratulations are in due order.~
= ~All in all, I am quite happy for you, Kiyone, especially if he is the man that your reports have made him out to be.~
== Z#KIYOJ ~That he is indeed, but I don't see what there is to be exceptionally happy about. An injustice has been righted, and the world at large is just a little closer to the way it should be.~
== BYLANNA ~Oh, is that really all there is to the matter, to you? I thought he would be a close friend, at least, after such times as you've had together.~
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
~That he is, but that is unrelated to the case. Previously it was subject to the case, but now it is subject no longer.~
== Z#KIYOJ IF ~!GlobalGT("KKRomance","GLOBAL",1)~ THEN
~Not quite a close friend, but still a friend nonetheless. It was a detail previously subject to the case, but now it is subject no longer.~
== Z#KOVAJ ~In other words, she has little further reason to put up with my company, now that her duty is done.~
== Z#KIYOJ ~Not quite. We still have to secure something that belongs to <CHARNAME> and return it back to its rightful owner.~
== Z#KOVAJ ~Of course, what was I thinking?~
== Z#KIYOJ IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
~Nothing, except to make sure we continue travelling together, I suppose.~
== BYLANNA ~In any case, I wish all of you the best, and thank you for the work you have done here.~
== Z#MESSEN ~May Tyr watch over you, always.~
EXIT

CHAIN
IF ~GlobalGT("Z#TrialClear","GLOBAL",2)
Global("Z#postfullacquit","LOCALS",0)
AreaCheck("AR1000")~ THEN Z#KOVAJ Z#postfullacquit
~It is finally over. Not even in my wildest dreams did I expect it possible, but it seems that somehow, it has happened. I wish I knew how to thank you, <CHARNAME>, Kiyone, and all the rest of you.~ 
DO ~SetGlobal("Z#postfullacquit","LOCALS",1)
PlaySound("kktrialc") PlaySong(0)~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")~ THEN
~Have you no appreciation for how much seven thousand gold pieces is? That you treat losing it as if it were something worth celebrating shows your utter lack of anything remotely resembling intelligence!~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !Global("AnomenIsKnight","GLOBAL",1)~ THEN
~I accept your thanks, though they are poor payment for putting up with your senseless words and lending my arm to protect your hide. The satisfaction of having served Helm in this matter is a far better reward than your thanks.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") Global("AnomenIsKnight","GLOBAL",1)~ THEN
~Your thanks are well-received, and I am pleased that Helm has seen fit to pardon you of all your other crimes. It will be good to serve beside you, now that you are no longer held guilty in the sight of Helm.~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN
~So you can show some gratitude after all. Looks like our efforts finally paid off, and I hope it means you'll be more polite in future.~
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy")~ THEN
~Congratulations, Kova. I am happy that you have the redemption you deserve, and I look forward to travelling more with you now that the shadow of your past no longer hangs over you.~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN
~I am proud of you, my friend, even as I congratulate you. Though you have tested my patience sorely more than once, Torm has seen fit to free you from your undeserved burden, and you now have what you so eagerly sought.~
= ~Pardon is a rare thing, and I pray that you treasure it and daily give thanks. May you walk the straight and narrow path always, and never depart from it.~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN
~So Mr Grouchy, I guess this must be it for your black-faced days, yes? Heh you sure do look better without your face being so long.~
= ~Between me getting my soul back and you getting acquitted, I guess that makes us about even. Now all we need to do is to go find my little <PRO_BROTHERSISTER>'s soul back, and that'll leave us all good and ready for more adventures.~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")~ THEN
~It seems that you also, despite not thinking something possible, has come into it, but with a more wholesome ending than I. Though I cannot help but feel a little envious, it is well to see things end so for you.~ 
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN
~To each comes the justice he or she deserves - that is the way of balance, and you have received no more than what you deserve. It has not come easy, but to see it happen makes me well pleased.~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN
~I am just happy that this is over, so that you have don't have to look so serious about things all the time, but can be happy.~
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis")~ THEN
~Yet another bird freed from its cage, though it was one of his own devising, but how sweet it is to hear our nightingale sing so! But freedom is not forever - I suspect some sparrow-hawk might have an eye out for a new prey.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN
~I for one don't see much for you to be glad about, especially the loss of your reward in return for some temporary, imaginary benefit. As if the approval of those worms was someting dear to be sought for.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN
~Ye definitely yellow, to be all that up about some stupid no-use pardon. I'd wager we could do more with the lump sum of gold that was promised, and it's not as if me axe ain't up for a good fight or two.~
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN
~This reminds me of the time my nephew Kavo broke out of prison, and was so happy he ran smack-dab into a group of turnip sellers, and knocked over their stalls and all those fine turnips. They got so upset they had the guards drag him to see their leader Yoneki. She was so mad and hated him so much from the start she had him locked up to punish him. Few days later we got invited to their wedding, but I can't remember, did I tell any of you before about what happened at the wedding?~
== Z#KOVAJ ~Still, to say I do not know any uncertainty would be untrue, since I'm not sure where to be except here, or what I intend to do outside of this party now that I'm, in a sense, an ordinary citizen again.~
== Z#KIYOJ ~You'll never be ordinary, you know that.~
== Z#KOVAJ ~Nor will you be. A lifetime I suspect, is too short a time for which to be grateful to you.~
== Z#KIYOJ ~Grateful for what, anyway? For promoting your indulgence in an irrational, silly desire to be good? Don't be a fool, Kova.~
== Z#KOVAJ ~Heh, how true. <CHARNAME> could have done better with the seven thousand gold reward, yes?~
== Z#KIYOJ ~I doubt it, and something in me tells me that things are better this way, if for nothing else to save me from all your whining and moaning about being in darkness. Though I think Bylanna was just serving her own ends to help with the Council treasury.~
= ~But fine, you've made well your point about my own practical sense.~
== Z#KOVAJ ~Well, apart from the Cowled Wizards after us, it is a good <DAYNIGHT>. Plus we have Seida behind bars. I am glad that we did not have to kill him - perhaps some good might yet come of this mercy.~
== Z#KIYOJ ~And I am starting to think this relief over your trial is getting to your head, and you're becoming too good for your own good.~
== Z#KOVAJ ~Well fancy hearing that from you. But of course, insight and understanding is preferred over indiscriminate mercy.~
== Z#KIYOJ ~So what does your insight and understanding say about future problems?~
== Z#KOVAJ ~To be honest, I suspect they'll be forthcoming once he gets out. Besides, Kharen is still on the loose, and there'll be things enough to watch out for.~
= ~But for now, I'm happier than I've been for a while. My whole life in fact, I think, unless it be for when...~
== Z#KIYOJ ~That is well. Being happy looks becoming on you.~
== Z#KOVAJ  IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
~Well, if my eyes do not deceive me, less for me than it is for you.~
== Z#KIYOJ  IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
~Spare your flattery for one with a ear for it, my friend.~
EXIT

// BTL Part 7

CHAIN
IF ~~ THEN PRISONK1 seidacaptive
~I'm afraid not, my <PRO_LORDLADY>. The court has ordered that he be kept in a special high security prison, away from those who might try to rescue or kill him before his trial.~
= ~If you need information from him, you can ask an inspector to interrogate him on your behalf, since only they and the wardens have the access to the prison.~
= ~Sorry about not being able to help. You have earned my deepest respect in your successful handling of this case, but orders are orders.~
DO ~SetGlobal("Z#BTLPart7","GLOBAL",1)~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("AR1005")
!GlobalTimerExpired("Z#Part7Timer","GLOBAL")
Global("Dayven", "GLOBAL", 13)
Global("Z#BTLPart7","GLOBAL",1)~ THEN DAYVEN youlookingseida
~I heard you were looking for access to the Shadow Thief guildmaster who is being held in custody.~
DO ~SetGlobal("Z#BTLPart7","GLOBAL",2)~
= ~Since the last time when you let me off the hook, I have been wondering about what I could do for you, and while I can't get you in the special prison, I can go and help keep an eye on him.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Thank you, inspector Dayven. You're a good man.~
== DAYVEN IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Just doing my part, my lady.~
== DAYVEN ~I was thinking of going in as a guard or something, supposedly under court orders to help keep an eye on him. That way if anything comes up, I will be able to get a message to you as soon as possible.~
END
IF ~OR(2)
CheckStatGT(LastTalkedToBy, 13, INT)
CheckStatGT(LastTalkedToBy, 13, WIS)~ THEN REPLY ~If a rescue attempt is made on Seida, your life will be in great danger.~ EXTERN DAYVEN dangerprison
IF ~~ THEN REPLY ~What if the other guards catch on to your deception?~ EXTERN DAYVEN whatifcatchguard
IF ~~ THEN REPLY ~Thank you for undertaking such risks for us.~ EXTERN DAYVEN thankyoudayven

CHAIN
IF ~~ THEN DAYVEN dangerprison
~Yes, I suppose you might be right. Twould be better if I can get Inspector Brega to allow me in as a fellow prisoner in a cell nearby, to observe what goes on with Seida.~
DO ~SetGlobal("Z#BTLPart7Prison","GLOBAL",1)~ 
END
IF ~~ THEN REPLY ~Thank you for undertaking such risks for us.~ EXTERN DAYVEN thankyoudayven

CHAIN
IF ~~ THEN DAYVEN whatifcatchguard
~Well, if I get caught, tis no more than what I deserve. Perhaps you have something else in mind?~
END
IF ~OR(2)
CheckStatGT(LastTalkedToBy, 11, INT)
CheckStatGT(LastTalkedToBy, 11, WIS)~ THEN REPLY ~Why not disguise yourself as a prisoner?~ EXTERN DAYVEN dangerprison
IF ~~ THEN REPLY ~Thank you for undertaking such risks for us.~ EXTERN DAYVEN thankyoudayven

CHAIN
IF ~~ THEN DAYVEN thankyoudayven
~You're welcome, but tell me, what sort of information should I expect? With the trial over, I would think the only thing left is for you to convince Senior Corneil, but I doubt he would take the word of a mere Inspector.~
EXTERN DAYVEN ribaldeye

CHAIN
IF ~~ THEN DAYVEN ribaldeye
~I've heard that Ribald Barterman has this Everseeing Eye that can be used to watch events, and then reveal it for others to see. However, it's not for sale, and I'm not sure what it would take to get him to part with it.~
= ~Still, if it works as I've heard and you can get it from him, I'm sure Corneil will have no choice but to accept the witness of the Eye.~
= ~I will be here waiting for you when you manage to get the Eye. No point for me to take too many risks if tis not going to do you any good.~
DO ~AddJournalEntry(@1060,QUEST)~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BTLPart7","GLOBAL",2)
!GlobalTimerExpired("Z#Part7Timer","GLOBAL")
!PartyHasItem("Z#Eye")~ THEN DAYVEN noribaldeye
~Without the Eye, I do not think there'll be much point in me reporting what I see to Corneil. He'll just assume that we are deceiving him.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#BTLPart7","GLOBAL",2)
!GlobalTimerExpired("Z#Part7Timer","GLOBAL")
PartyHasItem("Z#Eye")~ THEN DAYVEN gotribaldeye
~Thank you, <CHARNAME>! May the Gods watch over you, and I will be sure to let you know if anything comes up.~
DO ~SetGlobal("Z#BTLPart7","GLOBAL",3)
TakePartyItem("Z#Eye") DestroyItem("Z#Eye")
AddJournalEntry(@1062,QUEST)
EscapeArea()~ EXIT

CHAIN
IF WEIGHT #-1 ~GlobalTimerExpired("Z#Part7Timer","GLOBAL")
Global("Dayven","GLOBAL",13)
GlobalLT("Dayvensaynocanhelp","LOCALS",2)
GlobalGT("Z#BTLPart7","GLOBAL",0)
GlobalLT("Z#BTLPart7","GLOBAL",3)~ THEN DAYVEN z#seidagone
~As much as I'd like to be of service, there's nothing I can do for you now regarding Seida. If nothing else, I guess I'm also grateful I was not in that place for whatever reason that day.~
DO ~IncrementGlobal("Dayvensaynocanhelp","LOCALS",1)~ EXIT

EXTEND_BOTTOM RIBALD 0
IF ~Global("z#ribaldeye","LOCALS",0)
Global("Z#BTLPart7","GLOBAL",2)~ THEN REPLY ~I was wondering if you might have an artifact called the Everseeing Eye available for purchase.~ EXTERN RIBALD z#mentioneye
IF ~Global("z#ribaldeye","LOCALS",1)
GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY ~Thanks for the use of your artifact, and now I'm here to return it.~ DO ~GiveGoldForce(4000)~ EXTERN RIBALD z#returneye
IF ~Global("z#ribaldeye","LOCALS",1)
!GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY ~Thanks for the use of your artifact, and now I'm here to return it.~ DO ~GiveGoldForce(2000)~ EXTERN RIBALD z#returneye
IF ~Global("z#ribaldeye","LOCALS",2)
GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY ~Thanks for the use of your artifact, and now I'm here to return it.~ DO ~GiveGoldForce(3000)~ EXTERN RIBALD z#returneye
IF ~Global("z#ribaldeye","LOCALS",2)
!GlobalTimerNotExpired("z#ribaldeyetimer","LOCALS")
PartyHasItem("Z#Eye")~ THEN REPLY ~Thanks for the use of your artifact, and now I'm here to return it.~ DO ~GiveGoldForce(1500)~ EXTERN RIBALD z#returneye
END

CHAIN
IF ~~ THEN RIBALD z#mentioneye
~Why yes <CHARNAME>, it be good to know that ye have heard of such a thing as the Everseeing Eye around me shop.~
= ~But the sharp-eyed adventurer ye are may also have noticed this item of mine isn't exactly put on display hereabouts. It is a momento from me first run-in with a Beholder, and brings back memories of comrades from quite long ago.~
= ~Still, I understand ye need is rather dire, and I for one, wouldn't want to see such a precious customer fall foul of the Cowled Wizards, or anyone else for that matter.~
= ~Since ye are a person of fair repute, I could loan it to ye, for a fee. And of course, a deposit to be repaid to you once my Eye is returned to me. Just a little incentive to ensure that it comes back in one piece.~
= ~I think 6000 gold would be a fair deposit. If ye return the Eye within 3 days, it'll be 4000 gold back in your purse; and if ye return it anytime past that, that'll be 2000 gold back in ye graces. What say you, <CHARNAME>?~
END
IF ~PartyGoldGT(5999)~ THEN REPLY ~That sounds fair - I'll take you up on your offer.~ DO ~SetGlobal("z#ribaldeye","LOCALS",1)
TakePartyGold(6000) DestroyGold(6000)~ EXTERN RIBALD z#giveeye
IF ~CheckStatGT(Player1,14,CHR)~ THEN REPLY ~You ask for too high a price, though I might consider if it were lowered.~ EXTERN RIBALD z#bargaineye
IF ~!CheckStatGT(Player1,14,CHR)~ THEN REPLY ~You ask for too high a price, though I might consider if it were lowered.~ EXTERN RIBALD z#nobargaineye
IF ~~ THEN REPLY ~I am sorry, but after hearing you out I've lost interest in dealing on this matter.~ EXTERN RIBALD 1

CHAIN
IF ~~ THEN RIBALD z#bargaineye
~Since ye put it that way, who is Ribald to deny a customer of something so thrilling?~
= ~Just for ye, I'll make it 4500 deposit, with 3000 to be refunded upon return within 3 days, and 1500 for any time beyond that. But lower than that I cannot go - after all, the Eye is not exactly for sale, ye know.~
END
IF ~PartyGoldGT(4499)~ THEN REPLY ~That sounds fair - I'll take you up on your offer.~ DO  ~SetGlobal("z#ribaldeye","LOCALS",2)
TakePartyGold(4500) DestroyGold(4500)~ EXTERN RIBALD z#giveeye
IF ~~ THEN REPLY ~I am sorry, but after hearing you out I've lost interest in dealing on this matter.~ EXTERN RIBALD 1

CHAIN
IF ~~ THEN RIBALD z#nobargaineye
~I'm afraid I cannot go lower than that price - after all, the Eye is not for sale. If I didn't have a heart to help out a good customer in so much need, I wouldn't even consider loaning the Eye out to anyone.~
END
IF ~PartyGoldGT(5999)~ THEN REPLY ~That sounds fair - I'll take you up on your offer.~ DO ~SetGlobal("z#ribaldeye","LOCALS",1)
TakePartyGold(6000) DestroyGold(6000)~ EXTERN RIBALD z#giveeye
IF ~~ THEN REPLY ~I am sorry, but after hearing you out I've lost interest in dealing on this matter.~ EXTERN RIBALD 1

CHAIN
IF ~~ THEN RIBALD z#giveeye
~Good, we have a bargain then. Here is the Eye, and a parchment with it to assist ye in your use of it.~
DO ~GiveItemCreate("Z#Eye",Player1,0,0,0) AddJournalEntry(@1061,QUEST)~ 
= ~I look forward to hearing how it has helped, and of course, to its safe return and you the money I owe you in exchange for getting my Eye back.~
EXIT

CHAIN
IF ~~ THEN RIBALD z#returneye
~Ye too kind, <CHARNAME>. It's been a right good pleasure to have been of service, and I am glad to get my Eye back.~
DO ~SetGlobal("z#ribaldeye","LOCALS",3) 
TakePartyItem("Z#Eye") DestroyItem("Z#Eye")
EraseJournalEntry(@1061)
AddJournalEntry(@1065,QUEST_DONE)~
= ~Meantime, if there's anything else ye might be looking for around these parts, I'll be right here waiting to be of service.~
EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#TellSeidaFree","GLOBAL",2)~ THEN Z#MESSEN z#seidafree
~I bear grave news with me, <CHARNAME>. Yesterday the special prison we held Seida in was broken into. Whoever did it left behind a trail of dead guards, and Seida himself was nowhere to be found.~
== Z#MESSEN IF ~Global("Z#BTLPart7","GLOBAL",3)~ THEN 
~More sadly, I regret to inform you of the death of Inspector Dayven. We do not know what he was doing there serving as a guard, but he was found dead nonetheless.~
== Z#MESSEN ~We will do our best to see to it that Seida is apprehended once more. Meantime, <CHARNAME>, it would do well for you to be watchful wherever you go. Take care.~
DO ~SetGlobal("Z#BTLPart7","GLOBAL",5)
SetGlobal("Z#TellSeidaFree","GLOBAL",3)
AddJournalEntry(@1059,QUEST_DONE) EscapeArea()~ EXIT 

CHAIN
IF WEIGHT #-1 ~Global("Z#BTLPart7","GLOBAL",4)
Global("Z#BTLPart7Prison","GLOBAL",1)~ THEN DAYVEN z#dayvenalivereport
~I'm glad I've finally caught up with you, <CHARNAME>, but I wish the news I have for you were better.~
= ~Yesterday the special prison in which we held Seida was broken into, by what seems to be a magic-using white-haired assassin of considerable prowess.~
= ~I saw all of it from the prison cell, and used the Everseeing Eye to capture it. It was mortifying though to see how she killed our best trained guards...~ 
= ~I doubt I'd be alive now if I had been watching over the prisoner in my status as a guard.~
= ~This is the Eye, and I will take my leave now to prepare a report to Lady Bylanna and Inspector Brega. After that, hopefully some days of rest will banish the images of death I have seen. Take care, my friend.~
DO ~GiveItemCreate("Z#Eye",Player1,0,0,0)
SetGlobal("Z#BTLPart7","GLOBAL",7)
AddJournalEntry(@1063,QUEST) EscapeArea()~ EXIT

CHAIN
IF ~~ THEN CORNEIL z#showcorneye
~As if this Eye would have anything very interesting to show me! I have heard of it, but at least I can be sure what I see wouldn't be part of your machinations.~
DO ~StorePartyLocations()
ActionOverride(Player1,LeaveAreaLUA("Z#1005","",[10000.10000],0))~ EXIT

CHAIN
IF WEIGHT #-1 ~Global("Z#KharenMove","GLOBAL",6)
AreaCheckObject("AR1002",Player1)~ THEN CORNEIL z#postshowcorneye
~Well... that was certainly most interesting.~
DO ~SetGlobal("Z#KharenMove","GLOBAL",7)~
= ~I... cannot help but admit that I may have misjudged the one you know as Kharen.~
= ~If what we have just seen is true, as it very probably is, then the Cowled Wizards owe you a great favour, <CHARNAME>.~
= ~I suppose I owe you my thanks, though I say this with some chagrin. As of today, the Cowled Wizards will no longer hunt you and your companions.~
== CORNEIL IF ~Global("BribedCowled","GLOBAL",0)~ THEN 
~Furthermore, as a token of my appreciation, I will let my colleagues know that you are henceforth licensed to use magic in the streets of Athkatla, as and when you wish it.~
DO ~SetGlobal("BribedCowled","GLOBAL",1)~
== CORNEIL ~Now, I hope you'll excuse me - I have to draft up investigative measures to identify those within our ranks who have been influenced by Kharen.~
DO ~SetCutSceneLite(FALSE)
SetGlobal("Z#BTLPart7","GLOBAL",10)
AddexperienceParty(36000)
EraseJournalEntry(@1060)
EraseJournalEntry(@1062)
EraseJournalEntry(@1063)
AddJournalEntry(@1064,QUEST_DONE)
ReputationInc(1)
SetGlobal("BribeCorn","GLOBAL",1)
SetGlobalTimer("KKCowlT","GLOBAL",999999999)
SetGlobal("KKCowl", "GLOBAL", 0)~ EXIT

CHAIN
IF WEIGHT #-1 ~AreaCheck("Z#1005")
Global("Z#KharenMove","GLOBAL",3)~ THEN Z#SEID16 hikharen
~You're efficient, as usual, but running a little late.~
== KHAREN16 ~We've had to finish some thieves these few days. It seems Aran wants some information from you, and intends to finish you after making sure you talk. Naturally, that means that he no longer considers you as...~
== Z#SEID16 ~My position is of no consequence, as long as it is not known exactly who are our people. We can regain it when we return to deal with him after your brother is avenged.~
== KHAREN16 ~Meantime, we will need to move out, and find a place elsewhere to regroup.~ 
== Z#SEID16 ~I have already made contingency preparations for when we have to leave this country. There are friends waiting to welcome us in various places.~ 
== KHAREN16 ~Let's not keep them waiting, then.~
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
~** AND YOU, MORTAL, YOU HAVE SERVED ME WELL, IN BRINGING THESE TWO TOGETHER AND KEEPING THEM WELL. **~
END
IF ~CheckStatGT(Player1, 12, INT)~ THEN REPLY ~Are you talking about me bringing Kova and Kiyone here to you?~ EXTERN SUAVATAR KKTalkRillifane1
IF ~~ THEN REPLY ~Are you talking to me? I don't understand what you mean.~ EXTERN SUAVATAR KKTalkRillifane2
IF ~~ THEN REPLY ~What are you talking about? I never met you before.~ EXTERN SUAVATAR KKTalkRillifane3

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane1
~** INDEED, MORTAL. FOR TO HER I GAVE THE TASK OF REDEEMING HE WHO IS MINE, WHICH SHE HAS DONE, AND SO THE FAITH SHE FOUGHT TO KEEP WILL BE GIVEN TO HER. **~
EXTERN Z#KIYOJ KyTalkRillifane

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane2
~** I AM, MORTAL, AND I REFER TO YOUR CARE OF THESE TWO HERE, THE ONES YOU KNOW AS KOVA AND KIYONE. **~
= ~** FOR HE WAS GIVEN TO ME, AND IS NOW MINE, EVEN AS SHE HAS COMPLETED HER TASK BY REDEEMING HIM, AND THE FAITH SHE FOUGHT TO KEEP WILL BE GIVEN TO HER. **~
EXTERN Z#KIYOJ KyTalkRillifane

CHAIN
IF ~~ THEN SUAVATAR KKTalkRillifane3
~** I DO NOT SPEAK OF YOUR KNOWLEDGE OF ME, BUT OF YOUR CARE OF THESE TWO HERE, OF THE ONES YOU KNOW AS KOVA AND KIYONE. **~
= ~** FOR HE WAS GIVEN TO ME, AND IS NOW MINE, EVEN AS SHE HAS COMPLETED HER TASK BY REDEEMING HIM, AND THE FAITH SHE FOUGHT TO KEEP WILL BE GIVEN TO HER. **~
EXTERN Z#KIYOJ KyTalkRillifane

CHAIN
IF ~~ THEN Z#KIYOJ KyTalkRillifane
~What task are you talking about? I don't even know you, much less fight to keep any faith in you.~
DO ~SetGlobal("KKMetRillifane","GLOBAL",1)~ 
== SUAVATAR ~** YOU DID NOT KNOW ME, BUT I KNEW YOU BEFORE YOU WERE, AND APPOINTED YOU TO COMPLETE THE CARE OF A CHARGE - A BOY DEDICATED INTO MY CARE BEFORE MY SERVANT PASSED ON. **~
== Z#KOVAJ ~So you were the one who my mother served, who she devoted her life to...~
= ~And you were the one who let her die when you could heal her.~
== SUAVATAR ~** SHE CHOSE TO PASS ON, ENTRUSTING YOU TO MY CARE. **~
= ~** IF YOU THOUGHT YOURSELF STRONG, IT WAS BECAUSE I STRENGTHENED YOU, TO NOT SUCCUMB TO THE DARKNESS AROUND YOU, THAT WAITED TO CONSUME YOUR SOUL. **~
== Z#KOVAJ ~Bah! What have you ever done for me, or for her!~
== SUAVATAR ~** I KEPT YOU STRONG AND PURE FOR THE ONE I SENT TO REDEEM YOU BACK INTO MY PRESENCE, AND BECAUSE SHE HAS OBEYED MY WILL I HAVE PURIFIED HER AS WELL, THAT YOU BOTH MAY STAND BEFORE ME. **~
== Z#KOVAJ ~She might be, but I do not think that I am worthy to stand before you. Nor might I wish to, even.~
== Z#KIYOJ ~Quiet, Kova. Still your tongue in the presence of a God.~
== SUAVATAR ~** YOU BOTH HAVE SOUGHT TRUTH BUT NOT FOUND, YET THROUGH EACH OTHER HAVE DRAWN CLOSER TO IT. **~
= ~** SEEK AND YOU SHALL FIND, THAT YOUR REWARD IS NOT FAR. FOR I HAVE FOUND YOU WHO WERE LOST AND HAVE TURNED YOU BOTH FROM DARKNESS TOWARDS LIGHT. **~
= ~** BEHOLD, I HAVE GIVEN YOU THE RIGHT TO TO BE CALLED BY MY NAME AS MY CHILDREN. AND IF YOU DRINK OF ME, OUT OF YOUR HEARTS SHALL FLOW RIVERS OF LIVING WATER. **~
COPY_TRANS SUAVATAR 11

// rejoining after Temple of Rillifane

CHAIN
IF ~AreaCheck("AR2800")
Global("ElvenAvatar","GLOBAL",1)
Global("Z#KKLeftForTrial","GLOBAL",2)~ THEN Z#KOVAP z#comebackfromtrial
~It is good to see you again, <CHARNAME>. I assume it must have been your actions that resulted in the timely intervention of those spirits, which turned the tide of the battle.~
= ~Just in the nick of time, too. I hate those damned demons.~
== Z#KIYOP ~Not as much as the rakshashas irk me.~
= ~Regardless, they are routed. I had thought we joined the battle proper with Elhan's troops, but our efforts were less effective than I would prefer.~
= ~If seems we are once again in your debt - if not for your actions I have little doubt that neither of us would have survived to meet you again.~
== Z#KOVAP ~Unless we had chosen to beat a hasty retreat, of course.~
== Z#KIYOP ~Now that we have met you, I hope we are not too late to be of assistance.~
END
IF ~~ THEN REPLY ~I'm glad to see you both back in one piece. What was the outcome of Kova's trial?~ EXTERN Z#KIYOP z#trialask
IF ~~ THEN REPLY ~The outcome of the trial must have been quite something for you to leave me when I had to face the brunt of Irenicus' forces.~ EXTERN Z#KIYOP z#trialask
IF ~~ THEN REPLY ~There is still more that needs to be done, and I welcome having both back to stand with me.~ EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY ~The final battle is far from over, and I want you both back into my party, but only if you will not depart again when I need you most.~ EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY ~You two abandoned me when I needed you, and now return when you are not required.~ EXTERN Z#KIYOP z#getlost

CHAIN
IF ~~ THEN Z#KIYOP z#rejoinme
~Certainly, <CHARNAME>. It would be the right and true thing to stand with you against evil.~ 
DO ~SetGlobal("KiyoJoined","LOCALS",1) JoinParty()~
== Z#KOVAP ~It will be a privilege to try and repay to some small measure the aid and help that you have already dispensed to us.~
DO ~SetGlobal("KovaJoined","LOCALS",1) JoinParty()
SetGlobal("KKJoin","GLOBAL",1)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOP z#trialask
~The trial was... tolerable, if somewhat unfortunate.~
== Z#KOVAP ~Let's just say I owe nothing to that court - if not for Kiyone I would not have got through it in one piece.~
== Z#KIYOP ~I'm sure <CHARNAME> will be none the worse without the unsavoury details. All that needs to be known is that I will certainly return to Athkatla, conduct a proper investigation into the activities of the court, and only then will law and order return to that place.~
== Z#KOVAP ~The common love of money provokes an uncommon ire in Kiyone.~
== Z#KIYOP ~Yes, I'm sure it does not disturb you more than it does me. But we digress from the situation at hand. Would you require our aid at this juncture, <CHARNAME>?~
END
IF ~~ THEN REPLY ~There is still more that needs to be done, and I welcome having both back to stand with me.~ EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY ~The final battle is far from over, and I want you both back into my party, but only if you will not depart again when I need you most.~ EXTERN Z#KIYOP z#rejoinme
IF ~~ THEN REPLY ~You two abandoned me when I needed you, and now return when you are not required.~ EXTERN Z#KIYOP z#getlost


CHAIN
IF ~~ THEN Z#KIYOP z#getlost
~If that's the way you would have it, so be it. With most of the enemy gone, there should be little enough here to pose any real threat to you anyway.~
DO ~EscapeArea()~
== Z#KOVAP ~I can only guess what foes you must have bested to feel that way, and I cannot judge you for your anger. If you will not have us then we will go elsewhere we may be of assistance.~
= ~Be well and may you find and obtain what you seek.~
DO ~EscapeArea()~ EXIT


// Proposal

CHAIN
IF ~AreaCheck("AR2900")
GlobalGT("KKRomance","GLOBAL",1)
GlobalGT("Z#TrialClear","GLOBAL",2)
Global("Z#Proposal","GLOBAL",0) ~ THEN Z#KIYOJ Z#Proposal1
~So it seems you also died, Kova. This is disturbing. I don't feel very happy to see you for a change.~
DO ~SetGlobal("Z#Proposal","GLOBAL",1)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAJ ~I didn't know you were ever very happy to see me.~
= ~Death is always unbecoming, but if this is where you are, I suppose it might just be all right for me to be here.~
== Z#KIYOJ ~I beg to differ. It is a pity that you are dead - all that work on your case, wasted.~
== Z#KOVAJ ~I thought someone dealt with posthumous pardons and such before.~
== Z#KIYOJ ~Since we're dead, no harm being direct for a change.~
== Z#KOVAJ ~True, since I doubt any of us will be getting out of here. We might not be long together in here, as well.~
== Z#KIYOJ ~Indeed. And you look like you have something to say.~
== Z#KOVAJ ~Yes, I... suppose I might have.~
== Z#KOVAJ ~Kiyone, if somehow... we both get out of this alive...~
= ~Will you marry me?~
== Z#KIYOJ ~That... I... well...~
= ~It is a little late for such things. We are after all, both dead and in hell.~
== Z#KOVAJ ~Well, better late than never, I guess?~
== Z#KIYOJ ~All right.~
DO ~SetCutSceneLite(TRUE)
RealSetGlobalTimer("Z#ProposalT","AR2900",3)~ EXIT

CHAIN
IF ~AreaCheck("AR2900")
GlobalGT("KKRomance","GLOBAL",1)
GlobalGT("Z#TrialClear","GLOBAL",2)
RealGlobalTimerExpired("Z#ProposalT","AR2900")
Global("Z#Proposal","GLOBAL",1)~ THEN Z#KOVAJ Z#Proposal2
~You haven't answered me yet.~
DO ~SetGlobal("Z#Proposal","GLOBAL",2)~
== Z#KIYOJ ~I see.~
== Z#KOVAJ ~Not as if it will make a difference now, and it's too late anyway... so I understand if you don't want to answer...~
== Z#KIYOJ ~That's true, and it is right of you to say so.~
= ~Well, since it doesn't make a difference, I guess no harm me saying yes.~
== Z#KOVAJ ~I... I see.~
= ~Thank you, Kiyone.~
== Z#KIYOJ ~It costs me nothing, it's not as if it's going to happen. We are dead, you know.~
== Z#KOVAJ ~Yes, of course. It's just helpful, as a morale booster.~
== Z#KIYOJ ~Right, as if that would mean anything after we're dead.~
== Z#KOVAJ ~You never know - it just might.~
== Z#KIYOJ ~Well, that's refreshingly positive of you.~
== Z#KOVAJ ~Let's just say I've recently gained considerable motivation to be this way.~
== Z#KIYOJ ~You have an interesting way of flattering people.~
== Z#KOVAJ ~I was just giving the facts.~
EXIT


BEGIN Z#ELF1
BEGIN Z#ELF2
BEGIN Z#ELF3

// Resurrection in Temple

CHAIN
IF WEIGHT #-1 ~Global("Z#KiyoneUp","Z#2803",0)~ THEN Z#ELF1 z#shescomingto
~She's coming to.~
DO ~PlaySound("kkrom1") PlaySong(0)~
== Z#KIYOJ ~I... What am I doing here? I thought I saw My Lord Rillifane...~
DO ~SetGlobal("Z#KiyoneUp","Z#2803",1)~
== Z#ELF2 ~You have been resurrected and are in Suldanessellar. Most of the rest of your companions have yet to return to their bodies, though.~
== Z#ELF1 ~I am surprised the waters of Rillifane actually has worked with such great efficacy - they're usually just used for ceremonial purposes.~
== Z#ELF2 ~It was the will of Rillifane that she be given to drink from them, though she is not one of us.~
== Z#KIYOJ ~I see... so it was more than a dream where He gave me a choice...~
= ~I accepted, and so I have drank, it seems.~
= ~Where is he? Did he accept also? Is he up yet?~
== Z#ELF1 ~My lady, you are still weak and should lie back down.~
== Z#KIYOJ ~Where IS he? Did he drink of the waters as well?~
== Z#ELF2 ~Calm yourself, my lady - you will injure your weak body in this state.~
== Z#KIYOJ ~Get your hands off me! I must find him!~
DO ~SetCutSceneLite(TRUE)
SetSequence(SEQ_AWAKE)~ EXIT

// outside the Temple

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",0)
InMyArea("Kova")~ THEN Z#KIYOJ z#damnweakness
~Ugh... damn this weakness...~
DO ~SetGlobal("Z#KKProposal","Z#2800",1)~
== Z#KOVAJ ~Kiyone!~
DO ~SetCutSceneLite(TRUE) MoveToPoint([3895.1910])~ EXIT

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",1)
LOS("Kiyone",5)~ THEN Z#KOVAJ z#relieftoseeyouawake
~What a relief to see you're awake as well... are you all right?~
DO ~SetGlobal("Z#KKProposal","Z#2800",2)~
== Z#KIYOJ ~I'm fine, and I can get up without your assistance.~
== Z#KOVAJ ~Of course, I overstepped myself.~
= ~You look different somehow... more like an elf.~
== Z#KIYOJ ~Oh... I  was thinking just the same about you.~
== Z#KOVAJ ~Well, did you accept His offer?~
== Z#KIYOJ ~Who could resist an offer like that?~
= ~And you?~
== Z#KOVAJ ~Yes, as well.~
= ~I guess I'm relieved to hear that you said yes to Him.~
== Z#KIYOJ ~I'm relieved as well.~
= ~You know, about what you said, when we were both dead...~
== Z#KOVAJ ~Erm... yes?~
== Z#KIYOJ ~I... I wasn't sure if you remembered.~
== Z#KOVAJ ~You mean... when I asked you to marry me?~
== Z#KIYOJ ~Yes, I believe you did. I... said yes, didn't I?~
= ~Of course, I never expected we'd both get out of it.~
== Z#KOVAJ ~I didn't really either. ~
== Z#KIYOJ ~I see.~
== Z#KOVAJ ~Well, if you're having second thoughts, it's all right to go back on it.~
= ~I guess.~
DO ~SetCutSceneLite(TRUE) RealSetGlobalTimer("Z#proposalT", "Z#2800", 2)~ EXIT

// Proposal Accepted

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",2)
RealGlobalTimerExpired("Z#proposalT","Z#2800")~ THEN Z#KIYOJ z#ladyofmyword
~I'm a lady of my word, Kova. You know I cannot go back on it.~
DO ~SetGlobal("Z#KKProposal","Z#2800",3) PlaySound("kkrom2") PlaySong(0)~
== Z#KOVAJ ~Well, then... I release you from your promise.~ 
== Z#KIYOJ ~....~ 
= ~That was rather... unexpected.~
== Z#KOVAJ ~I don't think I expected that either.~
== Z#KOVAJ ~And so, I ask again - will you be my wife, Kiyone?~
== Z#KIYOJ ~Since you've so kindly released me from my word to you, I guess I'll have to say...~
= ~No.~
== Z#KOVAJ ~Kiyone...?~
== Z#KIYOJ ~At least, not yet, not until I know something.~
== Z#KOVAJ ~So, what is it you want to know?~
== Z#KIYOJ ~You might find out eventually. Or, maybe not.~
== Z#KOVAJ ~How long is this "eventually"?~
== Z#KIYOJ ~As the meaning of the word goes. Which, to my understanding, means a good long while.~
== Z#KOVAJ ~I am beginning to regret releasing you from your word.~
== Z#KIYOJ ~It's a little too late to consider that, I'm afraid.~
DO ~SetCutSceneLite(TRUE) RealSetGlobalTimer("Z#proposalT", "Z#2800", 4)~ EXIT

// Wait 3 seconds

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",3)
RealGlobalTimerExpired("Z#proposalT","Z#2800")~ THEN Z#KIYOJ z#ladyofmyword
~On second thoughts. I guess now is as good a time as any.~
DO ~SetGlobal("Z#KKProposal","Z#2800",4)~
== Z#KOVAJ ~Finally.~
== Z#KIYOJ ~Well here's what I want to know.~ 
= ~Will you be my husband, Kova?~
== Z#KOVAJ ~Kiyone...~
= ~Yes. Yes, I will.~
= ~And gladly.~
== Z#KIYOJ ~Very good. Then I will be your wife.~
== Z#KOVAJ ~That was some "eventually".~
== Z#KIYOJ ~It might not be long to others, but I'm sure it felt like "eventually" to you.~
== Z#KOVAJ ~You know, you are so dreadfully cruel at times.~
== Z#KIYOJ ~Really? It must be a trait from Kashiro side of the family. Besides, nothing worthwhile in life comes easy.~
== Z#KOVAJ ~True, and I guess you must want me to keep it hard for you.~
== Z#KIYOJ ~Very funny.~
DO ~SetCutSceneLite(TRUE) 
RealSetGlobalTimer("Z#proposalT", "Z#2800", 1)~ EXIT

CHAIN
IF ~AreaCheck("Z#2800")
Global("Z#KKProposal","Z#2800",4)
RealGlobalTimerExpired("Z#proposalT","Z#2800")~ THEN Z#ELF3 z#ladyofmyword
~There you are! What do you think you are doing here? You should be resting in the house of healing!~
DO ~SetGlobal("Z#KKProposal","Z#2800",5)~
== Z#KOVAJ ~Ah, how untimely...~
DO ~SetGlobal("Z#Proposal","GLOBAL",3)~
== Z#KIYOJ ~I don't think so. Let's go there together, my... husband.~
== Z#KOVAJ ~Kiyone, I...~
= ~I love you.~
== Z#KIYOJ ~Kova, I...~
== Z#KOVAJ ~At least, I think so.~
== Z#KIYOJ ~Well, thank you very much for spoiling that moment for me!~
DO ~MoveToPoint([3325.2495])~
== Z#KOVAJ ~Heh. An eye for an eye.~
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
~Well, <CHARNAME>, it has been a great pleasure travelling with you and standing by your side, both against the Shadow Thieves and against the evil of Irenicus.~
DO ~SetGlobal("z#suldgoodbye","AR2812",1)~
= ~Now that your soul is back with you and the city is restored, I have decided that perhaps it's time for us to go separate paths.~
== Z#KOVAJ ~I do agree with Kiyone. Granted, if nothing else, the journey with you after Irenicus fell at the Tree was unsettling to say the least.~
= ~I think there is some truth to the old proverb, that knowing more of a person might not mean you like the person more. It certainly expresses my thoughts on this to some degree.~
== Z#KIYOJ ~In any case, we wish you well and take our leave respectfully. May your travels ahead be fruitful and keep you in the light.~
DO ~LeaveParty() GivePartyAllEquipment() SetGlobal("KiyoJoined","LOCALS",0) EscapeArea()~
== Z#KOVAJ ~I will never forget what you have done for me, and for Kiyone as well, no matter what others may think of you in future. Perhaps it is best that I remember you this way.~
DO ~LeaveParty() GivePartyAllEquipment() SetGlobal("KovaJoined","LOCALS",0) EscapeArea()~ 
COPY_TRANS SUELLE2 18

CHAIN
IF ~~ THEN SUELLE2 z#mentionmarriage
~Yet amidst our soul searching, there is a joyous occasion that we are glad to celebrate.~ 
= ~The ceremony involves a union before Rillifane, of two people who have assisted in the recent rescue of our city, and who have been accepted as our very own brother and sister in this place.~
== Z#KOVAJ ~I hope our wedding doesn't come as too much of a surprise to you, <CHARNAME>.~
== Z#KIYOJ ~I doubt <PRO_HESHE> is so dense as to not have seen this coming.~
== Z#KOVAJ ~Well, in any case, we would be honored to have you in attendance during our wedding to oversee our union, if that is all right with you.~
== Z#KIYOJ ~There will not be that many guests, since we don't know many of those in the city yet, and the occasion would definitely be more memorable for someone as special as yourself to be with us.~
END
IF ~~ THEN REPLY ~That is wonderful news! I congratulate you both and look forward very much to attending the wedding.~ EXTERN Z#KOVAJ z#letsgowedding
IF ~~ THEN REPLY ~I can't say I'm in a festive mood, but no harm sitting in I guess.~ EXTERN Z#KOVAJ z#letsgowedding
IF ~~ THEN REPLY ~My congratulations to both of you. However I would rather rest from recent events than be involved in tiring festivities.~ EXTERN Z#KIYOJ z#letsnotgowedding
IF ~~ THEN REPLY ~Celebrations and ceremonies are just a waste of time and energy, so count me out.~ EXTERN Z#KIYOJ z#letsnotgowedding

CHAIN
IF ~~ THEN Z#KOVAJ z#letsgowedding
~Thank you, <CHARNAME>. As the one who brought us together, in a sense, your presence here means more than we ever could say.~
== Z#KIYOJ ~I hope you enjoy yourself and are at ease during the proceedings.~
DO ~ActionOverride(Player2,LeaveAreaLUA("Z#2812","",[488.312],8))~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ z#letsnotgowedding
~I am sorry that you feel that way, but I respect your decision.~
== Z#KOVAJ ~Things won't be quite the same without you in attendance.~
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
~Friends and fellow children of Rillifane, today we are gathered here to witness the union of two kindred souls before the altar of the Leaflord.~
DO ~PlaySound("kkwed") PlaySong(0)~
== Z#KVWED ~I'm nervous as hell. Aren't you glad we rehearsed?~
== Z#DEMIN ~The two who are assembled here have stood together through many trials and difficulties, but more than that, they have found in each other a special bond that they never wish broken.~
== Z#KYWED ~Especially the kiss. That takes... quite a lot of getting used to.~
== Z#DEMIN ~And so they will be brought together together, in the sight of our Lord Rillifane, to become as one.~
== Z#KVWED ~Well, we'll have a lifetime to get used to it, hopefully.~
== Z#DEMIN ~Do you, Kova Kashiro, take Kiyone Makibi as your lawfully wedded wife, to have and to hold, for better or worse, for richer or poorer, in sickness and health, to love and to cherish, for as long as you both shall live?~
== Z#KVWED ~I do.~
== Z#DEMIN ~Do you, Kiyone Makibi, take Kova Kashiro as your lawfully wedded husband, to have and to hold, for better or worse, for richer or poorer, in sickness and health, to love and to cherish, for as long as you both shall live?~
== Z#KYWED ~I do.~
== Z#DEMIN ~And now, what do you now give that you will faithfully perform these vows?~
== Z#KYWED ~Rings? But we didn't prepare any...~
== Z#DEMIN ~Regardless, here you have them. These are gifts from my Lord Rillifane.~
== Z#KVWED ~They're thrumming...~
== Z#DEMIN ~I now give you these rings that you place it on the finger of one another, thus you are giving yourself to one another, and that you may receive of one another.~
DO ~SetCutSceneLite(TRUE) 
SetGlobal("Z#Proposal","GLOBAL",5)
RealSetGlobalTimer("Z#weddingT", "Z#2812", 2)
ActionOverride("Z#KvWed",MoveToPointNoInterrupt([460.265])
ActionOverride("Z#KyWed",MoveToPointNoInterrupt([516.265])~ EXIT

CHAIN
IF ~Global("Z#Proposal","GLOBAL",5)
RealGlobalTimerExpired("Z#weddingT","Z#2812")~ THEN Z#DEMIN z#declarehusbwife
~I now declare you husband and wife. What our Lord has brought together, let neither man nor elf, demon nor angel, pain nor blood nor fire, pull asunder.~
== Z#KYWED ~I never thought this moment would happen in my life...~
== Z#KVWED ~Me neither. He has been generous.~
= ~You're crying...~
== Z#KYWED ~Am I? I didn't realise it... I think you're starting to as well.~
== Z#DEMIN ~And now, the groom may kiss his bri...~
== Z#KYWED ~Ahem.~
== Z#DEMIN ~I mean, and now, the couple may kiss.~
DO ~SetCutSceneLite(TRUE) 
SetGlobal("Z#Proposal","GLOBAL",6)
RealSetGlobalTimer("Z#weddingT", "Z#2812", 1)
ActionOverride("Z#KvWed",MoveToPointNoInterrupt([478.265])
ActionOverride("Z#KyWed",MoveToPointNoInterrupt([498.265])~ EXIT

CHAIN
IF ~Global("Z#Proposal","GLOBAL",6)
RealGlobalTimerExpired("Z#weddingT","Z#2812")~ THEN Z#KYWED z#notbad
~Not bad. That actually felt a lot better than when we practised.~
DO ~SetGlobal("Z#Proposal","GLOBAL",7)~
== Z#KVWED ~That bodes well for many other activities we probably have to get used to as well.~
DO ~SetGlobal("Z#Married","GLOBAL",1)~
== Z#KYWED ~Pig.~
== Z#KVWED ~Kiyone, I love you.~
== Z#KYWED ~I love you too, Kova.~
== Z#DEMIN ~And now, friends and fellow children of Rillifane, I present to you today, for the first time - Mr and Mrs Kova Kashiro!~
DO ~SetCutSceneLite(TRUE) 
FadeToColor([90.0],0)
RealSetGlobalTimer("Z#weddingT", "Z#2812", 3)
ActionOverride("Z#KvWed",Face(0))
ActionOverride("Z#KyWed",Face(0))~ EXIT

CHAIN
IF ~!Alignment(Player1,MASK_EVIL)
Global("Z#Proposal","GLOBAL",7)
AreaCheck("Z#2812")~ THEN PLAYER1 postwednight
~(The modest wedding ceremony draws to a close, and the newly weds and guests retire to their  respective quarters)~
= ~(On your way back, you hear the familiar voices of the two newly weds from a building you pass by...)~
END
IF ~~ THEN REPLY ~(Go closer to listen)~ 
DO ~Explore() 
SetGlobal("Z#Proposal","GLOBAL",8)
ActionOverride(Player1,	ApplySpellRES("Z#HIDE",Myself))
ActionOverride(Player1,LeaveAreaLUA("Z#2801","",[2000.2000],7))~ EXIT
IF ~ReputationLT(Player1,10)~ THEN REPLY ~(Leave them to their first night together)~ 
DO ~ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100a")~ EXIT
IF ~ReputationGT(Player1,9)~ THEN REPLY ~(Leave them to their first night together)~ 
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
~(As the modest wedding ceremony draws to a close...)~
== Z#KYWED ~Well, <CHARNAME>, it has been a great pleasure travelling with you and standing by your side, both against the Shadow Thieves and against the evil of Irenicus.~
DO ~SetGlobal("z#suldgoodbye","AR2812",1)~
== Z#KVWED ~It was the adventure of our lives, I think, for both me and Kiyone, an adventure where we found each other and which we never will ever forget.~
= ~I cannot thank you enough for what joy and gladness have brought to the two of us. It is most certainly beyond anything that I had thought possible for myself.~
== Z#KYWED ~Now that your soul is back with you and the city is restored, we have decided that this would be a time for us to go separate ways. especially since we will probably be settling down here and helping to rebuild this city.~
== Z#KVWED ~I do agree with Kiyone, that our people need us here. Granted also, even if nothing else, the journey with you after Irenicus fell at the Tree was unsettling to say the least.~
= ~I think there is some truth to the old proverb, that knowing more of a person might not mean you like the person more. It certainly expresses my thoughts on this to some degree.~
== Z#KYWED ~In any case, we wish you well and take our leave respectfully. May your travels ahead be fruitful and keep you in the light.~
DO ~ActionOverride("Kiyone", LeaveParty() )
ActionOverride("Kiyone", DestroyItem("KyRing1") )
ActionOverride("Kiyone", GivePartyAllEquipment() )
ActionOverride("Kiyone", SetGlobal("KiyoJoined","LOCALS",0)) 
ActionOverride("Kiyone", EscapeArea())~
== Z#KVWED ~We will never forget what you have done for us, no matter what others may think of you in future. Perhaps it is best that we remember you this way.~
DO ~ActionOverride("Kova",LeaveParty())
ActionOverride("Kova", DestroyItem("KvRing1") )
ActionOverride("Kova",GivePartyAllEquipment())
ActionOverride("Kova",SetGlobal("KovaJoined","LOCALS",0))
ActionOverride("Kova",EscapeArea())~ 
COPY_TRANS SUELLE2 18

CHAIN
IF ~AreaCheck("Z#2801")
Global("Z#night","Z#2801",0)~ THEN Z#KYWED wednight1
~Uh... ooh...~
DO ~SetGlobal("Z#night","Z#2801",1)~
= ~Mmm...~
= ~Ouch!~
= ~That hurts!~
== Z#KVWED ~Are you all right, Kiyone?~
== Z#KYWED ~I think I'm bleeding. What have you done?~
== Z#KVWED ~Woah? I didn't know you were...~
== Z#KYWED ~If I had my bow here with me I'd put an arrow through you for saying that!~
== Z#KVWED ~Sorry, I didn't mean to...~
== Z#KYWED ~Never mind. Why are you so clumsy? It's painful...~
== Z#KVWED ~Well, I've never been in here before, so I don't have any idea how to make my way around inside...~
== Z#KYWED ~Yeah right...~
END
IF ~~ THEN REPLY ~(Check out what they're up to)~ DO ~Explore()
CreateCreature("observe",[310.460],0)~ EXTERN Z#KVWED wednight2
IF ~ReputationLT(Player1,10)~ THEN REPLY ~(Leave them to their first night together)~ 
DO ~ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100a")~ EXIT
IF ~ReputationGT(Player1,9)~ THEN REPLY ~(Leave them to their first night together)~ 
DO ~SetGlobal("Z#night","Z#2801",5)
ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)
ClearAllActions()
StartCutSceneMode()
StartCutScene("cut100b")~ EXIT

CHAIN
IF ~~ THEN Z#KVWED wednight2
~I guess I'll go clean up this mess.~
== Z#KYWED ~You'd think Suldanesselar would have fewer breakable items around, or at least not so close to bed...~ 
DO ~SetCutSceneLite(TRUE)
MoveViewObject("observe",INSTANT)
RealSetGlobalTimer("Z#weddingT", "Z#2801", 3)
ReallyForceSpell(Myself, CLERIC_HEAL)
ActionOverride("Z#KvWed",MoveToPoint([635.355]))~ EXIT

CHAIN
IF ~AreaCheck("Z#2801")
Global("Z#night","Z#2801",2)
RealGlobalTimerExpired("Z#weddingT","Z#2801")~ THEN Z#KVWED wednight3
~Where were we again?~
DO ~SetGlobal("Z#night","Z#2801",3)~
== Z#KYWED ~Analysis of new evidence, I believe.~
== Z#KVWED ~Ah, I shall let the great detective figure her way onward then.~
== Z#KYWED ~Kova!~
== Z#KVWED ~I'll just gawk and admire her as she does her work.~
== Z#KYWED ~I might have known.~
DO ~FadeToColor([10.0],0)
ActionOverride("Kova",MakeUnselectable(0))
ActionOverride("Kiyone",MakeUnselectable(0))
SetGlobal("Z#Proposal","GLOBAL",10)~
COPY_TRANS SUELLE2 18