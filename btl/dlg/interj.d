// Hell

INTERJECT_COPY_TRANS2 PLAYER1 25 z#kkinhell
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I died, but something... some force, drew me back to you, to this place. I had thought there would be relief, but this is quite an unexpected complication.~
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
~It seems you are not alone in that experience. You have a rather magnetic personality, <CHARNAME>. Seems that my soul would rather follow you to hell than head off on its own, but maybe it was bound here anyway.~
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
~Even to the end you are unrepentant. You better hope you will find mercy wherever you are going, because you will not find it here.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Apparently you are incapable of learning from past experiences, that even now, you are outmatched, outwitted, outnumbered. Come - justice awaits.~
COPY_TRANS HELLJON 7

CHAIN
IF ~~ THEN Z#KIYOJ z#helljon910
~Nor do we, really. Come now - justice must be served.~
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
~If you had no doubts about facing us, we would have found you more easily and eager to fight us than this. Your bluff will be called for what it is.~
COPY_TRANS HELLJON 9



// Suldanessellar - 

// Lanthorn to Elhan

INTERJECT_COPY_TRANS2 C6ELHAN2 73 z#c6elhan2-73
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
~A great crime, and a greater punishment. Is the way of all justice, I wonder, even among His children?~
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone") InMyArea("Kova") InParty("Kova")~ THEN
~Not always. There are crimes too great for any mere sentence to be fitting.~
END

INTERJECT_COPY_TRANS2 C6ELHAN2 81 z#c6elhan2-81
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone")~ THEN
~So, this is the elven city of fable. It is a pity it could not be happier times that brings us to this ancient home of my father's people.~
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
~I never once thought I would look upon this place, where my mother stepped in the days of her youth. If only it was not stained with the blood of those who might once have known her.~
END

// Children in the City

EXTEND_BOTTOM SUELF5 2
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ suelf5-2
END

CHAIN
IF ~~ THEN Z#KIYOJ suelf5-2
~They looked shaken but all right when we saw them at the city gates. Hurry there - you might be able to find them before they are moved to safety.~
EXTERN SUELF5 4

INTERJECT_COPY_TRANS2 SUELF4 6 z#suelf4-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~They'll be all right, my child. I'm sure of it...~
END

CHAIN
IF ~AreaCheck("AR2800")
!InMyArea("suelf4") !InMyArea("suelf5")
Global("Z#SuldKids","LOCALS",0)~ THEN Z#KIYOJ Z#SuldKids
~Those poor children... we will make Irenicus return this debt of pain yet!~
DO ~SetGlobal("Z#SuldKids","LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~There might yet be a chance they'll find their parents again, Kiyone.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~They're dead, Kova. You heard them speak of those noises.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Children imagine noises in crises. Besides, even if they are dead perhaps they can be resurrected.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~You can save your pretty words for those kids when we meet them again.~
EXIT

// Dragon

INTERJECT_COPY_TRANS2 DRAGBLAC 0 dragblac-0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Oh no, not a dragon...~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") Global("DerminJob","GLOBAL",1)~ THEN
~Well I guess we have little choice if we want the Goblet. Perhaps if we offered it enough to make it worth its while...~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I say we slay it for the evil it has wrought in this place! Pity we have no advantage of surprise against it...~
END

// Priestess Demin

INTERJECT_COPY_TRANS2 SUDEMIN 16 z#sudemin16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~How sad. Perhaps if it was another that he had cleaved closer to... but no, he made his own choice, I'm sure. Powerful are the words of a one held close.~
END

INTERJECT_COPY_TRANS2 SUDEMIN 22 z#sudemin22
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A gross mistake, at least in retrospect. Mercy is a privilege to be given out only to those capable of learning from it, rather than to be given out for its own sake.~
END

INTERJECT_COPY_TRANS2 SUDEMIN 40 z#sudemin40
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I cannot stand idly by and watch my mother's people meet grief at your hands, <CHARNAME>. I apologise that I am so outwardly forgetful of what you have done for me, but I can do no other.~
DO ~LeaveParty() Enemy()~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I do not know why you turn to such evil at such a juncture as this, but my misjudgment of your person will have to be paid for in blood - either yours, or mine.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 SUDEMIN 45 z#sudemin45
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Let us make haste - there are many lives at stake here.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~And that of our own, as well. The longer we take, the more the odds will stack against us, I suspect.~
END

// Avatar of Rillifane

INTERJECT_COPY_TRANS2 SUAVATAR 5 z#suavatar5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~He seeks to become a God? No wonder his interest in your person, <CHARNAME>...~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I wonder if that is how many of the Gods before him came to be - by seeking to become one?~
END

// Tree of Life Dialogue

INTERJECT PLAYER1 33 Z#KKTreePlayer1
== PLAYER1 IF ~InParty("Kova") InParty("Kiyone")~ THEN 
~Kova and Kiyone - as unlikely a pair of companions as any of the rest, with an even more unlikely relationship between them, one that is somehow close and honest, yet full of tension and uncertainty.~
= ~What is certain, though, is that they need not fight this fight, especially now that their case is closed and they might even have found in each other someone who might understand themselves.~
END
IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN REPLY ~Kova, Kiyone, you are both good and able companions, but now that your case is settled, there's no need to risk losing one another in my fight.~ EXTERN Z#KIYOJ KyTree1
IF ~!GlobalGT("KKRomance","GLOBAL",1)~ THEN REPLY ~Kova, Kiyone, you are both good and able companions, but now that your case is settled, there's no need to risk losing your lives in my fight.~ EXTERN Z#KIYOJ KyTree2
IF ~~ THEN REPLY ~You are both aware of the strength and power Irenicus has at his disposal, and we could well be wiped out. There's no need to endanger yourselves for my sake.~ EXTERN Z#KIYOJ KyTree3
IF ~~ THEN REPLY ~Before we continue, I need to know that the two of you will stand by me through the difficult ordeal that surely awaits us.~ EXTERN Z#KIYOJ KyTree4

CHAIN
IF ~~ THEN Z#KIYOJ KyTree1
~Much as I value my friendship with Kova, we would probably not have become friends if not for you. To abandon you now in your time of need is beyond my capability to perform.~
== Z#KOVAJ ~If I have finally found a good friend in my life, it is because I have known her to be one in my time with you, <CHARNAME>. And so I too, will stand with you against what is to come.~
COPY_TRANS PLAYER1 33

CHAIN
IF ~~ THEN Z#KIYOJ KyTree2
~Your life has been risked for me many a time - should I now shirk from giving back unto you what you have freely given to me? I think not.~
== Z#KOVAJ ~Perhaps I am not the cowardly thief I once was, and I will follow you onward, <CHARNAME>. To do what is right and to return in part what I owe you for your part in saving me.~
COPY_TRANS PLAYER1 33

CHAIN
IF ~~ THEN Z#KIYOJ KyTree3
~Yet you have endangered yourself plenty of times for my sake, and it would be wrong for me to do less for you.~
== Z#KOVAJ ~That I even have a life now, to risk for your sake, is because of what you have risked for me. And though I am fearful, I willingly give what you have given me, back to you.~ 
COPY_TRANS PLAYER1 33

CHAIN
IF ~~ THEN Z#KIYOJ KyTree4
~As you have stood by us through even more trials and testings, I shall certainly stand by you and lend what strength I have to your cause.~
== Z#KOVAJ ~There may be others to whom I owe nothing, but to you I owe a great deal, and though I am fearful I will stand with you to face your coming trial. ~
COPY_TRANS PLAYER1 33

// Ellesime SUELLEAP - nothing from the apparition, as we assume only Player1 can see it

// SUJON 14 - where Jah, Minsc, Imoen comment. 
// considering BTL chars are not part of his imprisonment, they should stay silent.


// Watcher's Keep

// Odren

INTERJECT_COPY_TRANS2 GORODR1 17 gorodr1-17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~This is their duty <CHARNAME>, not ours. We are not obligated to help them, especially if we have better things to do.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN  
~Still, if it means that a great evil will be loosed upon the world, then we must do what we can. If not for these helpless knights, then for the sake of goodness upon the world.~
END

// Archivist

INTERJECT_COPY_TRANS2 GORARC1 5 gorarc1-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~So we are to bring slippers for the old man if we are to seek him? Oh well, a little more kindness in this world shouldn't be too much of a bad thing.~
END

// Statues in level 1

CHAIN
IF ~Global("Z#CommWKStatue","LOCALS",0)
See("gorsta08") 
!ActuallyInCombat()
Allegiance("gorsta08",NEUTRAL)
AreaCheck("AR3001")~ THEN Z#KOVAJ watcherkeep1statues
~That large statue gives me a sense of unease, and there is the tingle of hostility in the air. Some care would not be amiss in this place.~
DO ~SetGlobal("Z#CommWKStatue","LOCALS",1)~ EXIT

// Priest in level 1

INTERJECT_COPY_TRANS2 GORPRI1 0 gorpri1-0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") 
Global("gorarc1-5","GLOBAL",1) PartyHasItem("PLOT01P")~ THEN 
~This is not good... might we, by some good fortune, have those slippers ready, <CHARNAME>?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") 
Global("gorarc1-5","GLOBAL",1) !PartyHasItem("PLOT01P")~ THEN 
~This is not good... perhaps it would have been a good idea to have brought those slippers after all.~
END

// Chromatic Demon GorChr

INTERJECT_COPY_TRANS2 GORCHR 0 gorchr0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Suicidal fanatics? I wonder what the demon means by that...~
END

INTERJECT_COPY_TRANS2 GORCHR 3 gorchr3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I do not trust this thing to keep its end of the bargain. Perhaps there is another way, and if so we should do well to find it first.~
END

// Yakman

INTERJECT_COPY_TRANS2 GORMAD1 8 gormad1-8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~How sad that someone should be reduced to such a pitiful state. I wonder how he was like before he became mad. Perhaps there will be something we can do to restore him.~
END

INTERJECT_COPY_TRANS2 GORMAD1 16 gormad1-16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Imagining how his experiences must have been makes my short time in the guild when other Shadow Thieves wanted to knife me seem like a walk in the park in comparison.~
END

INTERJECT_COPY_TRANS2 GORMAD1 16 gormad1-16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~That is an unexpectedly useful. This conversation has proven more advantageous than I would have thought it to be initially.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Yes, he does seem rather lucid for a mad person. He might not be far off from being restored, if only we could find a way.~
END

INTERJECT_COPY_TRANS2 GORMAD1 34 gormad1-34
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Yes, he certainly has returned to his senses after all. It is good to see that spark return to his eye.~
== Z#KIYOJ IF ~!GlobalGT("Chapter","GLOBAL",7)
OR(2) !InParty("Kova") !InMyArea("Kova")
InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I see he has regained his senses and is himself once more. This is a fine development indeed, and I am glad that he is well again.~
END

EXTEND_BOTTOM GORMAD1 41
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ gormad1-41
IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN EXTERN Z#KIYOJ gormad1-41
END

CHAIN 
IF ~~ THEN Z#KIYOJ gormad1-41
~Stay your hand, Tamorlin. <CHARNAME> here has an odd sense of humour at times, but we would not heal you only to kill you. You are free to return to your loved ones as you wish.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~ EXTERN GORMAD1 39

CHAIN 
IF ~~ THEN Z#KOVAJ gormad1-41
~Come now, <CHARNAME>, that was a rather bad timing for that sort of jest. Anyway, Tamorlin, it just a misunderstanding, I'm sure we didn't heal you only to kill you. You are free to go where you like, and we wish you well.~
DO ~IncrementGlobal("Break", "LOCALS", 1)
ActionOverride("Kiyone", IncrementGlobal("Break", "LOCALS", 1) )~ EXTERN GORMAD1 39

INTERJECT_COPY_TRANS2 GORTAN1 6 gortan1-6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~We may as well agree to help, it will save us trouble now, and even the task itself only involves destroying that which is evil.~
END

INTERJECT_COPY_TRANS2 GORBAT1 7 gorbat1-7
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~We may as well agree to help, it will save us trouble now, and even the task itself only involves destroying that which is evil.~
END

INTERJECT_COPY_TRANS2 GORCAMB 5 gorcamb5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~It seems he genuinely has no intention to do battle, <CHARNAME>. Some civility for now shouldn't hurt - we can always change our tone later if necessary.~
END

INTERJECT_COPY_TRANS2 GORCAMB 21 gorcamb21
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Caution should be exercised here. If we don't have to, I think there is no need to risk ourselves in this meaningless gambling competition. Let us just win the gem and move on out of here.~
END

INTERJECT_COPY_TRANS2 GORCAMB 53 gorcamb53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~How can we be sure that if we hand the way over that he will return it? How will he even be able to return to us? Perhaps it would be better not to risk handing it over.~
== Z#KIYOJ IF ~
InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN 
~I do get the impression Aesgareth is sincere, but whether he can return it to us in here when he is free is a question probably none of us know. Whether we undertake that risk will be up to <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 GORAPR 16 gorapr16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)~ THEN 
~Such bitterness and hate, and now he is dead. Perhaps he might have been less bitter if we could have salved his pain, but it is too late for that.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)~ THEN 
~He is probably happier where he is now, though. Finding peace again after all the years of fleeing and surviving - it must have been a welcome reprieve.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance","GLOBAL",1)~ THEN 
~Would that it be as you say, Kiyone.~
END

INTERJECT_COPY_TRANS2 GORSAL 10 gorsal10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Ah, that's quite a relief that it did not turn on us! Still, that dragon did seem oddly unaggressive and pliable to flattery.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
~Indeed, perhaps with better words we may be able to obtain information from him about this dungeon and level, especially about Carston.~
END

INTERJECT_COPY_TRANS2 GORCAR 15 gorcar15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~He seems pitiful, but he was also responsible for so much death and suffering. Do with him as you see fit, <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 GORAPP1 3 gorapp1-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I doubt any mortal machinations brought forth this apparition, <CHARNAME>. Let us at least listen, and from there make a more informed decision.~
END

INTERJECT_COPY_TRANS2 GORAPP1 17 gorapp1-17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~If all that is true, then we cannot stand idly by and watch. It seems that Odren will have to die for his deception. No more than he deserves perhaps...~
= ~Reading this scroll would be the simplest and best route, I think. But that is of course, only if we assume what we have been told to be true.~
END

// Bodhi Final

INTERJECT_COPY_TRANS2 C6BODHI 0 c6bodhi-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN  
~Still lying through your teeth with false bravado? You have fled so many times and even shattered passages to prevent us from reaching you.~
== C6BODHI IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN  
~How poorly you know me, but you shall know me better when I quench my thirst in your blood.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN  
~Good then, that you will fight hard. It is only when up against a beast like you that we can see what mettle we are made of.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Be wary now - a beast is the more dangerous when cornered.~
END

// Bodhi Ambient

INTERJECT_COPY_TRANS2 BODHIAMB 6 bodhiamb6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I think your concern about our pursuit is more to stave off your own end.~
== BODHIAMB IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~You poor fool, do you think your friends here are forever going to keep you from the wrath of those who hunt you? But that doesn't matter, since you will find that I am a better hunter than any of them.~
END

// Seeking Aran for Vampire Help 78

INTERJECT_COPY_TRANS2 ARAN 78 aran78
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I never thought I'd speak up for a Shadowmaster, <CHARNAME>, but I feel it was in part my own fault for failing to forestall Saemon's treachery, despite suspecting it.~
END

INTERJECT_COPY_TRANS2 ARAN 85 aran85
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~How unexpected. Perhaps we could charge him a good fifteen thousand gold pieces for helping him with this little problem, <CHARNAME>. It would only be fair.~
END

// 89 - yes 101, 102, 104 - no

INTERJECT_COPY_TRANS2 ARAN 89 aran89
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Though I am loathe to trust them, I see little reason why they wouldn't stick to their side of the bargain, and should turn out well.~
END

INTERJECT_COPY_TRANS2 ARAN 101 aran101
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~We don't need help from these thieves anyway, who couldn't even help themselves earlier. Let us begone and not waste more time here.~
END

INTERJECT_COPY_TRANS2 ARAN 102 aran102
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~We don't need help from these thieves anyway, who couldn't even help themselves earlier. Let us begone and not waste more time here.~
END

INTERJECT_COPY_TRANS2 ARAN 104 aran104
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~We don't need help from these thieves anyway, who couldn't even help themselves earlier. Let us begone and not waste more time here.~
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
~I might have guessed it would turn out so, but not having the swordarms of the paladins on our side make things that much more difficult.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I didn't think you thought well enough of the Order to want them to join us on this.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Circumstances change, and whatever might tip the scales in our favour would be well.~
EXIT

INTERJECT_COPY_TRANS2 HPRELATE 46 hprelate-46
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~This gets interesting indeed, and it is good the odds are slowly turning in our favour.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Who would have thought I'd be serving alongside the knights? It is an interesting twist, though not altogether disagreeable.~
END

// Drizzt

INTERJECT_COPY_TRANS2 C6DRIZZ1 5 c6drizz1-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I will not lift my hand against one so righteous as this, and if this is the evil you show him, you deserve whatever comes your way. On guard, <CHARNAME>!~
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The deeds of this dark elf has visited my ears before, and it is plain who is in the right and wrong. Though I regret it has come to this, I will not tolerate your bloodthirstiness further.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 9 c6drizz1-9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I will not lift my hand against one so righteous as this, and if this is the evil you show him, you deserve whatever comes your way. On guard, <CHARNAME>!~
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The deeds of this dark elf has visited my ears before, and it is plain who is in the right and wrong. Though I regret it has come to this, I will not tolerate your bloodthirstiness further.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 18 c6drizz1-18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I will not lift my hand against one so righteous as this, and if this is the evil you show him, you deserve whatever comes your way. On guard, <CHARNAME>!~
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The deeds of this dark elf has visited my ears before, and it is plain who is in the right and wrong. Though I regret it has come to this, I will not tolerate your bloodthirstiness further.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 37 c6drizz1-37
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~This is a fair <DAYNIGHT>, to meet one so strong in truth and deeds, and to be able to fight alongside his blades. I look forward eagerly to that coming battle.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Unlike you, I can't say I ever really look forward to a battle, but if we have to face this vampire, knowing that we have Drizzt Do'Urden backing us is a considerable relief.~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 41 c6drizz1-41
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I will not lift my hand against one so righteous as this, and if this is the evil you show him, you deserve whatever comes your way. On guard, <CHARNAME>!~
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The deeds of this dark elf has visited my ears before, and it is plain who is in the right and wrong. Though I regret it has come to this, I will not tolerate your bloodthirstiness further.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 48 c6drizz1-48
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I will not lift my hand against one so righteous as this, and if this is the evil you show him, you deserve whatever comes your way. On guard, <CHARNAME>!~
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The deeds of this dark elf has visited my ears before, and it is plain who is in the right and wrong. Though I regret it has come to this, I will not tolerate your bloodthirstiness further.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 55 c6drizz1-55
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I will not lift my hand against one so righteous as this, and if this is the evil you show him, you deserve whatever comes your way. On guard, <CHARNAME>!~
DO ~LeaveParty() Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The deeds of this dark elf has visited my ears before, and it is plain who is in the right and wrong. Though I regret it has come to this, I will not tolerate your bloodthirstiness further.~
DO ~LeaveParty() Enemy()~
END

INTERJECT_COPY_TRANS2 C6DRIZZ1 53 c6drizz1-53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think facing a brood of vampires led by one recently enriched by the soul of a God is not too small an errand to seek help with, <CHARNAME>, and there are probably few allies as effective as this drow warrior and his company.~
END

// Elhan

INTERJECT_COPY_TRANS2 C6ELHAN2 28 c6elhan2-28
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~The legendary elven city of Suldanessellar, gone? If that is so, then it'd be interesting to see how we'd fare against Irenicus himself.~
END

INTERJECT_COPY_TRANS2 C6ELHAN2 45 c6elhan2-45
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~That is so, but is this is the way of the people of Rillifane, to leave us to face the dire evil that they will not, have others risk their lives for your sakes?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN 
~I thought you can barely remember the names of any Gods...~
== C6ELHAN2 IF ~InParty("Kova") InMyArea("Kova")~ THEN
~How do you know the name of our God, the giver of truth and life?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I do not know much, except that leaving us to this task unaided is unseemly of those who claim to be His people.~
END

// General Solivadaas

INTERJECT_COPY_TRANS2 C6GENER 1 c6gener1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~His tone does not bode well for us, <CHARNAME>.~
END



// MindFlayer Area

INTERJECT_COPY_TRANS2 UDSIMYAZ 5 udsimyaz5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Though our circumstances are dark, it is good to have some potential allies, if they manage to remain alive.~
END

INTERJECT_COPY_TRANS2 UDSIMYAZ 16 udsimyaz16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Any development that gives us the hope of being free is a good one. Attempts at treachery can be dealt with after we are out of this place.~
END
 
CHAIN 
IF ~	OR(9)
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
Global("Z#illithidslavedie", "LOCALS", 0)~ THEN Z#KOVAJ Z#illithidslavedie
~What has this person done to you, that you consign him to death in so foul a place? This is act that you have taken is an act of evil that I will not forget.~
DO ~SetGlobal("Z#illithidslavedie", "LOCALS", 1)
IncrementGlobal("Break", "LOCALS", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This cold-blooded murder will not be forgotten, <CHARNAME>. Justice will catch up with you some day.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
EXIT

CHAIN
IF ~Detect("udgolem")
!Dead("udmaster")
AreaCheck("AR2400")
Global("Z#killmasterbrain", "LOCALS", 0)~ THEN Z#KIYOJ Z#killmasterbrain
~We must kill the illithid brain before it overwhelms us with its guardians!~
DO ~SetGlobal("Z#killmasterbrain", "LOCALS", 1)~ EXIT

INTERJECT_COPY_TRANS2 UDSIMYAZ 50 udsimyaz50
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It seems they are ready to do battle to regain the sword. Returning it might be wise - it hardly does us any good, unusable as it is.~
END


// Drow Gates

EXTEND_BOTTOM UDDOOR02 5
IF ~InParty("Kiyone") See("Kiyone")~ THEN EXTERN Z#KIYOJ uddoor02-5
IF ~InParty("Kova") Detect("Kova")
OR(2) !InParty("Kiyone") !See("Kiyone")~ THEN EXTERN Z#KOVAJ uddoor02-5
END

CHAIN 
IF ~~ THEN Z#KIYOJ uddoor02-5
~You dare to stop us? Very well, you can answer for it when the elves' mustering of their strength come upon our forces.~
EXTERN UDDOOR02 7

CHAIN 
IF ~~ THEN Z#KOVAJ uddoor02-5
~We will not be swayed from our resolve to do battle against the accursed elves, and are willing to see to it that you are well compensated for letting us do so.~
EXTERN UDDOOR02 6


// Return to Adalon

INTERJECT_COPY_TRANS2 UDSILVER 43 udsilver43
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yes, of course it would have been far bloodier than all that we've gone through to obtain your eggs. Your kindness is reminscent of that in some recent place we visited.~
== UDSILVER IF ~InParty("Kova") InMyArea("Kova")~ THEN
~You dare presume to judge me, in my own lair?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~My apologies, my lady. This member of our company is weary of the bloodthirsty intrigue among the drow, and is too tired to think straight.~
== UDSILVER  IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I shall be generous and let this insult pass, for the service you have done for me. In the meantime, test my patience no further.~
END



// Visaj / Jarlaxle / Deirex

INTERJECT_COPY_TRANS2 BREG01 17 breg01-17
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~This thing is only worth anything if we attempt to take on an ancient lich, even the founder of this city, who predates even a dragon! Even if this merchant can be trusted, such risks are needless.~
== BREG01 IF ~InParty("Kova") InMyArea("Kova")~ THEN
~That is the exact purpose of this rope, to remove the risks involved. Think of what he has hoarded over the centuries - the price I ask is mere pittance compared to what is to be gained.~
END

INTERJECT_COPY_TRANS2 JARLAXLE 16 jarlaxle16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It always comes down to this, doesn't it? I knew we shouldn't have trusted the merchant enough to take the rope.~
END

// Bargaining with the Demon - unwritten, no player of MASK_EVIL

// Matron Mother Ardulace UDARDUL

INTERJECT_COPY_TRANS2 UDARDUL 16 udardul16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")
!PartyHasItem("misca8") // Eyestalk of an Elder Orb
!PartyHasItem("misca7") // Kuo-Toan's Blood
!PartyHasItem("miscbv") // Elder Brain Blood
~ THEN
~This is no mere errand we have been sent upon, and I am starting to wonder if killing one of these creatures would be easier than trying to find the eggs as soon as possible and risking drow wrath.~
= ~Still, if we must, I'd think taking on the Kuo-Toans should be the easiest. The idea of meeting more mind-flayers fills me with dread.~
END

INTERJECT_COPY_TRANS2 UDARDUL 53 udardul53
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Dead("Phaere")
!Global("MatronHasFakeEggs","GLOBAL",1)~ THEN
~Now, this is the time for us to strike and reclaim the eggs!~
DO ~ActionOverride("Kova", JumpToPoint([1025.285]) // Matron Mother at 992.283
ActionOverride("Kova", Hide() )
Attack("udardul")~
END

// Phaere UDPHAE01

INTERJECT_COPY_TRANS2 UDPHAE01 24 udphae01-24
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A respite would be welcome, but in here it is more likely to risk us being exposed. It might be best that we pass time in the Underdark itself rather than spend more time in this foul city.~
END

INTERJECT_COPY_TRANS2 UDPHAE01 53 udphae01-53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The intrigue between these two is promising and could create opportunities for us to do what we have to. I think it would not be amiss to watch them closely.~
END

INTERJECT_COPY_TRANS2 UDPHAE01 61 udphae01-61
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~They must have offended us in some great way, and it would be well to know what they did that we may visit wrath upon them to the fullest measure that they deserve.~
== UDPHAE01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~You have an interesting way of questioning the motives of the Matron Mothers.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I only look forward to dealing with the deep gnomes as they deserve, in accordance with the wishes of the Matron Mothers.~
END

INTERJECT_COPY_TRANS2 UDPHAE01 88 udphae01-88
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~It might be useful to pit Solaufein against Phaere, we may yet make the best of things and see what advantage can be had out of all this conniving. If bloodshed can be avoided, so much the better as well.~
END

CHAIN
IF ~Global("PhaereInnuendo","GLOBAL",3)
AreaCheck("AR2200")
Gender(Player1,MALE)
Detect(Player1)
Global("Z#commentphaere", "LOCALS", 0)~ THEN Z#KOVAJ Z#commentphaere1
~This is a surprise, <CHARNAME>. I had thought the desire she would provoke and the absence of choice would have surely meant you spending a good amount of time in there.~
DO ~SetGlobal("Z#commentphaere", "LOCALS", 1)~ 
END
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Z#commentphaere
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN EXIT

CHAIN
IF ~Global("PhaereInnuendo","GLOBAL",2)
AreaCheck("AR2204")
Gender(Player1,MALE)
Detect(Player1)
Global("Z#commentphaere", "LOCALS", 0)~ THEN Z#KOVAJ Z#commentphaere2
~I suppose your action was expected, though I had thought you above such primal lusts. Either that or you had no choice.~
DO ~SetGlobal("Z#commentphaere", "LOCALS", 1)~ 
END
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Z#commentphaere
IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN EXIT

CHAIN
IF ~~ THEN Z#KIYOJ Z#commentphaere
~Even if there was no choice, it must be a rare chance to be able to experience a drow so up close and personal, and a difficult one to pass up.~ 
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKRomance", "GLOBAL", 0)~ THEN
~The thought of being close to a male does not appeal to me, but maybe if I were male instead I would do so. Even if it provided no insights in the enemy, I understand it would be pleasurable.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKRomance", "GLOBAL", 0)~ THEN
~I for one, would not.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("KKRomance", "GLOBAL", 0)~ THEN
~Then either I have overestimated the power of male lust, or you lack in libido.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~I wonder if all males would done as you have, <CHARNAME>, given the chance.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~True, I suppose. It must be difficult to resist such dark beauty.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~If it is a close examination of the female drow that you want, as <CHARNAME>'s experience has shown, I'm sure our guises would not fail under scrutiny.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~True, but these guises do not lend any of us the practiced erotic skill of a drow.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~And I think some of us don't even know the basics.~
EXIT

EXTEND_BOTTOM UDPHAE01 159 
IF ~Global("PhaereHasFakeEggs","GLOBAL",0) InMyArea("Kiyone") InParty("Kiyone")~ THEN EXTERN Z#KIYOJ udphae01-159
END

CHAIN
IF ~~ THEN Z#KIYOJ udphae01-159
~Not so fast, drow. Give us the eggs, now, and see to it we leave this accursed city safely.~
DO ~ActionOverride("Kova", JumpToPoint([1005.315])
ActionOverride("Kova", Hide() )~
EXTERN UDPHAE01 162


// Solaufein UDSOLA01

INTERJECT_COPY_TRANS2 UDSOLA01 10 udsola01-10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It is better to be subservient and bide our time for a good opportunity, than pay for any trespass with our own blood. Let us tread carefully.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 107 udsola01-107
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Now that he is out of the way, we might be able to get proof of the deed without needless bloodshed.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 120 udsola01-120
== Z#KIYOJ IF ~GlobalGT("KKRomance", "GLOBAL", 1) InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is at once horrifying and sad, yet that which most disturbs me is that I almost envy her. But no, that couldn't have made too much sense...~
== Z#KOVAJ IF ~GlobalGT("KKRomance", "GLOBAL", 1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
~It makes all the sense in the world, at least to me.~
== Z#KIYOJ IF ~GlobalGT("KKRomance", "GLOBAL", 1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
~I was afraid you would say that, but with some control the situation will eventually resolve itself. Enough of distractions, let us return to the task at hand.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 125 udsola01-125
== Z#KIYOJ IF ~GlobalGT("KKRomance", "GLOBAL", 1) InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is at once horrifying and sad, yet that which most disturbs me is that I almost envy her. But no, that couldn't have made too much sense...~
== Z#KOVAJ IF ~GlobalGT("KKRomance", "GLOBAL", 1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
~It makes all the sense in the world, at least to me.~
== Z#KIYOJ IF ~GlobalGT("KKRomance", "GLOBAL", 1) InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ THEN
~I was afraid you would say that, but with some control the situation will eventually resolve itself. Enough of distractions, let us return to the task at hand.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 132 udsola01-132
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It would normally be foolishness to leave one alive who has found out about us, but Solaufein seems different from other drow. Let us hope we have made the right choice.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 140 udsola01-140
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It would normally be foolishness to leave one alive who has found out about us, but Solaufein seems different from other drow. Let us hope we have made the right choice.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 145 udsola01-145
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It would normally be foolishness to leave one alive who has found out about us, but Solaufein seems different from other drow. Let us hope we have made the right choice.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 152 udsola01-152
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A most excellent and timely development. Now we can hold on to the real eggs without fear of being exposed.~
END

INTERJECT_COPY_TRANS2 UDSOLA01 161 udsola01-161
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A most excellent and timely development. Now we can hold on to the real eggs without fear of being exposed.~
END

// Svirnefblin Patrol Leader

INTERJECT_COPY_TRANS2 UDSVIR08 1 udsvir08-1
== Z#KIYOJ IF ~Global("SolaufeinJob","GLOBAL",7) InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Why are we doing this when Solaufein has departed? This violence is needless!~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
== Z#KOVAJ IF ~Global("SolaufeinJob","GLOBAL",7) InParty("Kova") InMyArea("Kova")~ THEN
~It seems you are as bloodthirsty as many of those I have known in my time among cut-throats, and I will remember how blood has been shed this day, in vain.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
END

INTERJECT_COPY_TRANS2 UDSVIR08 13 udsvir08-13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A satisfactory conclusion, though it could have been handled better.~
END

INTERJECT_COPY_TRANS2 UDSVIR08 9 udsvir08-9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A much preferable outcome to spilling blood. I'm glad things turned out this way.~
END


// Aboleth

EXTEND_BOTTOM DAABOL 9 
IF ~InParty("Kiyone") InMyArea("Kiyone")
InParty("Kova") InMyArea("Kova")~ EXTERN Z#KIYOJ daabol-9
END

CHAIN
IF ~~ THEN Z#KIYOJ daabol-9
~Those are not all our choices. I suggest you rethink your approach, fish.~
== DAABOL ~Fish? Perhaps I have not made my thoughts clear.~
= ~I have outlined the threat I intend.  I do not bluff.  Fear me.~
== Z#KOVAJ 
~Perhaps we should, but it is difficult to kill a drow priestess from your tank. Keeping your murderous intent secret is far easier, at least up until the point it was shared with us.~
EXTERN DAABOL 25


// Ghaunadaur drow

INTERJECT_COPY_TRANS2 DADROW17 3 dadrow17-3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Yet another worthless errand to risk our necks for, and with little choice except to obey or be hunted down.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Now I know why some have a taste for killing. It is tempting to accept that this creature should be done away with simply for being who she is.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Are not all drow our enemies? Is there really a need to question if a beholder or mindflayer should be slain?~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Perhaps. I question your purpose in testing me so.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~Astute, but I think your question will have to remain unanswered.~
END

// Drow Chase

CHAIN
IF ~GlobalGT("AmbientStartRun","AR2200",3)
InMyArea("DADROW6")
AreaCheck("AR2200")
InParty("Kiyone") InMyArea("Kiyone")
Global("Z#drowchase", "LOCALS", 0)~ THEN Z#KOVAJ Z#drowchase
~Are you all right? We have to keep our cool for this.~
DO ~SetGlobal("Z#drowchase", "LOCALS", 1)~
== Z#KIYOJ ~I'm fine, there's nothing that can be done for her in here anyway.~
= ~Let us steel ourselves - there'll probably be worse things we will see, and which we will have to let slide, repulsive as they might be.~
EXIT

// Adalon

INTERJECT_COPY_TRANS2 UDSILVER 9 udsilver-9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I should have guessed that you were more than just an ordinary being. Your magnificence only amplifies your potency, and we should not dare to cross you or your charge.~
END

INTERJECT_COPY_TRANS2 UDSILVER 14 udsilver-14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I strongly advocate discretion, although I get the impression we have little choice except to take on what this dragon will not face.~
END

INTERJECT_COPY_TRANS2 UDSILVER 25 udsilver-25
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Well, at least that might improves our chances, somewhat.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I've always wondered what it would be like to examine a drow up close and personal. To enter the being and form of the enemy should prove a novel experience.~
END

EXTEND_BOTTOM UDSILVER 36 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ udsilver-36
END

CHAIN
IF ~~ THEN Z#KIYOJ udsilver-36
~It seems we have little choice, though it is a privilege to serve. We promise our best, though I doubt you'd accept anything less than success.~
EXTERN UDSILVER 37

INTERJECT_COPY_TRANS2 UDSILVER 49 udsilver-49
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think coming back was a really bad idea on your part, <CHARNAME>.~
END


// Sentry open Balor Door

INTERJECT_COPY_TRANS2 UDSVIR06 2 udsvir06-2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think now would be a good time to get ourselves ready for whatever lies beyond.~
END


// Goldander 

EXTEND_BOTTOM UDSVIR03 7 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ udsvir03-7
END

CHAIN
IF ~~ THEN Z#KIYOJ udsvir03-7
~We are willing to listen, though our willingness to do more would depend on the nature of the task at hand.~
EXTERN UDSVIR03 8


// Therndle Daglefodd

INTERJECT_COPY_TRANS2 UDSVIR05 7 udsvir05-7
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We can take it as encouragement to know that even here in Underdark, we can do some good and bring some comfort to those around us.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova") InMyArea("Kova")~ THEN
~And equally refreshing that they are grateful. Perhaps so little kindness is known here that some of those here know better than to receive it with treachery.~
END

// On Trapped Facets

CHAIN
IF ~Global("Z#stopfree", "LOCALS", 0)
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
~You know, we really ought to reconsider toying around with more of these facets. There is a high chance that whatever was trapped in there was put there for a reason.~
DO ~SetGlobal("Z#stopfree", "LOCALS", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~If drow did this, then one or two of them might not deserve to be trapped inside, and it would be best if we could free them from such a fate.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I suppose that would be true, assuming the ordeal hasn't affected their capacity for thinking straight.~
EXIT


// Vithal

INTERJECT_COPY_TRANS2 UDVITH 19 udvith-19
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Exploring other dimensions, gaining treasure therein... it sounds interesting, but dangerous.~
= ~If this were a place other than the Underdark, perhaps it would be reasonable to aid him, but for now I think it best that we focus on leaving this place rather than be distracted with his concerns.~
END 

INTERJECT_COPY_TRANS2 UDVITH 31 udvith-31
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I am beginning to have doubts about this adventure, but I will stand by your decision, <CHARNAME>.~
END 

INTERJECT_COPY_TRANS2 UDVITH 47 udvith-47
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I think our portion is more than sufficient already, <CHARNAME>. Never would I have thought to find such fairness in this forsaken part of the world, so let us depart from this man in peace.~
END

CHAIN
IF ~GlobalGT("dwVithal","GLOBAL",17)
AreaCheck("AR2100")
Dead("udvith")
GLOBAL("z#vithdead", "LOCALS", 0)~ THEN Z#KIYOJ vithdead
~This mage treated us fairly, yet we came to blows and he now lies dead because of your greed. I wonder why you agreed to help me in the first place, even.~ 
= ~If not for the time we have spent travelling together, this alone would be enough to cause me to leave immediately.~
DO ~SetGlobal("z#vithdead", "LOCALS", 1)
IncrementGlobal("Break", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~This mage was murdered in cold blood for the sake of greed. I will stay in your company for now, but I will keep company no further with you if such things continue.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
EXIT


// Dwarves on Neckbiter and Mage

INTERJECT_COPY_TRANS2 UDDUER01 17 udduer01-17
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") Global("udduer01-6","GLOBAL",0)~
~It is good to know we have not lost their trail, and will catch up with them yet.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone") Global("udduer01-6","GLOBAL",0)~ THEN
~I think it only gives us more reason to get out of here as soon as possible. We can always try to take them on when we're not in such hostile territory.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone") Global("udduer01-6","GLOBAL",0)~ THEN
~Either way, it suits us well to know where they've been.~
END

EXTEND_BOTTOM UDDUER01 6 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ udduer01-6
END

CHAIN
IF ~~ THEN Z#KIYOJ udduer01-6
~It is good to know we have not lost their trail, and will catch up with them yet.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think it only gives us more reason to get out of here as soon as possible. We can always try to take them on when we're not in such hostile territory.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Either way, it suits us well to know where they've been.~
EXTERN UDDUER01 8

// Underdark First Visit

CHAIN
IF ~AreaCheck("AR2100")
Global("EnteredArea","AR2100",1)
Global("Z#SayUnderdark", "LOCALS", 0)~ THEN Z#KOVAJ sayunderdark
~The expanse of the Underdark, wide and wild. Such endearing darkness teeming with hospitable inhabitants.~
DO ~SetGlobal("Z#SayUnderdark", "LOCALS", 1)~
== MAZZYJ IF ~InParty("Mazzy")~ THEN
~Encouragement is what we will need to get through this place. Not sarcasm.~
== JAHEIRAJ IF ~InParty("Jaheira") !InParty("Mazzy")~ THEN
~If you have nothing good to say, keep your thoughts to yourself.~
== NALIAJ IF ~InParty("Nalia") !InParty("Mazzy") !InParty("Jaheira")~ THEN
~Can't you ever say something that is positive?~
== Z#KOVAJ IF ~OR(3) InParty("Nalia") InParty("Mazzy") InParty("Jaheira")~ THEN
~My apologies, my lady. I was just trying to keep the situation in perspective.~
== Z#KOVAJ
~You know, I'm starting to suspect that following you was a really bad idea, <CHARNAME>, but now wouldn't be a good time to pull out.~
= ~So all that is left to do is simply for us to get out of here, alive.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I'm sure we will. We have a trial to attend to, namely, yours.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Remind me to try giving the drow and various other beasts around here that reason so that they'll leave us alone.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We've other means of persuasion at our disposal. In any case, I've promised Bylanna that I will bear responsibility for your case, and that includes your person.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You are such a comfort to have around, you know that?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Of course.~ 
= ~Now let's get moving, I'm starting to hate this place.~
EXIT



// Sahuagin City

// Priestess Senityili on entrance

INTERJECT_COPY_TRANS2 SAHPR1 10 sahpr1-10
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I've read that this place is infested with the ravenous shark-people... if we are to leave here alive, it might be best to co-operate for as long as they remain civil, though that might not be for long.~
END

INTERJECT_COPY_TRANS2 SAHPR1 12 sahpr1-12
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It seems belief in gods are useful after all for something, and I am grateful to be found in your company, <CHARNAME>, as opposed to being served up as some delicacy for fish.~
END

INTERJECT_COPY_TRANS2 SAHPR1 20 sahpr1-20
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I think some diplomacy would not be uncalled for, <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 SAHPR3 1 sahpr3-1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I am starting to take an exceptional distaste to that particular fish.~
END

// King Ixilthel

INTERJECT_COPY_TRANS2 SAHKNG01 6 sahkng01-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This beast here is no more fitting to be a judge than any power-mad lunatic. Let us be on our guard.~
END

INTERJECT_COPY_TRANS2 SAHKNG01 46 sahkng01-46
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Pleasant words, but if his treatment of the priestesses is anything to go by, they would probably change at the drop of a hat.~
END

// Priestess Senityili on rebels

INTERJECT_COPY_TRANS2 SAHPR1 59 sahpr1-59
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~<CHARNAME>, if the denizens of the Underdark were to destroy this place, the coasts would be free from Sahuagin raids for a long time to come, for they cannot pass through the seas.~
= ~Just something to think about before agreeing to anything.~
END

INTERJECT_COPY_TRANS2 SAHPR1 69 sahpr1-69
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Now that we've agreed to this, I suppose we ought to keep our word, though I do not wish to see this race made stronger.~
= ~On another note, this might allow us to pass through on our way out of this place with less violence, though I do not relish going to where our path seems to taking us.~
END

// Imps

INTERJECT_COPY_TRANS2 SAHIMP02 6 sahimp02-6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~That doesn't sound too bad, so long as playing the game doesn't mean facing other "nasty nasty nasties."~ 
END

// Beholder

EXTEND_BOTTOM SAHBEH01 27
IF ~InParty("Kova") See("Kova") !CheckStatGT(LastTalkedToBy,12,WIS)~ THEN EXTERN Z#KOVAJ sahbeh01-27
END

CHAIN
IF ~~ THEN Z#KOVAJ sahbeh01-27
~Interesting. Did he mention anything about the contents of the chest? Maybe he just meant the chest itself.~
EXTERN SAHBEH01 33

EXTEND_BOTTOM SAHBEH01 34
IF ~InParty("Kiyone") See("Kiyone") !CheckStatGT(LastTalkedToBy,12,WIS)~ THEN EXTERN Z#KIYOJ sahbeh01-34
END

CHAIN
IF ~~ THEN Z#KIYOJ sahbeh01-34
~Really now, nothing in the letter of your instructions prevents you from opening the chest without us ever touching it, and we'd be able to access the contents without ever disturbing the chest itself.~
EXTERN SAHBEH01 35

EXTEND_BOTTOM SAHBEH01 38
IF ~InParty("Kova") See("Kova")~ THEN EXTERN Z#KOVAJ sahbeh01-38
END

CHAIN
IF ~~ THEN Z#KOVAJ sahbeh01-38
~That sure sounds like an interesting and distinctly meaningful task, assuming you choose to remain here, of course.~
EXTERN SAHBEH01 39

// Prince Vilynaty

INTERJECT_COPY_TRANS2 SAHPR2 12 sahpr2-12
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~This prince does not inspire me to much confidence, but at least he's not intent on having us killed.~
END

EXTEND_BOTTOM SAHPR2 19
IF ~InParty("Kova") See("Kova") Global("Z#sahpr2-19", "GLOBAL", 0)~ THEN 
DO ~SetGlobal("Z#sahpr2-19", "GLOBAL", 1)~ EXTERN Z#KOVAJ sahpr2-19
END

CHAIN
IF ~~ THEN Z#KOVAJ sahpr2-19
~You certainly seem a better ruler than the king we met not so long ago, but your people's gain will eventually mean more raids along the coasts.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Since when did more raids along the coasts, maybe in a few years' time, mean anything to you, Kova? Or maybe they do.~
== Z#KOVAJ
~Still, we might be able to come to terms if what you can offer us something substantial.~
EXTERN SAHPR2 14

// Ending Help Prince

INTERJECT_COPY_TRANS2 SAHPR2 4 sahpr2-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is quite a pleasant surprise. It seems even shark people such as these can be generous.~
END

// Ending Help King

INTERJECT_COPY_TRANS2 SAHKNG01 56 sahkng01-56
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It is a pleasant surprise to see this king honor his word. Our gain is very probably the loss of the Sahuagin, but that might really be for the best for all of us.~
END



// Meeting Baron Ployer

INTERJECT_COPY_TRANS2 JAHEIRAJ 30 jaheiraj-30
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Jaheira, this might not be the best time to be arguing about the meaning of a word.~
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 31 jaheiraj-31
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Jaheira, this might not be the best time to be arguing about the meaning of a word.~
END

// Belgrade

INTERJECT_COPY_TRANS2 BERNARD 4 bernard21
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") !Dead("Jaheira")~ THEN
~This does not bode well for Jaheira at all. If we don't act quickly I believe she will be meeting Belgrade soon.~
== Z#KIYOJ IF ~OR(2) !InMyArea("Kova") !InParty("Kova")
InParty("Kiyone") InMyArea("Kiyone") !Dead("Jaheira")~ THEN 
~We have to act quickly, or I fear Jaheira will be joining her dead friend.~
END

INTERJECT_COPY_TRANS2 BERNARD 21 bernard21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~At least we have a place to investigate. Let us make haste, or I fear you might be meeting your dead friend soon.~
== JAHEIRAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I know well enough what to do... and I will not let Belgrade go unavenged.~
END

// post Baron Ployer

CHAIN
IF ~AreaCheck("AR0409")
Dead("Ployer")
!InParty("Jaheira")
GlobalGT("JaheiraCursed", "GLOBAL", 0)
Global("z#ployer", "LOCALS", 0)~ THEN Z#KIYOJ ployerdead
~Good riddance to bad rubbish. This is a fate long overdue, a justice finally served.~ 
DO ~SetGlobal("z#ployer", "LOCALS", 1)~ EXIT

INTERJECT_COPY_TRANS2 JAHEIRAJ 72 jaheiraj-72
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Just enemies that could have been more conclusively dealt with.~
== JAHEIRAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Thank you for that reminding me that if it weren't for the interference of the law, this would not have happened and Belgrade would still be alive.~
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 73 jaheiraj-73
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I hope so as well, on both counts.~
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 74 jaheiraj-74
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~You know, I'd almost rather we'd meet more of his kind than be assured that we will always be faced with enemies.~
== JAHEIRAJ
~And I'd rather you not interrupt me when I'm speaking to <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 JAGALVAR 3 jagalvar-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I don't like the sound of this, <CHARNAME>.~
END

INTERJECT_COPY_TRANS2 JAHEIRAJ 124 jaheiraj-124
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~You know, I really think we should be going. You don't have to answer this, <CHARNAME>.~
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
~Who would have thought? I'm fighting Harpers today.. and giving no quarter.~
= ~But no one is perfect, and certainly no one is above corruption. Either way, it seems my path is set, and I stand on righteousness and truth.~
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
~This is a sorry day. Fighting Harpers, of all people... but I have little choice. The Vigilantes back among the Sentinels will not be pleased.~
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
~It is a relief to know there will be no further violence this day. Enough Harper blood has already been spilt, even though their judgment was born of a corrupt desire for power.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I've always thought the Harpers meddlesome, untrustworthy allies at best, for your cause.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Still, they are allies nonetheless, and I would not wish to cause the Vigilantes back at home undue difficulties with them.~
EXIT

// Dermin

INTERJECT_COPY_TRANS2 JADERMIN 6 jadermin-6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~That sounds like something an assassin acquaintance once told me. If I had heeded him, I would by now be waist deep in the blood of others, for little more than the approval of others.~
== Z#KIYOJ IF ~OR(2) !InParty("Kova") !InMyArea("Kova")
InParty("Kiyone") !InMyArea("Kiyone")~ THEN 
~Do not listen to him, that is a lie from the pit. Peer approval does not dictate what right and wrong is.~
END

CHAIN
IF ~Global("JaheiraNotHarper","GLOBAL",1)
GlobalGT("BKiyoJaheira", "GLOBAL", 2) 
Global("ElminsterForgives","GLOBAL",0)
InParty("Jaheira") InMyArea("Jaheira")
Global("BKiyoJahHarp", "GLOBAL", 0) ~THEN Z#KIYOB KyJahHarp
~What do you intend to do now that you are no longer a Harper, Jaheira?~
DO ~SetGlobal("BKiyoJahHarp", "GLOBAL", 1)~
== BJAHEIR ~I do not know. I... I trust Silvanus will guide me.~
== Z#KIYOB ~Do not worry, Jaheira. Once this whole matter is over, I might be able to find you a place among the Sentinels. We could do well with one like you, and many of our rangers may benefit from what you know of nature.~
== BJAHEIR ~I do not think they would accept me if it meant trouble with the Harpers.~
== Z#KIYOB ~Perhaps there might not be. Or there might not be enough for them to be concerned.~
= ~Besides, you did what was right. Do not doubt that, even though things may appear otherwise to people.~
== BJAHEIR ~Life is not a fairytale simply because you do the right thing. Bad things happen... and to good people.~
== Z#KIYOB ~That much has always been plain to me. But there will be evidence regarding the misdeeds of Galvarey and his cohorts - there always is.~ 
= ~If the true Harpers cannot uncover it, once my case is resolved and <CHARNAME>'s cause is served, I will investigate the matter myself, and you shall have what is your due.~
== BJAHEIR
~Your confidence in your own abilities is admirable, Kiyone. A little too admirable, maybe.~
== Z#KIYOB 
~I know who I am, and what I am capable of. I just need time and some assistance here and there. Meantime, would you consider joining the Sentinels if the Harpers don't want you back?~
== BJAHEIR
~I will think on it, but the answer is likely no. I can pretend to be something I'm not, but I won't. And what I was, perhaps I still am, even if others say otherwise.~
== Z#KIYOB 
~Well spoken, and I respect you for that. Still, my offer is open for the taking anytime, Jaheira.~
== BJAHEIR
~My thanks. I appreciate your gesture.~
EXIT

CHAIN
IF ~Global("ElminsterForgives","GLOBAL",1)
GlobalLT("BKiyoJahHarp", "GLOBAL", 2)
PartyHasItem("MISC5X")
InParty("Jaheira") InMyArea("Jaheira")~ THEN Z#KIYOJ JahHarpCongrats
~Congratulations, Jaheira. I am happy for you.~
== JAHEIRAJ
~My thanks. This has eased many a burden and pain for me.~
== Z#KIYOJ
~Indeed, and it is good to see you happier again.~
= ~It's a slight pity, though. You would have made a fine Sentinel.~
== JAHEIRAJ IF ~Global("BKiyoJahHarp", "GLOBAL", 0)~ THEN
~I wasn't aware I had been made such an offer.~
== Z#KIYOJ IF ~Global("BKiyoJahHarp", "GLOBAL", 0)~ THEN
~Honestly, I probably would have made the offer. It was just a matter of time.~
== JAHEIRAJ
~I appreciate the mention, though I'm sure you'll understand if I'll not be accepting it.~
== Z#KIYOJ
~That I can understand, very well.~
DO ~SetGlobal("BKiyoJahHarp", "GLOBAL", 2)~ EXIT

// Saemon Asks Out / Back to Brynnlaw

INTERJECT_COPY_TRANS2 PPSAEM2 19 ppsaem2-19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I don't trust this pirate, but risking his treachery would be preferable to entering that dark place.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Agreed, I think only one tired of life would consider the Underdark as an option when we have our friendly pirate city to adjourn to.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
~It would be best to pay him heed, <CHARNAME>. What I know of the Underdark only impresses it as a place to be avoided at all costs.~
END

INTERJECT_COPY_TRANS2 PPSAEM3 1 ppsaem3-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~And what about the villainy that we have been subject to, that we have been lied to repeatedly and made use of time and again? Your cunning, pirate, is well and truly above that of many.~
== PPSAEM3 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Your compliment is ill-timed, my lady. Perhaps if our situation were more favourable, we might be able to drink to that together.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~If the Underdark weren't so treacherous, I'd say we drop this conniving scum and take that route instead. At least over there the threat will be plain from without than hidden from within.~
END

INTERJECT_COPY_TRANS2 PPSAEM3 29 ppsaem3-29
== Z#KIYOJ IF ~InMyArea("Kiyone") InParty("Kiyone")~ THEN
~Be wary, <CHARNAME>, for this crook now no longer has any need for us.~
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova") InMyArea("Kiyone") InParty("Kiyone")~ THEN
~At least once we get out to sea, we will no longer have need for him.~
END

INTERJECT_COPY_TRANS2 PPGITH 3 ppgith-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think we're in quite a spot of trouble. Perhaps it wouldn't be too late to return to Saemon whatever he has given to us?~
END


// Irenicus

INTERJECT_COPY_TRANS2 PPWANEV2 4 ppwanev2-4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Now might be a good time for us to stand back a little and let these inmates take the brunt of his power.~
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
~At least the main threat is concluded, though it is a pity we could not put an end to this foul mage. As for these assassins, spotting them before they strike should make them less of a threat.~
EXIT

// Player1 Lonk is Dead 
/*
INTERJECT_COPY_TRANS2 PLAYER1 15 player1-15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We haven't much time to waste, so let us go about gathering these mages against Irenicus.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Not too fast though, lest they mistake us for their enemies.~
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
~Despite my doubts as to his motivations, there is truth in his words.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Erring on the side of caution is indeed preferable. Although whose side he is truly on is still a good question.~
== Z#KIYOJ
~We can bide our time, so let us first handle Irenicus, and then pay him back at an opportune moment.~
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
~Yes, we're finally free and out that accursed maze!~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Now, to deal with Irenicus.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I was afraid you'd say that, but I suppose we have hardly any other choice.~
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
~What in the name of the Gods was that!?~
DO ~SetGlobal("Z#KvAskSlayer","GLOBAL",1)~
== Z#KIYOJ 
~I don't know, but we had best be prepared to deal with it if it should show up again. I hope for all our sakes that you continue to remain yourself, <CHARNAME>.~
EXIT

// Player1 - Step Falters

CHAIN 
IF ~!Global("FinalFight","AR6200",4)
!Global("MelStillImmortal","AR6200",2)
AreaCheck("AR1512")
Global("Z#KyAskFalter","GLOBAL",0)
Global("SelfTalk","GLOBAL",2)
Global("speakWhenLonkDead","GLOBAL",0)~ THEN Z#KIYOJ postfalter
~Something seems to be wrong with you, <CHARNAME>. If you're not quite yourself rest might be in order before we proceed onwards. After all, recent developments couldn't have been easy for you.~
DO ~SetGlobal("Z#KyAskFalter","GLOBAL",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I don't think it's as simple as just the events. Something feels different, but I could be wrong. Still, rest is probably a good idea, if we have to.~
EXIT

// Bodhi Exit

INTERJECT_COPY_TRANS2 PPBODHI4 19 ppbodhi4-19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Right on schedule, as expected. Let's finish her here, <CHARNAME>!~
== Z#KOVAJ IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone") 
InParty("Kova") InMyArea("Kova")~ THEN
~As expected, I suppose. Still, we cannot let her stop us now, not when we're so close to being free of this place.~
END

// Dayce

INTERJECT_COPY_TRANS2 PPJOYE 1 ppjoye-1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~A pity this one seems impossible to reason with, for it seems we have at least foe in common. It's too bad we'll probably come to blows.~
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
~It is some relief to know that we have salved the pain and anguish that had been, even if it was for a vampire.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It seems even such creatures of darkness might have grievances beyond their apparent evil.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Well, if even vampires cannot be certainly evil, who else would there be, who would be guilty enough for outright condemnation?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I see your point, and I will think on it.~
EXIT

// Final Yoshimo redemption

EXTEND_BOTTOM SLILMAT 0 
IF ~PartyHasItem("miscbu")
GlobalGT("BKovaYoshi","GLOBAL",2)
InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ giveyoshheart
END

CHAIN
IF ~~ THEN Z#KOVAJ giveyoshheart
~I trust this is not too strange a request, for I have with me the heart of man, someone I once thought of as a friend.~
== SLILMAT ~It seems that you expect us to try to guide one who has already fallen, but that is not new to us. Some live well and then fall unexpectedly. Tell me of this man.~
== Z#KOVAJ ~His name was Yoshimo, and his hand was forced against us, at least so I would like to believe. While this won't bring him back, I hope that it will serve some purpose, somehow.~
EXTERN SLILMAT 11

INTERJECT_COPY_TRANS2 SLILMAT 13 slilmat13
== Z#KOVAJ IF ~GlobalGT("BKovaYoshi","GLOBAL",2)
InParty("Kova") InMyArea("Kova")~ THEN
~It is done. Be laid to rest where you deserve, wherever that may be.~
= ~Farewell, my friend.~
END

// After Yoshimo dies

CHAIN
IF ~!ActuallyInCombat()
AreaCheck("AR1516") 
Dead("Yoshimo")
GlobalGT("BKovaYoshi","GLOBAL",2)
Global("Z#YoshDie", "GLOBAL", 0)~ THEN Z#KOVAJ yoshdie
~And so, Yoshimo is dead now. Things are as they should be, aren't they?~
DO ~SetGlobal("Z#YoshDie", "GLOBAL", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~He was a friend, after all, once. Though really, I don't think he's worth being upset over.~
== Z#KOVAJ
~Perhaps so, or perhaps not. It is all probably meaningless, but it shouldn't hurt to see what we can do for him.~
EXIT

// Killing Yoshimo YOSHIMOX

EXTEND_BOTTOM YOSHIMOX 2
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Enemy()~ EXTERN Z#KOVAJ yoshimox2
END

CHAIN
IF ~~ THEN Z#KOVAJ yoshimox2
~Even to the end, I admire your courage in the face of death, a courage which I suspect is beyond me.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is no better of yours, Kova. Let us send this wretched traitor to where he belongs!~ 
== YOSHIMOX IF ~GlobalGT("BKovaYoshi","GLOBAL",2)~
~Yes, and you cannot change where I am going. Now, let's get this over with!~ 
== Z#KOVAJ IF ~GlobalGT("BKovaYoshi","GLOBAL",2)~
~And it seems today we cross blades, just as we have mentioned before. No hard feelings?~
== YOSHIMOX IF ~GlobalGT("BKovaYoshi","GLOBAL",2)~
~They never have been, and never will be.~
EXIT

// ~let our blood washed away our debts forever.~

INTERJECT_COPY_TRANS2 YOSHIMOX 5 yoshimox5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is not the time for sympathies, <CHARNAME>. Do not let him lower your guard!~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~A Geas. I see now, I guess. It is too late, isn't it, Yoshimo?~
== YOSHIMOX IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It cannot be undone. Do not think I would not have tried if it were possible.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I thought as much. Based on my studies, it is small wonder that it has brought you to this state of affairs.~
END

// Yoshimo's Betrayal

INTERJECT_COPY_TRANS2 YOSHJ 64 yoshj64
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I really don't like where this is going.~
END

INTERJECT_COPY_TRANS2 YOSHJ 113 yoshj-113
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I should have foreseen this would be. It seems that I have only myself to blame for the carelessness and assumptions leading up to this mistake.~
== Z#KOVAJ IF ~InParty("Kova") !GlobalGT("BKovaYoshi", "GLOBAL", 2)~ THEN
~My instincts weren't wrong after all, Yoshimo. I was right about you all along. I only regret not having guessed that you were in Irenicus' service.~
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("BKovaYoshi", "GLOBAL", 2)~ THEN
~How disappointing. This development shouldn't have been beyond my expectation, but still... as agreed, no hard feelings.~
== YOSHJ IF ~InParty("Kova") GlobalGT("BKovaYoshi", "GLOBAL", 2)~ THEN
~Your reaction is not quite what I would expect of you.~
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("BKovaYoshi", "GLOBAL", 2)~ THEN
~Maybe I didn't expect to react this way either. I thought I would value my own skin more, and be more distraught. But I am not, my friend, I am not.~
END

// Yoshimo and Perth

INTERJECT_COPY_TRANS2 YOSHJ 120 yoshj-120
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~<CHARNAME>, listen! What is Yoshimo talking about?~
END

// Yoshimo and Saemon

INTERJECT_COPY_TRANS2 PPSAEM 62 ppsaem62
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") !GlobalGT("BKovaYoshi", "GLOBAL", 2)~ THEN
~I hope I'm not the only one wondering what he means by those words to our friend here.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") 
OR (3)
!InParty("Kova")
!InMyArea("Kova")
GlobalGT("BKovaYoshi", "GLOBAL", 2)~ THEN
~What an interesting comment. I wonder...~
END



// Dumping Imoen

INTERJECT_COPY_TRANS2 IMOEN2 22 imoen22
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~<CHARNAME>, I urge you to strongly reconsider this. She seems to have recovered from previously, and she even was more concerned for you initially. If not for my commitment to my case, I'd not hesitate to step out and let her take my place with you.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") 
OR (2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
~What, we came all the way here to rescue this friend of yours, and you just dump her like that? This is hardly sane, why did we even come here in the first place, if she means so little to you?~
END



// after Bodhi's chat, PPBODHI2

CHAIN
IF ~Global("AsylumPlot","GLOBAL",41)
AreaCheck("AR1512")
Global("KKAsylumNote", "GLOBAL", 0)~ THEN Z#KOVAJ SpellholdMaze
~And so, after fleeing from the Cowled Wizards for a few months, I finally find myself not only incarcerated in the most feared of asylums, but also in the maddest machination in that particular asylum. Delightful.~
DO ~SetGlobal("KKAsylumNote", "GLOBAL", 1)~
== Z#KIYOJ 
~Well, at least your primary concern with continued breathing seems to be in order.~
== Z#KOVAJ
~I wonder how much longer it will remain that way.~
== Z#KOVAJ IF ~GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~Still, I suppose things could be worse. I could be in here on my own.~
== Z#KIYOJ IF ~GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~I thought prior to this you were largely used to being on your own.~
== Z#KOVAJ IF ~GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~So long as I'm not alone with you, I'm good.~
EXIT

// Irenicus 

INTERJECT_COPY_TRANS2 ppireni1 40 ppireni1-40
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yet another one of the many instances in my life when I regret not acting on my suspicions. Unlike previous such instances, though, it would appear to be fatal on this occasion.~
= ~Well, I guess it's of some consolation to know that it took some planning for us to be dispatched in this fashion.~
END

// Lonk the Sane Tour

INTERJECT_COPY_TRANS2 PPDILI 0 ppdili0
== Z#KIYOJ IF ~InParty("Kiyone") Global("ppdili6","GLOBAL",0)~ THEN
~A child, incarcerated here? This... this should not be, and especially not by cold, heartless wizards!~
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone") Global("ppdili6","GLOBAL",0)~ THEN
~Perhaps she would have had nowhere else to go, but I could be wrong.~
END

INTERJECT_COPY_TRANS2 PPWANEV 2 ppwanev2
== Z#KOVAJ IF ~InParty("Kova") Global("ppireni1-14","GLOBAL",0)~ THEN
~Just desserts, I suppose, for a Cowled Wizard. Still, I wonder who or what could have done this to one powerful enough to have overseen the work here.~
END

INTERJECT_COPY_TRANS2 PPTIAX 1 pptiax1
== Z#KIYOJ IF ~InParty("Kiyone") Global("pptiax6","GLOBAL",0)~ THEN
~Finally, it seems, an inmate who does deserve to belong here.~
END

INTERJECT_COPY_TRANS2 PPIMOEN 0 ppimoen0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~What? Is this the person we came all the way here to rescue?~
= ~Wait... something is very wrong here, <CHARNAME>. I think it might be best if you chose words wisely, or something might just snap on the inside.~
END


// Irenicus' Spellhold Tour

INTERJECT_COPY_TRANS2 PPIRENI1 4 ppireni1-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~His words seem reasonable enough. If I didn't know the Cowled Wizards better, I'd almost accept his words at face value.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Reasonable, yes, almost too reasonable. We had best be wary here.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
~This man seems a bit too composed, too reasonable, for a Cowled Wizard. I say we'd best be wary, and sometimes the first strike makes for a better one.~
END

INTERJECT_COPY_TRANS2 PPDILI 6 ppdili6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A child, incarcerated here? This... this should not be, and especially not by cold, heartless wizards!~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It might be for the better. Where else would she have gone, since even her parents cast her aside? Others would probably try to kill her, if she were left outside.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is true, but that doesn't make this imprisonment any more correct! There are other places...~
END

INTERJECT_COPY_TRANS2 PPIRENI1 14 ppireni1-14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Just desserts, I suppose, for a Cowled Wizard. Still, I wonder who or what could have done this to one powerful enough to run the Asylum.~
END

INTERJECT_COPY_TRANS2 PPTIAX 6 pptiax6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Finally, it seems, someone who does indeed deserve to belong here.~
END

INTERJECT_COPY_TRANS2 PPIMOEN 6 ppimoen6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Something is amiss here, <CHARNAME>. And not just with your friend.~
END

EXTEND_BOTTOM PPIRENI1 29
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ ppireni1-29
END

CHAIN
IF ~~ THEN Z#KIYOJ ppireni1-29
~You must be the one who started all this, the one who murdered <CHARNAME>'s former comrades! Where are the Cowled Wizards, and how did you free yourself?~
EXTERN PPIRENI1 30


// Brynnlaw Chapter 4

// Saemon Havarian with Aran PPSAEM 42+ PPARAN2 PPSIME

INTERJECT_COPY_TRANS2 PPSAEM 44 ppsaem44
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~As expected, an equally lawless one, save that he plies his trade over the waves as well. If not for necessity, I would not trust this man with even the very least of things.~
END

INTERJECT_COPY_TRANS2 PPSAEM 53 ppsaem53
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It's a relief to be back on land. At least here there's somewhere to run, when trouble shows up.~
END

INTERJECT_COPY_TRANS2 PPSIME 3 ppsime3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I concur with Sime. It might be best if we dealt with him first, before moving on. The way ahead is uncertain enough without having to keep looking behind our backs.~
END

INTERJECT_COPY_TRANS2 PPSIME 6 ppsime6
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~At least we survived. Though my misgivings about coming to this island are increasing at a rather unhappy rate.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We should have struck first. At least now we know enough to number this one among our foes.~
END

INTERJECT_COPY_TRANS2 PPSANIK 8 ppsanik8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Whoever or whatever is waiting for us in Spellhold is probably aware of our coming then. Let us step carefully when we do venture into that place.~
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
~Poor love-struck fool. If that last sentence about his widow had been a Stoneskin spell instead, he'd still be with us today. What a pathetic emotion love is.~
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
!InParty("Kiyone")~ THEN REPLY ~Innkeep! You seem to know something of this. Why has this man been killed?~ EXTERN PPINN01 6

CHAIN 
IF ~~ THEN Z#KIYOJ ppinn01-5
~Even if we had the information we needed, it would not be right to let the perpetrator of this foul murder remain unpunished. Innkeeper, who is this Galvena you spoke of? Is she the one behind all this?~
EXTERN PPINN01 6

// Andante and Dirbish

EXTEND_BOTTOM PPDUELC 2 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN DO ~ActionOverride("ppduel1",EscapeArea())
ActionOverride("ppduel2",EscapeArea())
EscapeArea()~ EXTERN Z#KIYOJ ppduelc2
END

CHAIN
IF ~~ THEN Z#KIYOJ ppduelc2
~The law of the blade is a tyranny indeed. How repulsive.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I had thought this would be no more than what you expected in a place such as this.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~That doesn't make it any less of the mockery it is.~
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
~Something seems to be amiss with that boy. It doesn't seem like he enjoys it.~
== Z#KOVAJ 
~Heh, aren't all thieves the same to you? Big or small, what difference does it make? They're all lawbreakers.~
== Z#KIYOJ
~Don't you ever get tired of needling me like that?~
== Z#KOVAJ 
~I hope not.~
EXIT

// Ginia

INTERJECT_COPY_TRANS2 PIRCOR02 17 pircor02-27
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Let us do what we can for this girl. Though if the time comes for it, it would be good to put an end to the Pirate Lord, who is behind all of this.~
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
~I am thankful to be in your company, <CHARNAME>, to see such deeds done.~
= ~Sometimes I wonder, where would I be, if someone had saved me from my Chremy.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It's not so much different being under our recent allies, is it?~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Indeed. Though perhaps, it might have been worth it to have got so far with you now.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Do you mean with me? Or with all of us, in this party?~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You can let me know when you've decided on the answer.~
EXIT

// Galvena 

EXTEND_BOTTOM PIRMUR01 2 
IF ~InParty("Kiyone") !InParty("Keldorn")~ THEN EXTERN Z#KIYOJ pirmur01-2
END

CHAIN
IF ~~ THEN Z#KIYOJ pirmur01-2
~Today, the hand of justice has caught up with you, and your murdering, slave-dealing days are over. Your evil ends here.~
EXTERN pirmur01 4

// Perth

INTERJECT_COPY_TRANS2 PPCOWLED 2 ppcowled2
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
~Be careful, <CHARNAME>, something is very very wrong here.~
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
~Well, the Pirate Lord lies behind that door. I sure can think of people I'd rather be associating with, but we've survived the Shadow Master, so we'll probably get by.~
= ~As for being detained as inmates to gain admittance to Spellhold, I think we might really want to consider alternatives, before taking this route.~
EXIT








// Tarnor the Hatchetman

INTERJECT_COPY_TRANS2 tarnor 1 tarnor1 
== Z#KOVAJ IF ~InParty("Kova") PartyGoldGT(1999) XPLT(Player1, 1000000)~ THEN
~They don't look like pushovers, <CHARNAME>, and I think it is better to lose some gold than lose our lives.~
== Z#KOVAJ IF ~InParty("Kova") !XPLT(Player1, 1000000)~ THEN
~They don't look like pushovers, <CHARNAME>, but I think we might just be able to take them on, if we play it right.~
END

// Salvanas

CHAIN
IF ~!InPartySlot(LastTalkedToBy,0)
Global("KiyoSalv", "GLOBAL", 0)
Name("Kiyone",LastTalkedToBy)~ THEN SALVANAS TalkKiyone1
~Can the fine and lovely lady that my eyes see be real and not a dream?~
DO ~SetGlobal("KiyoSalv", "GLOBAL", 1)~
== Z#KIYOJ
~I'm quite real, yes. Who are you, and what business have you with me?~
== SALVANAS
~Salvanas is my name, and I desire no business but to give you pleasure, my lovely doe. How should I know you, that I may have a name for your loveliness?~
== Z#KIYOJ
~I am Kiyone. What was your business again?~
== SALVANAS
~I desire nothing more than to show you what it means to know pleasure, in my arms, and to feel your lovely body pressed close to mine in the throes of passion.~
== Z#KIYOJ
~That's nice. How much are you asking for it?~
== SALVANAS
~What?~
== Z#KIYOJ
~It is your business, after all, so how much do you want?~
== SALVANAS
~Erm... a gold piece?~
== Z#KIYOJ
~Sorry, you're not worth that much.~
EXIT

CHAIN
IF ~!InPartySlot(LastTalkedToBy,0)
GlobalGT("KiyoSalv", "GLOBAL", 0)
Name("Kiyone",LastTalkedToBy)~ THEN SALVANAS TalkKiyone2
~Ah my lovely doe does grace me with her presence again. Might Salvanas have the pleasure of your embrace this day?~
== Z#KIYOJ
~That depends. How much do you want for your services?~
== SALVANAS
~I am not a prostitute, my lady. I am naught but a man with an eye for beauty and a burning desire to know them more intimately.~
== Z#KIYOJ ~Really? You could have fooled me.~
= ~On second thoughts, I'm afraid I don't believe you, so I'll be on my way.~
== SALVANAS 
~My lovely doe, you need not depart. I do not desire your purse, only your body.~
== Z#KIYOJ
~I'm sorry, I don't risk potential transactions when no price has been agreed on.~
EXIT



// Serving Aran Linvail - 1st 

INTERJECT_COPY_TRANS2 ARAN 4 aran4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~So we pay them the gold to do the dirty work for them. How convenient.~
= ~At least it doesn't have to do with skullduggery and murder, just protecting their interests.~
= ~Despite my misgivings, I will side with thieves this day, for your cause and for the aid you have given me.~
END

// Mook
EXTEND_BOTTOM MOOK 1
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ mook1
END

CHAIN
IF ~~ THEN Z#KIYOJ mook1
~I doubt any of us are happy to be here, so let's just get this over with. What's going on here?~
EXTERN MOOK 3

// Lassal

EXTEND_BOTTOM LASSAL 4
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("LassalTalk","LOCALS",1)
ReallyForceSpell(Myself,VAMPIRE_GAS_FORM_CHANGE)~ EXTERN Z#KOVAJ lassal4
END

CHAIN
IF ~~ THEN Z#KOVAJ lassal4
~A pity Mook perished. She didn't seem the bad sort, given what I've seen.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It would have been better if she had lived, but since she's dead at least we won't have to worry about what kind of report she'll be giving Aran about us.~
EXIT

// Serving Aran Linvail - 2nd

INTERJECT_COPY_TRANS2 ARAN 20 aran20
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~They must be rather desperate men, and it won't be easy to reason without bloodshed.~
= ~Let us be watchful of the contact as well. If that man at the docks was anything to go by, we had best step carefully.~
END

// Jaylos & Caehan

INTERJECT_COPY_TRANS2 JAYLOS 0 jaylos0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~They should know I'm wanted by the Shadow Thieves, and I can speak to them if you want me to.~
END

EXTEND_BOTTOM JAYLOS 1 
IF ~InParty("Kova") InMyArea("Kova")~ THEN REPLY ~You're... here to meet with the contact too? My friend here needs protection, maybe you can help us.~ EXTERN Z#KOVAJ jaylos1
END

CHAIN
IF ~~ THEN Z#KOVAJ jaylos1
~What are you doing? They're probably Shadow Thieves, they might recognise me!~
== CAEHAN
~Hey, isn't this that guy they're offering a huge sum of gold on?~
= ~Let's take him, Jaylos! We'll be filthy rich!~
== JAYLOS 
~What are you, a fool!? We can't go back to claim any reward!~
== Z#KOVAJ
~You mean... you're not going to try to kill me?~
== JAYLOS 
~We might have, but what good would it do us? There's nothing left for us with the bleeding guild.~
== Z#KOVAJ 
~I need to meet the contact too. The Shadow Thieves have been hunting me and my friends here and we need the protection.~
= ~It'll be better too, if this other guild has got its act properly together. I'd love to go back and show them a thing or two for coming after me the way they did.~
== JAYLOS 
~Right, so you have more reason than us to get in contact with them. But who told you we were here?~
== Z#KOVAJ
~You think I'd show my face in here if I knew there were a bunch of Shadow Thieves waiting for me? Hell no!~
= ~Saw some girl last night, taking out a bunch of thieves, and went to lend a hand, though she didn't look like she needed it.~
= ~She told me to get myself over here, where there'd be someone coming along, then she just... disappeared. Was... strange.~
== JAYLOS
~Yeah, some of them give me the creeps as well.~
== Z#KOVAJ
~Could you talk to the contact for me? My friends and I will be waiting outside, you can call us over if he wants to meet us.~
== JAYLOS 
~I suppose I could, but only if he says yes.~
== Z#KOVAJ
~Thank you, we'll just wait out here then. Otherwise, we'll just have to find some other way to get ourselves an ally against the Shadow Thieves...~
= ~Wait, someone is coming!~
DO ~SetCutSceneLite(TRUE)
EquipMostDamagingMelee()
Hide()
ReallyForceSpell(Myself, WIZARD_INVISIBILITY) 
JumpToPoint([625.788])
SetGlobal("JaylosFree", "GLOBAL", 1)
SmallWait(5)
CreateCreature("BODFGT03",[610.773],6)
ActionOverride("BODFGT03", ChangeAIScript("",OVERRIDE) )~ EXIT

BEGIN BODFGTSP

CHAIN
IF ~Global("JaylosFree", "GLOBAL", 1)
!Dead("Jaylos") !Dead("Caehan")~ THEN BODFGTSP bodfgtsp1
~What is going on here? Are all of you here to meet me? ~
== JAYLOS
~Are you the contact?~
== BODFGTSP 
~What is the name of the one you were expecting?~
== JAYLOS
~The name is... Gracen.~
== BODFGTSP
~Very good. It is not safe for us to wait here for long. Your new berth is beneath the graveyard district, behind the blue stone doors.~
DO ~SetGlobal("gracentold","GLOBAL",1)~
== CAEHAN
~Yes! We are going places!~
== JAYLOS 
~Hey, Kova, it's all right! It's the contact, you can show up now.~
== BODFGTSP
~Kova?~
= ~He is one of the friends of <CHARNAME>, and the mistress made a special arrangement with them that did not...~
== CAEHAN
~What do you mean? This is confusing.~
== BODFGTSP
~These are spies! Kill them!~
DO ~SetCutSceneLite(TRUE)
SetGlobal("JaylosFree", "GLOBAL", 2)
Face(6)
Enemy()
ActionOverride("Kova", Attack("BODFGT03")
Wait(1)
ActionOverride("Kova", ReallyForceSpell("BODFGT03", WIZARD_FLAME_ARROW)~ EXIT

CHAIN
IF ~Global("JaylosFree", "GLOBAL", 2)
Dead("BODFGT03")~ THEN JAYLOS gracendead
~What in the...~
== CAEHAN
~They... they've killed Gracen!~
== Z#KOVAJ
~We've got what we came for, <CHARNAME>, and there's no need for more bloodshed, especially since they both have nowhere else to go.~ 
= ~I think we can risk letting them go free, but the main question is if you agree. Do make the decision quickly, or these two will be very quickly turning hostile.~
END
IF ~~ THEN REPLY ~I think we can let them go.~ EXTERN Z#KOVAJ freejaycae
IF ~~ THEN REPLY ~Let's kill them. Dead men tell no tales.~ EXTERN Z#KOVAJ killjaycae

CHAIN
IF ~~ THEN Z#KOVAJ killjaycae
~Well, if that is your wish, I suppose it would be for the best after all. And who knows what the Shadowmaster would do if he found out that they were still alive?~
== JAYLOS ~What are you standing there for? Kill them or we'll never get out of this alive!~
DO ~ActionOverride("CAEHAN", Enemy() ) 
SetGlobal("JaylosFree", "GLOBAL", 7)
Enemy() ~ EXIT

CHAIN
IF ~~ THEN Z#KOVAJ freejaycae
~Wait, don't be too quick to draw your weapons!~
= ~Jaylos, our mission only involved obtaining information, and we really don't wish to get involved in more fighting.~
== JAYLOS ~We... we've nowhere to go now, not after you just...~
== Z#KOVAJ ~We'll report to the Shadow Thieves that you and Caehan have been taken care of. As the other guild would probably still come after you, I'd suggest you both get out of Amn as quickly as you are able.~
= ~It may seem like there's nothing left for you both, but believe me, there's a new lease of life waiting for you, if you run fast and far enough.~
== JAYLOS ~Then we'd best be going, before you be changing your minds.~
DO ~SetGlobal("JaylosSpawn","AR0511",2)
ActionOverride("CAEHAN", EscapeArea() )
SetGlobal("JaylosFree", "GLOBAL", 3)
RealSetGlobalTimer("jaylosfreeT","GLOBAL",12)
EscapeArea() ~ EXIT

CHAIN
IF ~RealGlobalTimerExpired("jaylosfreeT","GLOBAL")
InParty("Kova")
!Dead("Jaylos")
!Dead("Caehan")
Global("JaylosFree", "GLOBAL", 3)~ THEN Z#KIYOJ letjaylosgo
~A rather impressive performance back there, Kova. You lie with a masterful flair.~
DO ~SetGlobal("JaylosFree", "GLOBAL", 4)
SetGlobal("JaylosSpawn","AR0511",2)
SetGlobal("Sprite_Is_DeadJaylos", "GLOBAL", 1)
SetGlobal("Sprite_Is_DeadCaehan", "GLOBAL", 1)~
== Z#KOVAJ
~That is not something I am proud of, but at least it has helped preserve the lives of others.~
== Z#KIYOJ
~Yes, it has. Namely the lives of two traitorous thieves.~
== Z#KOVAJ 
~Two lives, nonetheless.~
== Z#KIYOJ
~You seem to forget, they are thieves, they are lawless, they are criminals. If you hadn't been so quick-tongued, they would have tried to slit our throats without a second thought.~
= ~And you let them go, just like that.~
== Z#KOVAJ
~I'm a thief as well, in case you forgot.~
== Z#KIYOJ 
~It's not the same. These two are the faithless ones, even among the Shadow Thieves. They are the greedy ones, drawn by the attraction of the offer.~
= ~You released them today, not knowing who else they will kill, even elsewhere, out of Amn. Not to mention putting our standing with Aran in danger if they are found to be alive.~
== Z#KOVAJ
~I'm not naive, they will not return, there is nothing left for them. Unless they get caught on their way out.~
= ~And if they manage to leave Amn in one piece, they might learn from this act of mercy and leave the life of lawlessness. For the kindness that they have received here.~
== Z#KIYOJ
~Yes, a kindness that was born out of lies and a cold blooded, calculated murder on your part.~
= ~The justice that was their due had not been administered, and they walked away from their guilt scot-free.~
== Z#KOVAJ 
~Well fine! Why didn't you stop us from letting them go? Why didn't you shoot them in the back as they left?~
== Z#KIYOJ
~I chose to let them go because I respected yours and <CHARNAME>'s decision. But I want you to open your eyes up to what you are doing, and the possible consequences.~
== Z#KOVAJ
~Bah, I've enough consequences to handle. I just hope to do some kindness before this whole expedition of ours winds up in my death.~
== Z#KIYOJ
~Even if that were true, then, you should have at least some consideration for the rest of us, especially for <CHARNAME>, whose cause you could further imperil.~
DO ~SetGlobal("JaylosSpawn","AR0511",2)~ EXIT

// Serving Aran Linvail - 3rd

INTERJECT_COPY_TRANS2 ARAN 22 aran22
== ARAN IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I thank you for the service you have rendered, and to further show my sign of my goodwill, I've ordered the bounty on Kova's head to be removed.~
= ~No doubt the guildmaster who wants his head will still provide a private reward for him, but for the larger part his efforts in that direction will have been stymied.~
DO ~IncrementGlobal("ShadowHunt", "GLOBAL", 1)~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That's a relief of sorts. What's the catch?~
== ARAN IF ~InParty("Kova") InMyArea("Kova")~ THEN
~This is however, not quite the end of what needs to be done.~
END

INTERJECT_COPY_TRANS2 ARAN 14 aran14
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~So, off we go to clean out a nest of vampires. Is it just me, or does this seem a somewhat tall order for us mere mortals?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Aran certainly knows how to make full use of our services. Still, now that we're aware of this, we're almost obliged to weed this evil out from the city, even if he had not ordered us to.~
END

EXTEND_BOTTOM LASSAL02 7 
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~Enemy()~ EXTERN Z#KOVAJ lassal02-7
END

CHAIN
IF ~~ THEN Z#KOVAJ lassal02-7
~We cannot fight here, <CHARNAME>! Let us pull back to a safer position!~
EXIT

// After Ending Lassal

INTERJECT_COPY_TRANS2 ARAN 42 aran42
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I am starting to get the feeling it's a place we don't want to be.~
END

INTERJECT_COPY_TRANS2 ARAN 45 aran45
== ARAN IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Let me know of your decision to leave when you've done discussing it with your friends. The captain is waiting.~
== Z#KIYOJ IF ~InParty("Kiyone")
GlobalGT("JermClue", "GLOBAL", 0) 
GlobalGT("DayvClue", "GLOBAL", 0) 
GlobalGT("LOAClue", "GLOBAL", 0)~ THEN
~I believe we've made enough of the investigation on Kova's case to leave for this time, and when we return we can finish up the case properly. I have no qualms about an immediate departure.~
== Z#KIYOJ IF ~InParty("Kiyone")
OR(3)
Global("JermClue", "GLOBAL", 0) 
Global("DayvClue", "GLOBAL", 0) 
Global("LOAClue", "GLOBAL", 0)~ THEN
~Much as I understand your wish to rescue Imoen, I feel that there are more clues that needs to be uncovered regarding Kova's case before we are to leave.~
= ~Nonetheless I will stand by your decision, <CHARNAME>, if you should choose to leave immediately.~
END

INTERJECT_COPY_TRANS2 ARAN 48 aran48
== Z#KIYOJ IF ~InParty("Kiyone")
OR(3)
Global("JermClue", "GLOBAL", 0) 
Global("DayvClue", "GLOBAL", 0) 
Global("LOAClue", "GLOBAL", 0)~ THEN
~I feel there is still more that needs attending to regarding the case I'm handling for Kova, but if you feel we have tarried enough here, <CHARNAME>, then to Spellhold we shall go.~
== Z#KIYOJ IF ~InParty("Kiyone")
GlobalGT("JermClue", "GLOBAL", 0) 
GlobalGT("DayvClue", "GLOBAL", 0) 
GlobalGT("LOAClue", "GLOBAL", 0)~ THEN
~Progress on Kova's case has proved adequate, and it should be fairly simple to wrap it up when we return. I have no worries about leaving immediately.~
END






// Planar Sphere

// Tolgerias
INTERJECT_COPY_TRANS2 MADEEN 1 madeen1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~One of the seniors among the Cowled Wizards? It would be best to be careful in dealing with any of them.~
= ~Still, I could be speaking out of my understandable, personal bias.~
END

INTERJECT_COPY_TRANS2 TOLGER 75 tolger75
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This secrecy speaks ill of this matter. It would be best to set the matter aside.~
END

INTERJECT_COPY_TRANS2 TOLGER 18 tolger18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Well, now that you have agreed to it I suppose we are bound to carry it out, unless new information comes to light.~
= ~At least we know he is a murderer, though it might not be as simple as that. It would be good to talk with this man before we do anything irreversible.~
END

// Valygar
INTERJECT_COPY_TRANS2 VALYGAR 4 valygar4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~So this is why they want him. Small wonder, that he became a murderer. The Cowled Wizards are indeed as careless of human lives and free will as I have heard.~
= ~If his story is indeed true, then we should do what we can to help and protect this man.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yet another hunted by the wizards, but for an even more wretched reason than I. It would sit ill with me to raise a hand against him.~
END

INTERJECT_COPY_TRANS2 VALYGAR 8 valygar8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~So this is why they want him. Small wonder, that he became a murderer. The Cowled Wizards are indeed as careless of human lives and free will as I have heard.~
= ~If his story is indeed true, then we should do what we can to help and protect this man.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yet another hunted by the wizards, but for an even more wretched reason than I. It would sit ill with me to raise a hand against him.~
END

INTERJECT_COPY_TRANS2 VALYGAR 12 valygar12
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~So this is why they want him. Small wonder, that he became a murderer. The Cowled Wizards are indeed as careless of human lives and free will as I have heard.~
= ~If his story is indeed true, then we should do what we can to help and protect this man.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yet another hunted by the wizards, but for an even more wretched reason than I. It would sit ill with me to raise a hand against him.~
END

INTERJECT_COPY_TRANS2 VALYGAR 28 valygar28
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It appears I was mistaken to have chosen to join you, if you would raise your blade to this man. I'm afraid it is time for me to rectify that oversight.~
DO ~LeaveParty() Enemy()
ActionOverride("Valygar", Enemy() )~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I cannot allow you to play the puppet to the schemes of the Wizards against what is righteous, <CHARNAME>. I only wished I perceived your true nature the sooner.~
DO ~LeaveParty() Enemy() 
ActionOverride("Valygar", Enemy() )~
END

INTERJECT_COPY_TRANS2 VALYGAR 43 valygar43
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~His words do not ring false, and I see no reason to doubt them. He is one among us rangers, as well, and even in the face of death few of us would lie cravenly.~
END

INTERJECT_COPY_TRANS2 VALYGAR 44 valygar44
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Not a bad bargain, I suppose. Since we already have the Cowled Wizards hot on our heels anyway, one more reason to murder the whole lot of us shouldn't hurt too much.~
= ~Now we just have to look forward to the simple matter of killing an evil wizard a millennium old who has probably travelled the planes, honing his dark arts and remaining undefeated. Delightful.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~You know, I do wish you'd keep your perception of reality to yourself at times.~
END

// Knight of Solamnia
INTERJECT_COPY_TRANS2 OBSSOL01 2 obssol01-2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We might be able to help them out, but first we must attend to ourselves. Perhaps they may have useful information for us about the way ahead.~
END

// Lavok
INTERJECT_COPY_TRANS2 LAVOK 2 lavok-2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~That is a rather interesting perspective. As if one powerful necromancer weren't enough... here's to surviving.~
END

INTERJECT_COPY_TRANS2 LAVOK 33 lavok-33
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I say it is a ruse, a trap, but we have little choice. I would that we could just finish him now, but we have to get back to our world somehow.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~No, Kiyone. I feel that he speaks the truth, and we should aid him if we can.~
END

INTERJECT_COPY_TRANS2 LAVOK 26 lavok-26
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I say it is a ruse, a trap, but we may have little choice. I would that we could just finish him now, but we have to get back to our world somehow.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~No, Kiyone. I feel that he speaks the truth, and we should aid him if we can.~
END

// Tolgerias Dead
CHAIN
IF ~Dead("tolger")
AreaCheck("AR0412")
!ActuallyInCombat()
Global("tolgerdie", "LOCALS", 0)~ THEN Z#KOVAJ tolgerdie
~A rather satisfying death, I think. It is rare that putting an end to someone feels so satisfying to me.~
DO ~SetGlobal("tolgerdie", "LOCALS", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I can't say I enjoyed that, but I can see your point.~
== Z#KOVAJ IF ~InParty("Valygar")~ THEN
~Here's one step closer to the end of your travails, Valygar.~
== VALYGARJ IF ~InParty("Valygar")~ THEN
~Thank you, but no doubt there is more that needs to be done.~
EXIT

// End of Lavok
INTERJECT_COPY_TRANS2 LAVOK 57 lavok-57
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~For what evil he has done, I'd say let him rot in here. Still, an agreement is an agreement that we should abide by.~
END

INTERJECT_COPY_TRANS2 VALYGARP 5 valygarp5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I would like to think that he was redeemed at the end, Valygar, but perhaps that is because I am myself guilty, albeit of less than him.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We'll never know, I suppose. Perhaps man was never made to judge his fellow.~
END

INTERJECT_COPY_TRANS2 VALYGARJ 110 valygarj110
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I would like to think that he was redeemed at the end, Valygar, but perhaps that is because I am myself guilty, albeit of less than him.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We'll never know, I suppose. Perhaps man was never made to judge his fellow.~
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
~And so he is at an end. Was the price he paid heavy enough for the evils he did? Did the repentance for his misdeeds come too late?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We'll never know, I suppose. Perhaps man was never made to judge his fellow.~
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
~Surely <CHARNAME>, even if he truly deserved to rot in here, as indeed he probably does, we could at least have showed him some small kindness before his end?~
== Z#KOVAJ IF ~!InParty("Valygar")~ THEN
~Was the price he paid not heavy enough for the evils he did? Did his repentance truly come too late?~
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Valygar")~ THEN
~Whatever it may be, he is dead now, and there is no need to be incensed. Perhaps man was never made to judge his fellow.~
EXIT



// Mekrath and Planar Prison

INTERJECT_COPY_TRANS2 RAELIS 33 raelis33
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~That explains quite a bit. I have scarce time for plays, but certainly that earlier segment was hardly what I would consider entertaining.~ 
END

INTERJECT_COPY_TRANS2 RAELIS 35 raelis35
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~There might be something here for us, that we can help set right. Yet one has to beware of trickery and half-truths in dealing with such bards.~ 
END

INTERJECT_COPY_TRANS2 RAELIS 47 raelis47
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This could be just ill fortune, or that this troupe tends to get up to activities that stretch the law.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Or simply be poor enough to be unable to or choose not to bribe the authorities.~
END

INTERJECT_COPY_TRANS2 RAELIS 51 raelis51
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Interesting how the gem is worth more than one of their actor's life.~
END

INTERJECT_COPY_TRANS2 RAELIS 45 raelis45
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Surely hearing out their problem would not have done us any harm.~
END

INTERJECT_COPY_TRANS2 HAERDA 198 haerda198
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is an interesting turn of events, but so long there is no treachery or new dangers involved in this, we may stay and hear what of what there is to come.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Well, I guessed there was more to that gem than was apparent, but I can't say the possibility of a conduit ever came to mind. I never even thought I'd see such a thing as planar travel about in my time.~
END

INTERJECT_COPY_TRANS2 RAELIS 9 raelis9
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~If it were up to me, I'm not very keen on facing planar creatures. Those of this plane are bad enough, but I get the feeling you would think otherwise, <CHARNAME>.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~The creatures might be, as you say, dangerous, but if miss Raelis needs our help we may as well see to the completion of our favours to this band.~
END

INTERJECT_COPY_TRANS2 BOUNHA 4 bounha4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~We have enough enemies in this plane of existence than to make more from other planes of existence. And these do not look paltry foes by any means.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~While we have not known this band for long, it would be best if we could at least do something for them... though I'm not sure how much is too much.~
END

INTERJECT_COPY_TRANS2 MEKRAT 0 mekrat0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I can sense power from this wizard and I think it would be best to use some tact here.~
END

EXTEND_BOTTOM MEKRAT 1 
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ mekrat1
END

CHAIN
IF ~~ THEN Z#KOVAJ mekrat1
~A thief eh? Well, we might be played for fools by the ones who sent us, but a life is a life still. Name us your price then, that we might make recompense for the disturbance he has caused you, good sir.~
EXTERN MEKRAT 7

INTERJECT_COPY_TRANS2 HAERDA 25 haerda25
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I wouldn't be comfortable taking anyone as a slave, <CHARNAME>. Stooping to the level of the wizard isn't what I'd see any of us doing.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
~Let no slaves be taken, for we shouldn't stoop to such misdeeds as the wizard did.~
END 

INTERJECT_COPY_TRANS2 HAERDA 0 haerda0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Bards. Scraped out of a bad situation and all they can think of is to make a nice poem out of it, rather than learn how to avoid it in future. Bah.~
END

INTERJECT_COPY_TRANS2 PBHUNT01 1 pbhunt01-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It seems the taint of slavery is rampant even here on the other planes. Let it be punished no differently.~
END

INTERJECT_COPY_TRANS2 PBHUNT01 5 pbhunt01-5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Great. I'd be inclined to agree with him, but that would serve no purpose. I think we'd best be ready for a stiff fight.~
END

INTERJECT_COPY_TRANS2 PTAGGET 2 ptagget2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yes, just as we'd rather risk life and limb on another plane for a bunch of strangers rather than continue living our lives on the prime material plane. Delightful.~ 
END

INTERJECT_COPY_TRANS2 PTAGGET 17 ptagget17
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is the course of action we must take, then. If we could do something for those enslaved here, then we should.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Sometimes I wish you'd think more about our own interests, but currently it would seem that aim is the preferable one, and that would be the way to go.~
END

INTERJECT_COPY_TRANS2 PTAGGET 27 ptagget27
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It's no more than what should have been done long ago. What of your fellow thralls now?~
END

EXTEND_BOTTOM PTAGGET 35
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~AddexperienceParty(5000)
EscapeArea()~ EXTERN Z#KOVAJ ptagget35
END

CHAIN
IF ~~ THEN Z#KOVAJ ptagget35
~I suppose it was worth it after all, to know that those who survived have been helped, to some extent. A fair deed, though it only benefitted us so much, and I wonder if it was worth it.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~All such deeds are worth it, Kova. Even if the stakes seem high initially, and even if we do lose our own lives in the process, its still worth it.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~My mind tells me that makes extremely little sense, Kiyone. Yet deep down inside me, I cannot disagree. And frankly, I don't know whether to be pleased or frightened by that realisation.~
EXIT

INTERJECT_COPY_TRANS2 RAELIS 59 raelis59
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~So all emotions run their course. A short or long road, it leads to an end.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such sentiments were never reliable to begin with, at least in most people.~
END

INTERJECT_COPY_TRANS2 RAELIS 60 raelis60
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~So all emotions run their course. A short or long road, it leads to an end.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such sentiments were never reliable to begin with, at least in most people.~
END




// Firkraag's Quest

INTERJECT_COPY_TRANS2 PALKNI05 0 palkni05-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That's strange - that may be the voice of a beast, but not the words of one...~
END

INTERJECT_COPY_TRANS2 GARREN 1 garren1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It is as I feared, that these were not monsters, but that they appear to be knights only makes the matter worse.~
= ~This bodes ill and weighs heavily on my heart, and I fear we would be undone completely were this man here not a witness to what had happened.~
END

INTERJECT_COPY_TRANS2 GARREN 7 garren7
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Though I suspect our need for his testimony and witness exceeds that of our need for rest, accepting his offer could be welcome.~
END

INTERJECT_COPY_TRANS2 GARREN 24 garren24
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Even if we were not framed by this Lord Jierdan, and even if Garren had not helped us, I would see that the injustice done to him is redressed.~
= ~When this matter of ours is laid to rest, let us do what we can to restore to him what honor he has lost to treachery. It's the least we could do for a man so kind to us, even if his motivations are unclear.~
END

INTERJECT_COPY_TRANS2 GARREN 25 garren25
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Even if we were not framed by this Lord Firkraag, and even if Garren had not helped us, I would see that the injustice done to him is redressed.~
= ~When this matter of ours is laid to rest, let us do what we can to restore to him what honor he has lost to treachery. It's the least we could do for a man so kind to us, even if his motivations are unclear.~
END

INTERJECT_COPY_TRANS2 GARREN 35 garren35
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This gross injustice must not be left unresolved. Let us make haste to set matters aright for this man.~
END

INTERJECT_COPY_TRANS2 GARREN 36 garren36
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This gross injustice must not be left unresolved. Let us make haste to set matters aright for this man.~
END

INTERJECT_COPY_TRANS2 GARREN 37 garren37
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This gross injustice must not be left unresolved. Let us make haste to set matters aright for this man.~
END

EXTEND_BOTTOM GARJUM 5
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
DO ~GiveItem("misc6u",Player1) 
EscapeArea()~ EXTERN Z#KIYOJ firkchal
END

CHAIN
IF ~~ THEN Z#KIYOJ firkchal
~The temerity of this Firkraag astounds me. We must face this evil creature and put an end to him.~
== Z#KIYOJ IF ~InParty("Kova") Global("gotaskabtfirk", "GLOBAL", 0)~ THEN
~This note speaks of the Northeast, but I think there's nothing much there except some ruins. You've been in this region a while, Kova - think it is likely that this Firkraag may be found within?~
END
IF ~!Global("KKJoin", "GLOBAL", 1)~ THEN EXTERN Z#KIYOJ firkchalfindkova
IF ~Global("gotaskabtfirk", "GLOBAL", 1)~ THEN EXIT
IF ~Global("KKJoin", "GLOBAL", 1) !InParty("Kova")~ THEN EXIT
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~SetGlobal("gotaskabtfirk", "GLOBAL", 1)~ EXTERN Z#KOVAJ kvabtfirk

CHAIN
IF ~~ THEN Z#KIYOJ firkchalfindkova
~Maybe if we can locate Kova and hold him for long enough to get information out of him, we might have some aid against this villain.~
EXIT

CHAIN 
IF ~AreaCheck("AR1200")
InParty("Kova")
!RealGlobalTimerNotExpired("askabtfirk","GLOBAL")
Global("KKJoin", "GLOBAL", 1)
Global("gotaskabtfirk", "GLOBAL", 0)
!Dead("firrak01")
Global("Kidnap", "GLOBAL", 3)~ THEN Z#KIYOJ askabtfirk
~There's a recent troubling matter that we came across here, Kova, and I'd appreciate what information you can provide about what has been going on in here.~
= ~A man who lives close by, Garren by name, has had his child kidnapped by one Jierdan Firkraag. This Firkraag is also the same person who has framed <CHARNAME> for the murders of some knights, and is the reigning lord of this land.~
DO ~SetGlobal("gotaskabtfirk", "GLOBAL", 1)~
== Z#KOVAJ
~And I suppose you must have enough evidence for you to state plainly that this Firkraag is indeed the culprit.~
== Z#KIYOJ
~Do not mock me, Kova. I have seen enough to have strong reason to believe him the culprit, even in the absence of more definitive evidence. Speak what you know of him, if anything.~
== Z#KOVAJ
~I have observed this Garren and his child about, and they appear kind people who would have few enemies. But as for this Firkraag, I have only heard his name before I left Athkatla, and not after.~
= ~These hills are wild, where bandits, orcs and other monsters prowl freely, and scarcely would there appear to be any reigning lord of these lands.~
== Z#KIYOJ
~It appears that way to me as well, though why it is left this way I do not know. And do you know anything of the ruins northeast of this area? We have been told Firkraag might be somewhere about there.~
EXTERN Z#KOVAJ kvabtfirk

CHAIN 
IF ~~ THEN Z#KOVAJ kvabtfirk
~A noble staying in those ruins? That would be a strange thing indeed. No, all that I've seen of it are orcs and their ilk milling about it, and they seem to be the most organised as any I've ever seen. And worse... I fear.~
== Z#KIYOJ
~Something that would bring fear into you? I find that thought hard to believe.~
== Z#KOVAJ
~I thought I saw a great winged beast descend upon those ruins about one month ago, in the dead of the night. I can only guess what it was, and the fear it gave me was as real as any I've ever felt in my life, so much so that I started north after that.~ 
= ~If I were you, I would not venture into that place. More than likely it is a trap to mislead us to our deaths, than a place to house a noble and a captured child.~
== Z#KIYOJ
~If it is a den of filthy beasts as you claim it to be, then we should proceed with caution to eradicate their menace. Firkraag and the child might not be there, but at least we would have accomplished something, and there may be clues leading us onward.~
== Z#KOVAJ
~Sometimes, I think you're delightfully mad, Kiyone. But then again, there is nothing much left for me to lose, so I may as well see what good I can do with what little of my life I have left.~
EXIT

INTERJECT_COPY_TRANS2 FIRORC01 0 firorc01-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Looks like at least we know Firkraag is somewhere about here, unlikely place though it seems.~
== FIRORC01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Hrah! You go meet Firkraag, then you be sorry.~
END

// Werewolf Ambush

INTERJECT_COPY_TRANS2 FIRWLF01 2 firwlf01-2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I am certain these people are not entirely truthful, and do not mean us well. I would think twice about heeding his words if I were you.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
~Whoever these people say they are, I am certain they do not mean us well. Either they are in league with the orcs, or something else. Let us be wary.~
END 

// GarKid

INTERJECT_COPY_TRANS2 GARKID01 28 garkid01-28
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The child's fear is almost palpable. I wonder what might inspire such strong fear.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kova")~ THEN
~Still, our course is set and we proceed onward. We may not know what Firkraag has in store for us, but we can steel ourselves for the battle ahead.~
END

INTERJECT_COPY_TRANS2 GARKID02 27 garkid02-27
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~The child's fear is almost palpable. I wonder what might inspire such strong fear.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kova")~ THEN
~Still, our course is set and we proceed onward. We may not know what Firkraag has in store for us, but we can steel ourselves for the battle ahead.~
END

// Firkraag

INTERJECT_COPY_TRANS2 FIRKRA02 0 firkra02-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~What in the world...?!~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think now would be a good time to get going.~
END

INTERJECT_COPY_TRANS2 FIRKRA02 15 firkra02-15
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~While we may not be able to match you, creature, we will rescue Garren's child. Let you not doubt that for even a moment.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Wizards, we can deal with. How about we just hurry on our way to save the child?~
END
 
INTERJECT_COPY_TRANS2 FIRKRA02 21 firkra02-21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is not the end of it, foul beast! We will return, someday, and smite you for your evil.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Yes, I suppose it will come to that, eventually. I wouldn't mind, so long as I'm not involved when it happens. Though it doesn't do me all that much good, I still place some value on my continued breathing.~
END

INTERJECT_COPY_TRANS2 FIRMAG01 0 firmag01-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~The things people will stoop to doing in return for rewards. I pity this man as much as I despise him.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~More reason to despise than to pity. He chose his path, just as others have. And there are worse things yet that men have done, and will do, for money.~
END



// Samia

INTERJECT_COPY_TRANS2 SAMIA 12 samia12
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I doubt there are any powers that only block those of specific heritage, based on what I know of magic. It'd be closer to truth to assume this woman is lying, and we should leave to get on with our task.~
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Kova")~ THEN
~A barrier that prevents her entry yet one we could pass beyond? A little far-fetched, and I suspect its more to do with letting us stand in while she cowardly watches our efforts.~
END

INTERJECT_COPY_TRANS2 SAMIA 24 samia24
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Why am I not surprised? Let's get on with this unpleasant business then. Much as I dislike killing I'd prefer someone else's blood spilt rather than my own.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You treacherous creature, it's just as well you have exposed yourself, that I may in certainty give your mercenary tendencies what it justly deserves.~
END



// Mae'var's Guild

INTERJECT_COPY_TRANS2 RENAL 24 renal24
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Intrigue among thieves does not concern us, <CHARNAME>. Even if there is money to be made out of this, it wouldn't be worth it to stoop to skulduggery.~
END

CHAIN
IF ~AreaCheck("AR0300")
InParty("Kiyone")
Global("RenalJob","GLOBAL",1)
Global("postrenal", "LOCALS", 0)~ THEN Z#KIYOJ renjob1
~At least we are pitted against another thief, I suppose. Better than being up against honest folk.~
DO ~SetGlobal("postrenal", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I've seen Mae'Var about, for he used to serve under my Guildmaster Seida, prior to becoming a Guildmaster within the Shadow Thieves. We might get some information from documents of his.~ 
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Good then. I am also reminded, that Renal himself should also be a fine source of information once we get on the right side of him.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Though I doubt such information will come cheaply.~
== Z#KIYOJ IF ~OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
~This Renal, outlaw though he is, might also be a fine source of information once we get on the right side of him.~
EXIT

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedTo(0)
InParty("Kova")
See("Kova")~ THEN MAEVAR MaeSeeKova0
~Hello then, I certainly hope you've got a reason to be bothering me, because I'm quite busy, as you can see. Ah, poor Lin passed out. I've a few minutes to spare then. Who are you and why shouldn't I kill you?~
= ~Wait, I do know you, or one of you, rather. Kova, isn't it? Seida would be most pleased if I pay you back well on his behalf.~
EXTERN Z#KOVAJ MaeSeeMe

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedToGT(0)
InParty("Kova")
See("Kova")~ THEN MAEVAR MaeSeeKova1
~Hmm, that chap with you looks familiar. Kova, isn't it? Seida would be most pleased if I pay you back well on his behalf.~
EXTERN Z#KOVAJ MaeSeeMe

CHAIN
IF ~~ THEN Z#KOVAJ MaeSeeMe
~You're not one of his men now, Mae'Var. You don't have to do what he wants.~
DO ~SetGlobal("MaeSeeKova","LOCALS",1)~
== MAEVAR ~Oh but in this case, I want to. I've never liked you much anyway, and I'm sure the feeling is at least mutual. And even if I did, your scalp is worth quite a bit now, which is quite a surprise for a pansy like you.~
= ~Then, of course, it follows that those with you can't be Renal's own men. Spies, probably. No matter, I'll just kill you all.~
DO ~Shout(89) Enemy()~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Then it will be a pleasure to rid this world of the stain of your filth.~
EXIT

INTERJECT_COPY_TRANS2 EDWIN 8 edwin8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is a lawless act and unrighteous, even though the target can scarce be innocent of ill deeds, and it makes me ill to think I should have a hand in this.~
END

CHAIN
IF ~GlobalGT("EdwinJob","GLOBAL",0)
AreaCheck("AR0300")
Global("sayedwin", "LOCALS", 0)~ THEN Z#KOVAJ notlikeedwin
~I do not trust that Red Wizard, and I am uneasy serving his cause. Still, he does not seem as part of Mae'Var's guild, and might serve our interests if we make it worth his while.~
DO ~SetGlobal("sayedwin", "LOCALS", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
~Well, at least you are right at home in all of this. How much I loathe serving any one of these lawless cretins, you can't even begin to imagine... still, I look forward to seeing that Mae'Var dead.~
EXIT

INTERJECT_COPY_TRANS2 EDWIN 26 edwin26
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I question this man's motivations, but for now it might serve if he joined us.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think it better that we meet him elsewhere after wrapping up this business. If he could do this to Mae'Var he could well do it to us.~
END

INTERJECT_COPY_TRANS2 RENAL 52 renal52
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Despite his murky background, I fear we have lost one who might otherwise have been of great assistance to my case.~
= ~Still, I suppose there is little for it but to continue onward as we may.~
END

EXTEND_BOTTOM EMBARL 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ embarl0
END

CHAIN
IF ~~ THEN Z#KIYOJ embarl0
~Calm yourself, we don't wish to kill you unless you attack us first. What's this misunderstanding about?~
EXTERN EMBARL 2

INTERJECT_COPY_TRANS2 EMBARL 3 embarl3
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Interesting information, but probably not what Renal wants. This man may be deserving of death for other crimes, but I am reluctant to strike him down simply because Mae'Var tells us to.~
END

CHAIN
IF ~PartyHasItem("MISC4U")
Global("KvEmbarl", "LOCALS", 0)
!Dead("Embarl")
!InMyArea("Embarl")~ THEN Z#KOVAJ embarlok
~Yet another escapes grief at the hands of the Shadow Thieves, and I am grateful. I was worried it would come to bloodshed, yet if I were to speak up and he recognise me we would almost have to be compelled to kill him.~ 
DO ~SetGlobal("KvEmbarl", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Though, who would have thought one such as lady Kiyone would be willing to let a thief off unpunished?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~And you should have a rather more pleasant way of communicating your compliments.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~My apologies, I will try harder next time. If I remember, of course.~
EXIT

INTERJECT_COPY_TRANS2 RENAL 53 renal53
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Despite his murky background, I fear we have lost one who might otherwise have been of great assistance to my case.~
= ~Still, I suppose there is little for it but to continue onward as we may.~
END

INTERJECT_COPY_TRANS2 RENAL 63 renal63
== Z#KIYOJ IF ~InParty("Kiyone") ~ THEN
~To consider such an offer is most unbecoming. I can just tolerate having a hand in this so far, but to be openly linked to a guildmaster of the Shadow Thieves is something else entirely.~
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
~Don't be too hasty to judge. Better that one of us should have the mastery than it fall to a stranger that could well be worse than Mae'Var.~
END

INTERJECT_COPY_TRANS2 RENAL 69 renal69
== Z#KIYOJ IF ~InParty("Kiyone") 
!InParty("Kova")
Global("KKJoin", "GLOBAL", 0)~ THEN
~Do as you will, <CHARNAME>, and I'll do as I will. I will abide no more in your company - it has become a stench to me.~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)
ReputationInc(-2)~ 
END

// INTERJECT_COPY_TRANS2 SHTHLT01 shthlt01-44 // Goshan kill pple 44 to 47 Option 1
// INTERJECT_COPY_TRANS2 SHTHLT01 shthlt01-44 // Morsa Slaves pple 96 to 99 Option 1

/*
== Z#KOVAJ ~I'm sorry, but I cannot continue with one who condones such misdeeds. Good day, <CHARNAME>, we will not meet again.~
== Z#KIYOJ ~This act you have sanctioned is an affront to all that is just. In memory of our time together, I will not lift my hand against you, but our travels together end today, forever. If we meet again it will be as enemies.~
*/



// Slaver Compound

EXTEND_BOTTOM HLSION 1
IF ~Global("HeardOfSlaveLords","GLOBAL",0)
InParty("Kiyone")~ THEN EXTERN Z#KIYOJ hlsion1
END

CHAIN
IF ~~ THEN Z#KIYOJ hlsion1
~I apologise, good sir. We did not intend to trespass on your grounds.~
EXTERN HLSION 2

CHAIN
IF ~AreaCheck("AR0906")
!ActuallyInCombat()
Global("HeardOfSlaveLords","GLOBAL",0)
Global("TalkedToHlsion","GLOBAL",4)~ THEN Z#KIYOJ slavecomp1
~Whoever owns this place is certainly powerful and not lacking in aggression nor malice when it comes to being left undisturbed.~
DO ~SetGlobal("sionplace", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~And probably not lacking in deeds ill and evil.~
== Z#KIYO IF ~InParty("Kova") InMyArea("Kova")~ THEN
~We have no evidence on that matter yet.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think we should just strike first before they've had the chance to do ill to others. Assuming that they haven't done so already, which would be quite a stretch.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Well, we'll just have to see what comes, as <CHARNAME> chooses to direct us.~
EXIT



// Cromwell

CHAIN
IF WEIGHT #-1 ~InParty("Kova") InMyArea("Kova")
Global("KKFindCrom", "GLOBAL", 1)~ THEN WSMITH01 KKFindCrom
~Good to see ye back in me forge, it is.  Be there something that ye need?~
== WSMITH01 IF ~Global("GreetCrom", "GLOBAL", 0)~ THEN
~Well, if it isn't the boy who has some fine eye for good work, and fine coin to pay it for it too.~
DO ~SetGlobal("GreetCrom", "GLOBAL", 1)~
= ~How's it been with ye, lad? That blade and those leather robes of yours holding up fine?~
== Z#KOVAJ 
~Yes, master Cromwell. I urgently need your help regarding a case of mine.~
DO ~SetGlobal("KKFindCrom", "GLOBAL", 2)~
== WSMITH01
~That so, lad? Forgework is me strength, and with the law and all tis best to look elsewhere.~
== Z#KOVAJ 
~We just need to know, if anyone else came and you forged him a blade like mine.~
== WSMITH01
~Give me a while to be thinking, me memory's not as good as it once was, not about matters outside of the forge.~
= ~Aye, remember now. Was someone coming in with a large number of weapons, all kinds of them, asking for me to make something just like that blade of yours.~
= ~Only, unlike ye, who be knowing what ye want it to be doing. he didn't seem to know what it was supposed to do, just how it looked like. Probably saw yours and wanted one just like it.~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)
Global("YoshiKnowCrom", "GLOBAL", 0)~ THEN
~He's definitely not the only one.~
DO ~SetGlobal("YoshiKnowCrom", "GLOBAL", 1)~ 
== Z#KOVAJ 
~Yes, that would be the person. How did he look like?~
== WSMITH01 
~Don't rightly know, me lad. He was all covered up in his clothes and all, couldn't even see his face if I wanted to. Paid right good gold though. Tall fellow though, even compared to you people. Probably human.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~What else was there about him? Did he leave any clues, anything special about him?~
== WSMITH01 
~Not much more to tell ye, he didn't leave much behind apart from his gold. Perhaps he took care not to, but I've learnt it don't usually pay to ask too much of me customers.~
== Z#KOVAJ 
~Damn it...~
= ~Thank you Master Cromwell, I'm sorry to have troubled you with such matters.~
== WSMITH01
~Not a problem, me lad. All the best with whatever you're looking for.~
EXIT

EXTEND_BOTTOM WSMITH01 58 
IF ~InParty("Yoshimo") InMyArea("Yoshimo") 
Global("BKovaYoshi","GLOBAL",3)
InParty("Kova") InMyArea("Kova")
Global("YoshiKnowCrom", "GLOBAL", 0)~ EXTERN YOSHJ YoshiKvCrom
END

CHAIN
IF ~~ THEN YOSHJ YoshiKvCrom
~So, my friend, this must be the one who helped you with your weapon.~
DO ~SetGlobal("YoshiKnowCrom", "GLOBAL", 1)~
== Z#KOVAJ
~Indeed he is, Yoshimo. He should be able to help you with yours as well.~
== YOSHJ
~Excuse me, do you suppose you might be able to help Yoshimo with improving his blade?~ 
COPY_TRANS WSMITH01 58
// EXTERN WSMITH01 13

INTERJECT_COPY_TRANS2 WSMITH01 0 wsmith01-0
== WSMITH01 IF ~InParty("Kova") InMyArea("Kova")
Global("GreetCrom", "GLOBAL", 0)~ THEN 
~Well, if it isn't the soft footed lad who has some fine eye for good work, and fine coin to pay it for it too.~
= ~How's it been with ye, boy? That blade and those leather robes of yours holding up fine?~
== Z#KOVAJ
~Fine enough to keep me breathing, master Cromwell. And that's more than good enough for me.~
== WSMITH01 
~Glad to hear it, lad. Who is this with ye here? Something I can do for <HIMHER>?~
DO ~SetGlobal("GreetCrom", "GLOBAL", 1)~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
~So, my friend, this must be the one who helped you with your weapon.~
DO ~SetGlobal("YoshiKnowCrom", "GLOBAL", 1)~
== Z#KOVAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
~Indeed he is, Yoshimo. He should be able to help you with yours as well.~
END

INTERJECT_COPY_TRANS2 WSMITH01 58 wsmith01-58
== WSMITH01 IF ~InParty("Kova") 
InMyArea("Kova")
Global("GreetCrom", "GLOBAL", 0)~ THEN 
~Well, I see ye've gone and got this lad here with ye, eh? He has some fine eye for good work, and coin to pay it for it too.~
= ~How's it been with ye, boy? That blade and those leather robes of yours holding up fine?~
== Z#KOVAJ
~Fine enough to keep me breathing, master Cromwell. And that's more than good enough for me.~
== WSMITH01 
~Glad to hear it, lad. Now, something ye be wanting me for, <GABBER>?~
DO ~SetGlobal("GreetCrom", "GLOBAL", 1)~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
~So, my friend, this must be the one who helped you with your weapon.~
DO ~SetGlobal("YoshiKnowCrom", "GLOBAL", 1)~
== Z#KOVAJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") Global("BKovaYoshi","GLOBAL",3)~
~Indeed he is, Yoshimo. And he should be able to help you with yours as well.~
END



// Fallen Paladins

// Ryan Trawl
INTERJECT_COPY_TRANS2 KAYL2 6 kayl2-6
== Z#KOVAJ IF ~InParty("Kova") ~ THEN 
~The Order certainly has resources enough to handle most difficulties. Let us turn to someone else more needy.~
== Z#KIYOJ IF ~InParty("Kiyone") InParty("Kova") ~ THEN 
~Say not so. If the righteous need help, all the more we should provide it.~
== Z#KOVAJ IF ~InParty("Kiyone") InParty("Kova") ~ THEN 
~I think aid should go where it is more urgently needed. Still, it is up to <CHARNAME> to decide.~
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Kova") ~ THEN 
~This is a rare opportunity to serve the Order of the Radiant Heart, and a great honor indeed. I hope we do not pass up this chance.~
END

INTERJECT_COPY_TRANS2 KAYL2 14 kayl14
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
~This task does not sit well with me. We are to execute men simply because they fail to live up to some prescribed standard set by the Order?~
= ~And for no reason other than to preserve the name and honor of the Order? That strikes me as more evil than robbing and killing someone to spend the loot on bread.~
= ~Though, if what he says about their smuggling slaves and extorting from the poor is true, then it would be right to do so. Let us not be too quick to draw our blades on these people.~
END

INTERJECT_COPY_TRANS2 KAYL2 18 kayl18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I suppose I should be honored to have served, but this whole episode does leave a slightly bitter taste on my tongue.~
= ~Thus I am reminded that no matter how high we rise, we can never rise above the possibility of falling from truth. It is something to reflect on within myself.~
END

INTERJECT_COPY_TRANS2 KAYPAL02 6 kaypal02-6
== Z#KOVAJ IF ~InParty("Kova") ~ THEN
~This man seems yet a good soul. I would that we will not come to blows. Perhaps we can dissuade him from remaining in his current company.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
~Though he has fallen I think there is yet a good spirit in him, though it is far from perfect. If possible, let us find a way to have him leave this band he keeps company with.~
END

// Anarg
/* overkill
INTERJECT_COPY_TRANS2 KAYPAL01 0 kaypal01-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We have changed our minds and decided not to join you.~
== KAYPAL01 IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You dare refuse my offer? But wait, you are not the voice of this band.~
= ~Well, the decision lies with you, <CHARNAME>. Will you join or will you test me?~
END
*/






//Buried Alive

// Tirdir
INTERJECT_COPY_TRANS2 TIRDIR 0 tirdir0
== Z#KOVAJ IF ~InParty("Kova") ~ THEN 
~A most unpleasant fate, done by a most unpleasant hand. Whose owner I would happily put paid to.~
== Z#KIYOJ IF ~InParty("Kiyone") !InParty("Kova") ~ THEN 
~The perpetrator of such a misdeed must be found and held accountable for this, if more lives are not to be put in danger.~
END

// See Camitis Running Away
CHAIN
IF ~See("Camitis")
AreaCheck("AR0500")
Global("Camitis", "LOCALS", 0)~ THEN Z#KIYOJ Camitis
~Don't even think of going anywhere, gentlemen. Lay aside your weapons or you will not live to see the judgment of the courts.~
DO ~SetGlobal("Camitis", "LOCALS", 1)~
== CAMITIS
~Ha, ye be thinking to stop us lass? Let's see how good you be looking with my axe in ye guts.~
DO ~Enemy()~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~You know, you needn't always give them a chance to stand down their arms.~
EXIT

// Elgea
INTERJECT_COPY_TRANS2 Elgea 0 elgea0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Bah, what charity I might have felt for her is lost when this noble pig opens her mouth.~
== Z#KIYOJ IF ~InParty("Kiyone") InParty("Kova") InMyArea("Kova") InMyArea("Kiyone")~ THEN
~She probably lost her courtesy from her ordeal. In any case, regardless of her tone, it is fitting that we free her.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
~Though she hardly knows much courtesy, perhaps her ordeal has taken it from her. Let us do as is right and free her.~
END

EXTEND_BOTTOM ELGEA 6 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ elgea6
END

CHAIN
IF ~~ THEN Z#KIYOJ elgea6
~What we are doing is most wrong and unacceptable, <CHARNAME>. If you aren't upstanding enough to do what is right, I shall have to do it for you.~
= ~There, you are free to go, my lady.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
== ELGEA 
~Humph, I do not know who you are, but you'd do best to watch your company.~
EXTERN elgea 10







// Kangaxx's Skull
INTERJECT_COPY_TRANS2 HLSKULL 1 hlskull1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~There is a great evil in this place. Please, <CHARNAME>, let us quickly depart from here at once!~ 
END

INTERJECT_COPY_TRANS2 HLSKULL 7 hlskull7
== Z#KOVAJ IF ~InParty("Kova") ~ THEN 
~It is well we did not help this... thing. Though its evil cannot yet extend to us, the sooner we are away, the better.~
END

INTERJECT_COPY_TRANS2 HLSKULL 10 hlskull10
== Z#KOVAJ IF ~InParty("Kova") ~ THEN 
~There is something very very wrong here, A great power and a great malice... I do not think it wise to fulfil the request of this... thing.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN 
~We do not need to keep our word to being of such great evil. I would that we leave this place and never return.~
END

EXTEND_BOTTOM hlskull 14 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ hlskull14
END

CHAIN
IF ~~ THEN Z#KIYOJ hlskull14
~No, stop!~
== HLSKULL
~Too late, mortals!~
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
~May the Gods preserve us...~
EXIT




// Twisted Rune Area
CHAIN 
IF ~AreaCheck("AR1008")
Global("twistedrune", "LOCALS", 0)~ THEN Z#KOVAJ twistedrune
~This sign on the ground seems familiar. Is it not that of Mystra? Yet, this place strikes dread into my heart.~
DO ~SetGlobal("twistedrune", "LOCALS", 1)~
EXIT

// Shangalar
EXTEND_BOTTOM HLSHANG 4
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554]) Wait(1)
CreateVisualEffect("SPFLSRIN",[962.554])
ActionOverride("hlshang", JumpToPoint([532.744]) )
SetGlobal("ShangalarMove","AR1008",1)~
EXTERN Z#KOVAJ hlshang47
END

EXTEND_BOTTOM HLSHANG 7
IF ~InParty("Kova") InMyArea("Kova")~ THEN DO ~CreateVisualEffect("SPHEALIN",[962.554]) Wait(1)
CreateVisualEffect("SPFLSRIN",[962.554])
ActionOverride("hlshang", JumpToPoint([532.744]) )
SetGlobal("ShangalarMove","AR1008",1)~
EXTERN Z#KOVAJ hlshang47
END

CHAIN
IF ~~ THEN Z#KOVAJ hlshang47
~The Twisted Rune... can such ancient, whispered things be more than a distant tale of evil?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~If it is, then let us put an end to it this day, or die in the attempt.~
EXIT




// Enter Illithid Lair

CHAIN
IF ~AreaCheck("AR0711")
Global("SewerIll", "LOCALS", 0)
Dead("MINDAL01")
!ActuallyInCombat()~ THEN Z#KIYOJ sewerill2
~That creature spoke about an army, probably of these vicious beasts. I shudder to think of what might have happened if he had not been stopped.~
DO ~SetGlobal("SewerIll", "LOCALS", 2)~
EXIT


// Den of Seven Vales
INTERJECT_COPY_TRANS2 SEVPAT01 1 sevpat01-1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I think it might be a good idea for us to leave before things get needlessly unpleasant.~
END


// Kamir
INTERJECT_COPY_TRANS2 KAMIR 13 kamir13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~He is punished justly for failing his vow. Still I would that there was some way to help him.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~How burdensome the weight of emotions. I hope I never wind up in such a position.~
END

INTERJECT_COPY_TRANS2 KAMIR 23 kamir23
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I am glad we found a way to help them both.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~This is a good and pleasing deed. Meaningless, perhaps, but heartwarming nonetheless.~
END

// Arenthis
INTERJECT_COPY_TRANS2 ARENTHIS 4 arenthis4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Such callousness as you have shown, <CHARNAME>, hardly seems appropriate.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
END

INTERJECT_COPY_TRANS2 ARENTHIS 9 arenthis9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~I hope we can yet find some way to help this child. It would not do to leave her this way.~
== Z#KOVAJ IF ~InParty("Kova") Global("TalkedToKamir","GLOBAL",1)~ THEN 
~Perhaps there might be a way, if we tell him about the paladin we spoke to earlier.~
END






// Kids Adventuring
INTERJECT_COPY_TRANS2 UHKID01 3 uhkid01-3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Really, why shouldn't we help? It sounds like something interesting to do.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Yet probably not the best. We want kids to stay out of trouble, not to run off and get killed somewhere.~
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone") GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~And to think I thought you'd make a good parent. Still, the choice is up to <CHARNAME>.~
END




// Chicken
EXTEND_BOTTOM GEMFAR02 6 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ gemfar02-6
END

CHAIN
IF ~~ THEN Z#KIYOJ gemfar02-6
~Calm down, good sir. We've no wish to take anything from you that would be from your daughter, that you may have something to remember her by.~
EXTERN GEMFAR02 9

EXTEND_BOTTOM GEMFAR02 9 
IF ~InParty("Kiyone") PartyGoldGT(99)~ THEN DO ~TakePartyGold(100) 
DestroyGold(100)~ EXTERN Z#KIYOJ gemfar02-91
IF ~InParty("Kiyone") PartyGoldGT(49) PartyGoldLT(100)~ THEN DO ~TakePartyGold(50) 
DestroyGold(50)~ EXTERN Z#KIYOJ gemfar02-92
END

CHAIN 
IF ~~ THEN Z#KIYOJ gemfar02-91
~Here, sir. This amount of gold should be more than fitting for the momento of your daughter.~
EXTERN GEMFAR02 14

CHAIN 
IF ~~ THEN Z#KIYOJ gemfar02-92
~Here, sir. We don't have much, but I hope this is at least enough for the momento of your daughter.~
EXTERN GEMFAR02 13







// Harpers and Xzar

// Renfeld
INTERJECT_COPY_TRANS2 renfeld 8 renfeld8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~It is not right to leave a man this way when we could lift our hand to help.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~I cannot help but think ill of you if you will not even do what you can to assist this man.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
END

EXTEND_BOTTOM renfeld 6
IF  ~InParty("Kiyone") InMyArea("Kiyone")~ THEN DO ~GiveItemCreate("MISC5F",LastTalkedToBy,0,0,0) // Renfeld's Body
SetGlobalTimer("RenfeldDeath","GLOBAL",TEN_DAYS)
ActionOverride(" ", DestroySelf() )~ EXTERN Z#KIYOJ renfeld6
END

CHAIN 
IF ~~ THEN Z#KIYOJ renfeld6
~Let us make haste then, that we may make it on time for this man's cause.~
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
~Harpers, here, right in the middle of the Shadow Thief bastions? This is amusing news indeed, though probably not new to the higher level operatives.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Whoever the Harpers would make trouble for probably means ill to the world at large. It would be best not to assist him in this matter.~
END

INTERJECT_COPY_TRANS2 LYROS 19 lyros19
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This decision puts me ill at ease, but it is your choice, and I will abide by it.~
END

// Lusette
INTERJECT_COPY_TRANS2 LUSETTE 4 lusette4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Interesting. I shall remember this means of achieving an end. If for no other reason other than to guard myself against such.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~While I do not appreciate being duped, nor being left in the dark as to why he was killed, he probably deserved it, and it is quite an eye-opener to see how Harper justice is done.~
END





// Wellyn
INTERJECT_COPY_TRANS2 wellyn 8 wellyn8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is such a heartbreaking thing to learn of. I hope we can get him his bear.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I thought you didn't like feeling so much for others.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~He was just a little boy. How could I not feel something?~
END

EXTEND_BOTTOM wellyn 9 
IF ~InParty("Kiyone") PartyHasItem("MISC5L")~ THEN EXTERN Z#KIYOJ wellyn9
END

CHAIN 
IF ~~ THEN Z#KIYOJ wellyn9
~Yes, my dear Wellyn. Littleman has missed you. Now its time to go to bed.~
== WELLYN
~You have him!  You have him!  Oh, thank you, mama, thank you!  I can go to sleep, now!  Thank you!!~
DO ~AddJournalEntry(47705, QUEST_DONE)
EraseJournalEntry(34337) 
AddexperienceParty(15500)
TakePartyItem("MISC5L") // Littleman The Stuffed Bear
SetGlobal("WellynPeace","GLOBAL",1)
MoveToPointNoInterrupt([1618.1760])
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()~
== Z#KIYOJ
~Sleep tight, my boy.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Are you all right?~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I'm fine, just give me a moment alone.~
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
~Are you Llynis?~
== LLYNIS
~Why, yes. How did ye know?~
= ~That's a terribly frightenin` look ye be givin' me, lady...~
== Z#KIYOJ
~Before I continue, I would just like to ask - what ever possessed you to kill a small helpless boy? Why did you ever do so a thing?~
== LLYNIS
~I... well...~
== Z#KIYOJ
~Why? Was it to take away his stuffed toy?~
== LLYNIS
~Bah, I'll just kill ye all and be done with it!~
DO ~Enemy()~
== Z#KIYOJ
~Then, in the name of all that is good, die! Die and burn forever!~
EXIT



// Rumar
EXTEND_BOTTOM RUMAR 11 
IF ~InParty("Kova") 
GlobalLT("KKRomance", "GLOBAL",2)~ THEN EXTERN RUMAR rumar11
END

CHAIN
IF ~~ THEN RUMAR rumar11
~Oh, darling!  I'm so sorry!  Let's go home, alright, sweetums?~
DO ~SetGlobal("RumarDidSpeak","AR0406",1)
ActionOverride("Tiana",EscapeAreaObject("Tran0400"))
EscapeAreaObject("Tran0400")~ 
== Z#KOVAJ 
~Such a futile thing is love. It fights for, dies for, and is scarce remembered. Truly an emotion for the weak of mind and heart. Bah!~
EXIT

EXTEND_BOTTOM RUMAR 12
IF ~InParty("Kova") 
GlobalLT("KKRomance", "GLOBAL",2)~ THEN EXTERN PRISS rumar12
END

CHAIN
IF ~~ THEN PRISS rumar12
~Sorry, nothing.  We're getting married, Rumie...NOW.~
DO ~SetGlobal("RumarDidSpeak","AR0406",1)
ActionOverride("Rumar",EscapeAreaObject("Tran0400"))
EscapeAreaObject("Tran0400")~
== Z#KOVAJ
~Such a poor futile thing it is, love. She will probably end up like the woman she just killed - fought for, died for, and forgotten. Because of love, more is the evil done.~
EXIT

// Bubbles
INTERJECT_COPY_TRANS2 Bubbles 1 bubbles1
== Z#KOVAJ IF ~InParty("Kova") 
GlobalLT("KKRomance", "GLOBAL",2)~ THEN
~Poor, unfortunate fools. Shedding their blood for the sake of love. Surely much sorrow is wrought in such useless gestures, that probably won't even serve to win what they desire.~
= ~The world would probably be better for an absence of such a weak, vexing emotion.~
END



// Bridge Murders

// Aegisfield
INTERJECT_COPY_TRANS2 INSPECT 9 inspect9
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~This is a most evil act, <CHARNAME>. Let us find out more that we may put an end to it.~
END

INTERJECT_COPY_TRANS2 INSPECT 13 inspect13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Ugh. What cruel madness would compel such a senseless act of evil?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Even the tortures I heard of among the Shadow Thieves would not have been of such a fashion, and those were means to an end.~
END

INTERJECT_COPY_TRANS2 INSPECT 29 inspect29
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I get the feeling that is not the wisest course of action for him to take.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Perhaps we ouught to hurry after him, then. Better safe than sorry.~
== INSPECT 
~I'll be on my way now.~
END


// Rampah

EXTEND_BOTTOM murdbegg 8
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ murdbegg8
END

CHAIN
IF ~~ THEN Z#KIYOJ murdbegg8
~I doubt beggars would be too choosy about the price, so long as they get something out of it.~
== Z#KOVAJ IF ~InMyArea("Kova") InParty("Kova")~ THEN
~Besides, too much money in their pocket would probably see them in a gutter with their throat slit.~
END
IF ~PartyGoldGT(99)~ THEN REPLY ~Alright, here is your hundred. Now, what is it that you found?~
DO ~GiveItem("MISC5G",LastTalkedToBy) // Exotic Hide
TakePartyGold(100)~ EXTERN MURDBEGG 12
IF ~~ THEN REPLY ~I do not have that much gold.~ EXTERN MURDBEGG 9

// Rose
INTERJECT_COPY_TRANS2 murdgirl 0 murdgirl0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Gah, such a one disgusts me.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Really? Maybe you should get to know them better, do some business perhaps - you might find yourself getting fond of them.~
END

INTERJECT_COPY_TRANS2 murdgirl 1 murdgirl1
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN 
~Gah, such a one disgusts me.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~Really? Maybe you should get to know them better, do some business perhaps - you might find yourself getting fond of them.~
END

INTERJECT_COPY_TRANS2 murdgirl 24 murdgirl24
== Z#KIYOJ IF ~InParty("Kiyone") 
Global("MerchantHide","GLOBAL",1)~ THEN
~Well, that about clinches it, then. Now all that is left is to bring the vile, murdering tanner to justice.~
== Z#KIYOJ IF ~InParty("Kiyone")
!Global("MerchantHide","GLOBAL",1)~ THEN
~Well, that was helpful. Still, we can't be too sure - a little more evidence should clinch it.~
END

INTERJECT_COPY_TRANS2 murdgirl 25 murdgirl25
== Z#KIYOJ IF ~InParty("Kiyone") 
Global("MerchantHide","GLOBAL",1)~ THEN
~Well, that about clinches it, then. Now all that is left is to bring the vile, murdering tanner to justice.~
== Z#KIYOJ IF ~InParty("Kiyone")
!Global("MerchantHide","GLOBAL",1)~ THEN
~Well, that was helpful. Still, we can't be too sure - a little more evidence should clinch it.~
END

// Bel
INTERJECT_COPY_TRANS2 merchant 6 merchant6
== Z#KIYOJ IF ~InParty("Kiyone") 
Global("TalkedToHooker2","GLOBAL",1)~ THEN
~Well, that about clinches it, then. Now all that is left is to bring the vile, murdering tanner to justice.~
== Z#KIYOJ IF ~InParty("Kiyone") 
!Global("TalkedToHooker2","GLOBAL",1)~ THEN
~Well, that was helpful, and now we have a name of a suspect. Still, we can't be too sure - a little more evidence should clinch it, if he is truly the suspect.~
END

// Enter Den
CHAIN
IF ~AreaCheck("AR0502")
Global("tannerden", "LOCALS", 0)~ THEN Z#KIYOJ tannerden
~This place sickens me with the stench of death. Let us make haste from here.~
DO ~SetGlobal("tannerden", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~There are probably traps in here though, to see that we don't quite catch up with our quarry.~
EXIT






// Acorns
INTERJECT_COPY_TRANS2 IDRYAD1 13 idryad13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A fitting deed. Though I do not know how you came by such, and though it may mean little to most mortals, such a deed is praiseworthy still.~
END

// Jermien
INTERJECT_COPY_TRANS2 JUGJER01 2 jugjer01-2
== Z#KOVAJ IF ~InParty("Kova") Global("AddRayic", "GLOBAL", 2)~ THEN
~Jermien? If so, this is the wizard with the information we need. Still, I doubt he'd be willing to just give it to us.~ 
= ~If possible, we should try to help him should he need anything - he might prove grateful enough to be of assistance.~
END

// Darsidian

INTERJECT_COPY_TRANS2 TRSKIN06 5 trskin06-5
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~The cause he serves rings true, <CHARNAME>, so let us aid him if we can.~
END


INTERJECT_COPY_TRANS2 TRSKIN06 21 trskin06-21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That's strange, his wounds do not seem all that grievous to be unable to handle an unconscious enemy like that.~
END

INTERJECT_COPY_TRANS2 TRSKIN01 7 trskin01-7
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~A worthy plan befitting such vile minds. I hope we do not leave this girl to suffer for it.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Then let us do what we may to help cleanse her of the taint of darkness.~
END

INTERJECT_COPY_TRANS2 TRSKIN01 19 trskin01-19
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~So it is done. A pleasing thing, to return to where she belongs to. How different from myself.~
== Z#KOVAJ IF ~GlobalLT("KKRomance", "GLOBAL", 2) InParty("Kova") InMyArea("Kova")~ THEN
~Still, the path of love and marriage, as emotionally driven as they are known to be, will prove a different sort of trial ahead for them both.~
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
~Though we have not met before, I'd recognise you anywhere, Neb!~
== NEB ~Why friend, who told you my name? Why such... great anger?~
== Z#KIYOJ ~All you need to know is that I will kill you for the wickedness you have done!~
== NEB ~So, my former life does come back to haunt? So be it, though I shall miss the children so. Ah yes, the children...~
== Z#KIYOJ ~Speak not of them, you thrice accursed devil!~
== NEB ~Oh but they're here with us... hee hee! You shall be very sorry, very sorry to have found me out, because now you must pay, oh yes.  A little old for my taste, but no matter!~
DO ~Enemy()~ EXIT

CHAIN
IF ~Dead("neb") 
Global("nebdie", "LOCALS", 0)
AreaCheck("AR0529")
!ActuallyInCombat()~ THEN Z#KIYOJ nebdie
~And your evil is now over. May you remain ever dead, ever damned! Burn forever in the pits of hell!~
DO ~SetGlobal("nebdie", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Kiyone, are you all right?~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I... I'm okay, I'm fine.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I've never seen you so worked up over anyone before. Especially as this was one you've never met before.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~He murdered children, Kova. For the fun of it.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Ah, I see. Still, let's keep our wits sharp. There might be more danger in here.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yes, you're right. That would be the best thing to do, for now.~
EXIT





// Umar Hills

INTERJECT_COPY_TRANS2 Delon 3 Delon3  
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It would not be fitting to leave this child in the lurch.~
END 

INTERJECT_COPY_TRANS2 Delon 4 Delon4  
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It would not be fitting to leave this child in the lurch.~
END 

EXTEND_BOTTOM Delon 6 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Delon67
END

EXTEND_BOTTOM Delon 7 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Delon67
END

CHAIN
IF ~~ THEN Z#KIYOJ Delon67
~Calm down now, my boy. We will see if we can help if only you will tell us what the problem is.~
EXTERN DELON 19

INTERJECT_COPY_TRANS2 UHMAY01 4 uhmay01-4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~This could be more serious than a few people panicking, if a ranger is lost and a band of adventurers has yet to return.~
END

INTERJECT_COPY_TRANS2 UHMAY01 18 uhmay01-18
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Mazzy Fentan? I have heard of her name somewhat. If she has not returned, then we had best be watching ourselves with care as well.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I don't believe in legends, nor am I familiar with this Mazzy character, but if it took out the previous adventurers, it is real enough to be wary of.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~And real enough to put an end to.~
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone")
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~If I didn't know you better, I'd think you were just waiting to spring that on me.~
== Z#KOVAJ IF ~InParty("Kova") InParty("Kiyone")
!GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~You simply must think that way all the time, don't you?~
END

INTERJECT_COPY_TRANS2 UHOGRE01 7 uhogre01-7
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I'm not the best at reading ogre expressions, but his uneasiness might just be genuine.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~If what they say is true, it would be a great ill to do them harm.~
END

EXTEND_BOTTOM UHMAY01 59 
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN UHMAY01 uhmay01-59
END

CHAIN
IF ~~ THEN UHMAY01 uhmay01-59
~Thank you for bringing this to my attention, my <LADYLORD>.  I will have to...go and talk to them, I suppose. We could both benefit from this.~
DO ~AddJournalEntry(19272, QUEST)
AddexperienceParty(27500)
SetGlobal("Lloydy","GLOBAL",1)
SetGlobalTimer("MakeAlliance","GLOBAL",1200)
EscapeArea()~ 
== Z#KOVAJ
~I hope things go well between him and the ogre. A little naive, perhaps, but such little things give me some heart for my own cause.~
EXIT

INTERJECT_COPY_TRANS2 UHOGRE01 22 uhogre01-22
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It is of some comfort to know that this has gone well, even for creatures such as these. Would that it would be so for own case.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~As long as I am overseeing your case, I will not rest until the truth has been brought to light.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I thank you for your words, Kiyone. Still, if that should not come to pass, it is good to have seen something to bring me some pleasure, however fleeting that may be.~
END

CHAIN
IF ~Dead("Madulf")
AreaCheck("AR1100")
!ActuallyInCombat()
Global("madulfdie", "LOCALS", 0)~ THEN Z#KOVAJ madulfdie
~Was this bloodshed necessary, <CHARNAME>? I guess we will never know if they were sincere in their expressed intentions. It seems the blood of many possibly far from evil tends to stain my hands.~
DO ~SetGlobal("madulfdie", "LOCALS", 0) 
IncrementGlobal("Break", "LOCALS", 1)~ EXIT

CHAIN
IF ~AreaCheck("AR1102")
Global("incabin", "LOCALS", 0)
!Global("villagesaved","GLOBAL",1)~ THEN Z#KIYOJ incabin
~There seem to be traces of blood about this place. Things probably didn't go too well for the former occupant.~
DO ~SetGlobal("incabin", "LOCALS", 1)~
EXIT

// Anath in Cave
INTERJECT_COPY_TRANS2 RNGWLF01 6 rngwlf01-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~The beast before us has surely killed many before, and if it does not perish against the shadows, will move to kill more. Yet something in me restrains my hand.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I feel a grief about this den, an empty sorrow about this creature, rather than primal ferocity. If you will, <CHARNAME>, I hope you let her be.~
END

// Anath's Death
EXTEND_BOTTOM RNGWLF03 1
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ rngwlf03-1
END

CHAIN
IF ~~ THEN Z#KOVAJ rngwlf03-1
~So, she has fallen. Strange that I should feel pity for such a beast.~
= ~Still, perhaps it is better that she should fall here than to have to deal with her later.~
DO ~ActionOverride("rngwlf03", Kill(Myself) )~ EXIT

// Enter Temple
CHAIN
IF ~AreaCheck("AR1401")
Global("darktemple", "LOCALS", 0)
!Global("villagesaved","GLOBAL",1)~ THEN Z#KOVAJ darktemple
~These shadows may well be employed for cover, but I feel ill at ease within them, for they seem to want to consume everything they touch.~
DO ~SetGlobal("darktemple", "LOCALS", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Indeed, they cling thickly around this place, and only light can pierce such deep shadows. Yet there is a source of light within, from long ago, but it has waned. Perhaps if harnessed properly it may see us through this.~ 
EXIT

// Mazzy
EXTEND_BOTTOM Mazzy 0 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Mazzy0
END

CHAIN
IF ~~ THEN Z#KIYOJ Mazzy0
~Could this be the Mazzy Fentan? I had thought you would look slightly different.~
== MAZZY
~Your grace, I am indeed her, a valiant servant of justice and righteousness. As you can see, I could use your assistance.~
== Z#KIYOJ
~Ah, greetings, my lady. I suppose you were here to discover the source of the evil about the land?~
== MAZZY
~Yes, it was for that reason I came, and it made itself abundantly clear when it slaughtered my companions at the Shadow Altar.~
DO ~SetGlobal("MazzyTold","GLOBAL",1)~
EXTERN MAZZY 5

EXTEND_BOTTOM Mazzy 6
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Mazzy6
END

CHAIN
IF ~~ THEN Z#KIYOJ Mazzy6
~<CHARNAME>, surely you wouldn't leave her here this way! No matter, I shall do so with my own hands.~
DO ~SetGlobal("MazzyFreed","GLOBAL",1) IncrementGlobal("Break", "LOCALS", 1)~
EXTERN MAZZY 13

INTERJECT_COPY_TRANS2 Mazzy 21 Mazzy21
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That is... sad indeed. I will avenge him, Mazzy, I promise.~
== MAZZY IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I do not know who you are, but I thank you for your words, my lady. And yet, even were the deed done, it would not bring him back to me.~
END

// Ghosts beside Amauna
INTERJECT_COPY_TRANS2 SHAGHO02 11 shagho01-11
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such vileness! And such... a fate. It sickens me and fills me with grief and hate.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It will pass, for we can certainly put an end to this shadow.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Did you not hear of a Shadow Dragon? Since when did you think yourself capable of facing such?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~True, I might not be able to face it. But I'm sure you would be able.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~If you say so, then.~
END

INTERJECT_COPY_TRANS2 SHAGHO02 13 shagho01-13
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such vileness! And such... a fate. It sickens me and fills me with grief and hate.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It will pass, for we can certainly put an end to this shadow.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Did you not hear of a Shadow Dragon? Since when did you think yourself capable of facing such?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~True, I might not be able to face it. But I'm sure you would be able.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~If you say so, then.~
END

INTERJECT_COPY_TRANS2 SHAGHO02 14 shagho01-14
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such vileness! And such... a fate. It sickens me and fills me with grief and hate.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It will pass, for we can certainly put an end to this shadow.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Did you not hear of a Shadow Dragon? Since when did you think yourself capable of facing such?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~True, I might not be able to face it. But I'm sure you would be able.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Well... if you say so.~
END

CHAIN
IF ~Dead("shagho01")
Dead("shagho02")
AreaCheck("AR1401")
!Global("villagesaved","GLOBAL",1)
PartyHasItem("misc6p")
Global("amaunaghost", "LOCALS", 0)~ THEN Z#KOVAJ amaunaghost
~If not for us, there would have been nothing for her, nothing at all. Just an eternity of torment and wretched damnation.~
= ~It seems even for the righteous there is no rest to be had, no reward to be reaped. Would that I had strength to curse myself for not being evil, but there is no such will in me.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Speak not such things, Kova. That road is forever closed to you.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Maybe, maybe not.~
EXIT

EXTEND_BOTTOM shadel 7
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ shadel7
END

CHAIN
IF ~~ THEN Z#KIYOJ shadel7
~You delude yourself, creature. The light has come and the time of your darkness is over.~
DO ~ActionOverride("rngsha02",Enemy()) 
ActionOverride("shadel", Enemy() )~ EXIT

EXTEND_BOTTOM UHRANG01 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ uhrang01-0
END

CHAIN
IF ~~ THEN Z#KIYOJ uhrang01-0
~The darkness has passed. Rest well, my sister.~
DO ~ActionOverride("uhrang01", Kill(Myself) )~ 
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~She has passed beyond human aid, Kiyone. Your words mean nothing to her.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~That may be so, but I speak them nonetheless.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Does it trouble you that you could well have been like her? What would there be left of your righteousness and truth to hold on to, then?~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I do not know. Maybe there is nothing, after all, and there never was.~
EXIT





 




// Viconia's burning
INTERJECT_COPY_TRANS2 VICG1 4 vicg1-4
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Even if they are doing this to a drow, this is a travesty of justice and all that is right. Let us put an end to it as soon as we may.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~If she has truly done nothing wrong, then we must save her. Still, such creatures are proverbial for their conniving ways, and probably more so on a pyre.~
END

INTERJECT_COPY_TRANS2 VICONI 2 viconi2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We may have saved you from a grim fate, but that was only the right thing to do. I would prefer it if this were the last we saw of you, drow.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I find it disturbing that one so dark could stir some degree of fascination in me. Still, there is something about you that makes my soul uneasy.~
== VICONI IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Really? I suppose you expect me to be flattered with that, lowly male? But you have no say in such a matter. It will be up to <CHARNAME> if you are to have the pleasure of my company for a time.~
END

INTERJECT_COPY_TRANS2 VICONI 11 viconi11
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~So, she is dead. Whether she was guilty or innocent or otherwise, perhaps we'll never know.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Our lack of action was most deplorable, <CHARNAME>. I hope that in future, we are more prompt to help those in need of aid.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
END






// The Unseeing Eye
INTERJECT_COPY_TRANS2 CSGAAL 11 csgaal11
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such are the trials of those who do not have the strength to find their way without turning to some external power. That they have turned to now to a cult that reveres blindness, only shows what heavy burdens the churches have placed upon them.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~And it also goes to show that thievery is not the only way to relieve people of wealth. There's tithes, donations and of course, judiciary bribes.~
== ANOMENJ IF ~InParty("Kova") InParty("Anomen") InParty("Kiyone")
!Global("AnomenIsKnight","GLOBAL",1)~ THEN
~How dare you judge the ways of the Gods! Helm will surely smite you for this!~
== Z#KOVAJ IF ~InParty("Kova") InParty("Anomen") InParty("Kiyone")~ THEN
~I only comment on the ways and tongues of those who claim to act for them, Anomen.~
END

INTERJECT_COPY_TRANS2 BHARVAL 10 bharval10
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It is needless for us to get caught up in such affairs, <CHARNAME> and it does no one any lasting good. Let the people believe what they will, it is their free choice, and it's too bad if the churches can't stand it.~
END

INTERJECT_COPY_TRANS2 BHOISIG 11 bhoisig11
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It is needless for us to get caught up in such affairs, <CHARNAME> and it does no one any lasting good. Let the people believe what they will, it is their free choice, and it's too bad if the churches can't stand it.~
END

EXTEND_BOTTOM KELDOR 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ keldor0
END

CHAIN
IF ~~ THEN Z#KIYOJ keldor0
~You seem to be one of truth, sent here for a purpose. Might your name be Keldorn?~
EXTERN KELDOR 18

INTERJECT_COPY_TRANS2 GAAL 2 gaal2
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~There is something very wrong here, and plucking out of the eyes is only one of the signs of it. We  cannot let this cult stand.~
END

INTERJECT_COPY_TRANS2 GAAL 4 gaal4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Revering a beholder as a God? What twisted road is this?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Such base corruption is unheard of, and must be brought to an end.~
END

INTERJECT_COPY_TRANS2 RIFTG03 5 riftg03-5
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~This is... a little unexpected. Past spiders, undead, beholders, a ruined temple, rotting plagued followers, we have just overcome a fallen God, and now stand before yet another?~
= ~A strange sequence of events that I could scarce have imagined as possible.~
END

CHAIN 
IF ~PartyHasItem("Leat13") 
OR(2) 
	AreaCheck("AR0206")
	AreaCheck("AR0201")
Global("TheshalDie", "LOCALS", 0)
!ActuallyInCombat()~ THEN Z#KOVAJ TheshalDie
~Could the creature that once bore this skin have been one of us? To desire to do no one any harm, yet be compelled to do so by urges beyond his control?~
DO ~SetGlobal("TheshalDie", "LOCALS", 1)~
= ~Surely the fates make mockery of many. And to know that I am not alone in my dilemma suddenly seems more of a burden than a comfort.~
EXIT

INTERJECT_COPY_TRANS2 BHEYE 0 bheye0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~So, the root is one of these - an elder orb. Let us eradicate this corrupting beast from the earth!~
END

INTERJECT_COPY_TRANS2 BHEYE 1 bheye1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~So, the root is one of these - an elder orb. Let us eradicate this corrupting beast from the earth!~
END

CHAIN 
IF ~Dead("UnseeingEye") 
OR(2) 
	AreaCheck("AR0205")
	AreaCheck("AR0202")
Global("UEyeDie", "LOCALS", 0)~ THEN Z#KIYOJ UEyeDie
~Now that the thing is dead, may the stench of its corruption be forever gone from the earth.~
DO ~SetGlobal("UEyeDie", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It doesn't take a foul creature to bring forth corruption.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~You have a sound grasp of the obvious.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Just a reminder on the reality of matters.~
EXIT

INTERJECT_COPY_TRANS2 RIFTG03 29 riftg03-29
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Amaunator? It is sad thing that one so full of the light of truth should have fallen to such a state as this. Will the bringer of light now be forever no more?~
END

CHAIN 
IF ~Global("RiftGo","GLOBAL",1)
AreaCheck("AR0203")
Global("AmaGone", "LOCALS", 0)~ THEN Z#KIYOJ AmaGone
~I see, that it is as he had spoken. All is no more. The light of truth that once illuminated ages past now shines no longer, and will never be seen again.~
= ~Still, it does me good to know that our truth extends even to ease the passage of the Gods. Righteousness is truly but a step from divinity.~
DO ~SetGlobal("AmaGone", "LOCALS", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~If divinity means leaving behind such a legacy and a long drawn out demise, I'd rather be far from it.~
= ~Awe-inspiring and all, yet somehow broken and lost. Is this all there is to existence, even for a God?~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~You think too much for your own good, Kova. Yet...~
= ~I think we had best leave this place. There is much for me to think about.~
EXIT

// Sculptor Quest
INTERJECT_COPY_TRANS2 SCTELWYN 8 sctelwyn8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I say we should go elsewhere and do what is righteous and just, rather than sit here and help the church with adding adornments that does no one any good.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Easy for them to spend the money, for it is not their own, but rather what they have wrung from blood and toil of the people. ~
END

INTERJECT_COPY_TRANS2 SCSAIN 8 scsain8
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I say we should go elsewhere and do what is righteous and just, rather than sit here and help the church with adding adornments that does no one any good.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Easy for them to spend the money, for it is not their own, but rather what they have wrung from blood and toil of the people. ~
END

INTERJECT_COPY_TRANS2 SCBUTLER 3 scbutler3
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Another reason to detest nobility. They corrupt even the ordinary servant into treating other people like filth.~
END

INTERJECT_COPY_TRANS2 SCSARLES 2 scsarles2
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Bah, I say we go now! To scuttle around for the self-righteous churches that lift not a finger to aid anyone is bad enough, and now to pander to this pompous idiot who plays entertainer to the pudgy nobility?~ 
= ~Surely, we have better things to do than this!~
END

INTERJECT_COPY_TRANS2 SCJERLIA 4 scjerlia4
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Why am I not surprised.~
END

INTERJECT_COPY_TRANS2 SCJERLIA 9 scjerlia9
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~And so we are reminded, that let us not be too quick in judging others by their appearance.~
END

INTERJECT_COPY_TRANS2 SCJERLIA 20 scjerlia20
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Much as I would like to put one over that self-important worm, I have a feeling that this solution isn't going to be entirely the cheapest way out.~
END

INTERJECT_COPY_TRANS2 SCJERLIA 25 scjerlia25
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~So she's going to regale us with reasons to dig deeper into our pocket if we want anything from her.~
= ~Though, in case you forgot, there's always the better way out. Such as walking away from all this and letting the churches handle it themselves.~
END

INTERJECT_COPY_TRANS2 SCSARLES 26 scsarles26
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Well, he does know a thing or two after all! This is a rather unexpected, if pleasant, surprise.~
= ~Ah, I mean, unpleasant.~
END

INTERJECT_COPY_TRANS2 BHOISIG 47 bhoisig47
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yet another pleasant surprise - there is a voice of reason after all! Maybe Helm is a God worthy of notice after all.~
== ANOMENJ IF ~InParty("Kova") InParty("Anomen") 
!Global("AnomenIsKnight","GLOBAL",1)~ THEN
~You, fit to judge Helm? I should run my blade through you for your impertinence!~
== Z#KOVAJ IF ~InParty("Kova") InParty("Anomen")~ THEN
~On second thoughts, maybe not.~
END

INTERJECT_COPY_TRANS2 BHARVAL 45 bharval45
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yet another pleasant surprise - there is a voice of reason after all. Maybe Lathander is a God worthy of notice after all.~
= ~Sounds familiar though... but no, I don't know him.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone")
Global("AmaGone", "LOCALS", 1)~ THEN
~Lathander... Dawnbringer, Morninglord. I am reminded of the one who has passed away, but there is light still, from this place.~
END

INTERJECT_COPY_TRANS2 SCSAIN 34 scsain34
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Another quest for a temple's pride?~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It does appear that way, I'm afraid.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Well, if it is a wrong done to them, we should still do our best to redress as we would those of any other.~
END

EXTEND_BOTTOM TRAVIN 1 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ travin1
END

CHAIN
IF ~~ THEN Z#KIYOJ travin1
~You will speak, thief, or I shall call the wrath of the Stormlord upon you!~
== TRAVIN
~Hey, can't blame me for trying to make a buck. Go to the red brick house on the roof of the Copper Coronet.  Speak to Borinall, he's the man. I'm just the contact.~
== Z#KIYOJ
~Excellent. And now, your just reward for your most satisfactory service - shall be death!~
DO ~EquipMostDamagingMelee() MoveToObject("travin")~
== TRAVIN
~What? I've done as you asked! Damn it! I knew I shouldn't have got in the middle of a deal with Talassans! You'll not have me!~
DO ~EscapeAreaDestroy(3) SetGlobal("Z#TravinRun", "GLOBAL", 1)~ EXIT

CHAIN
IF ~Global("Z#TravinRun", "GLOBAL", 1)
!InMyArea("travin")
AreaCheck("AR0400")~ THEN Z#KIYOJ travinrun
~I doubt he'll be too ready to get involved in another scheme of anybody's next time.~
DO ~SetGlobal("Z#TravinRun", "GLOBAL", 2)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Perhaps. You certainly looked like you enjoyed yourself, though.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Why yes. I've always wanted to do something like this. Much preferable to killing.~
EXIT

INTERJECT_COPY_TRANS2 BORINALL 0 borinall0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~This man looks like he's prepared for quite a few eventualities, including lies. I'd strongly suggest discretion.~
END

EXTEND_BOTTOM BORINALL 4
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN BORINALL SeeKova
END

APPEND BORINALL
	IF ~~ THEN BEGIN SeeKova
	SAY ~Wait, I see a familiar face there. Well, if it isn't the infamous Kova Kashiro!~
	= ~Ah, what a stroke of fortune. In any case, I'm certain he wouldn't be part of any church, and especially not with the Talassans, that's for sure.~
	= ~I think I'll just have to take care of all of you now, and get that reward as well.~
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
~How ironic. If I were a Shadow Thief, I'd almost be obliged to be interested in the matter of Trademeet, as it would probably affect our income sources from all about the place.~
= ~As things are, I don't see why we should even be bothered with helping the richer get richer, or stay rich, as things sound.~
END

// Global("loganjob1","GLOBAL",1) AR2007

INTERJECT_COPY_TRANS2 CELOGAN 11 celogan11
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Druids. Who knows what they are up to.~
==Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~They are our fellow guardians of the wilds, Kova, and to hear such news of them disturbs me greatly.~
==Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone") OR(2) !InParty("Kova") !InMyArea("Kova")~ THEN
~They are our fellow guardians of the wilds, <CHARNAME>, and to hear such news of them disturbs me greatly.~
END

INTERJECT_COPY_TRANS2 CERND 0 cernd0
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Strange, this man bears hardly a trace of anger for those who placed him here.~
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
~There is nothing righteous about this. It is a twisted perversion of all that humanity existing in nature stand for.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~You have, through your actions, caused many innocent townsfolk to lose their lives. This cannot be permitted to go on.~
EXTERN CeFaldor 0

// After Faldorn dead, leaving Grove
CHAIN
IF ~Dead("CEFALD01") 
AreaCheck("AR1900")
InParty("Kiyone")
Global("FaldDie", "LOCALS", 0)~ THEN Z#KOVAJ FaldDie
~You know, Faldorn only did what she saw was right, as did those around her.~
DO ~SetGlobal("FaldDie", "LOCALS", 1)~
== Z#KIYOJ
~Yes, she did. It leaves me to ponder about the state of my perceptions.~
EXIT

INTERJECT_COPY_TRANS2 trgeni01 7 trgeni01-7
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I might have known that such evils would be perpetrated by such as the djinni for no other purpose other than to provide entertainment.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It shouldn't be that much of a trouble to hunt down this rakshasa, and it would be pleasure to end such creatures, as well as send these djinni well away from here.~
END

// See Ihtafeer
CHAIN
IF ~!Dead("trrak01")
AreaCheck("AR1902")
Global("SeeIhta", "LOCALS", 0)~ THEN Z#KIYOJ SeeIhta
~There is something amiss here, <CHARNAME>. I do not know enough to pinpoint its source, but enough to know that we should be on our guard.~  
DO ~SetGlobal("SeeIhta", "LOCALS", 1)~
EXIT

// Itona first appearance
INTERJECT_COPY_TRANS2 trthf01 0 TrThf01-0
== TRTHF01 IF ~See("Kova") InParty("Kova")~ THEN
~Wait... is that my beloved Kova Kashiro? How splendid! It is good to know that you are alive and kicking, my dear man.~
== Z#KOVAJ IF ~See("Kova") InParty("Kova")~ THEN
~If you wish to take me, you are welcome to try.~
DO ~SetGlobal("ItonaSeeKova", "GLOBAL", 1)~
== TRTHF01 IF ~See("Kova") InParty("Kova")~ THEN
~Take you? No, certainly not, my old friend. I am thankful enough to see that the rest haven't caught up with you yet.~ 
== Z#KOVAJ IF ~See("Kova") InParty("Kova")~ THEN
~I don't quite know what to say, Itona.~
== TRTHF01 IF ~See("Kova") InParty("Kova")~ THEN
~Take your time to think on it, then - I do have some business to settle here first, anyway. Maybe after that we could catch up for old time's sake.~
= ~So, where were we, <CHARNAME>?~
END

// Itona returns
CHAIN
IF WEIGHT #-1 ~!Dead("TRTHF01") 
Global("ItonaSeeKova", "GLOBAL", 2) 
Dead("TRRAK01") 
AreaCheck("AR1900")~ THEN TRTHF01 Thanks
~Thank you, my dear <CHARNAME>, for a job well done. I really don't wish you any ill, but I have my own interests to see to. Namely, to enriching myself by almost ten thousand gold.~
= ~I think the Dao would also be pleased with us for Ihtafeer's head. Delightfully fair, I believe.~ 
== Z#KOVAJ ~I knew I should have put my blade into your back, Itona.~
== TRTHF01 ~You expect me to believe you would do so, with all that reluctance of yours to kill anyone unless necessary? I doubt it.~ 
= ~In any case, its time to catch up, my old friend. Let's see whose knife is the sharper one.~
DO ~SetGlobal("KKThief", "GLOBAL", 1)~ EXIT

// Itona Dead
CHAIN
IF ~Dead("TRTHF01") 
Global("ItonaSeeKova", "GLOBAL", 2) 
AreaCheck("AR1900") 
!ActuallyInCombat()~ THEN Z#KOVAJ ItonaDead
~So, he is dead, is he?~
= ~To think he had been one of the better ones among the thieves, and that we last parted as friends some years ago, drinking to his posting to prosperous Trademeet. I had once looked forward to meeting him again.~
DO ~SetGlobal("ItonaSeeKova", "GLOBAL", 3) ~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I'm not sure what to say, Kova.~
== Z#KOVAJ
~Gah! Damned be my sentimentality, damned be my goodness! Damned be this weak willed spirit of mine!~
= ~There are better things to do than to mourn over cut-throats. Let us make haste from here.~
EXIT

// On Mantle Start
INTERJECT_COPY_TRANS2 TRCUT07 8 trcut07-8
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~
~He is right, there is no profit by wasting our time on such errands for stuck up pseudo aristocracy that have nothing better to do than to spend a few centuries wrangling over petty lineage.~
END

// On Open Tomb
INTERJECT_COPY_TRANS2 CELOGAN 85 celogan85
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~That explains quite a bit. It should be best if we do as he says.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~A more elegant solution would be if we simply dropped this whole unnecessary excursion.~
END

// On Nobles Dead
CHAIN
IF ~Dead("trfued01") Dead("trfued05")
GlobalGT("feudplot","GLOBAL",1)
Global("trnobledie", "LOCALS", 0)~ THEN Z#KOVAJ trnobledie
~This is a sorry and bloody state of affairs. To think the undead actually protected the living, from themselves.~
DO ~SetGlobal("trnobledie", "LOCALS", 1)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Pride brought them to this end, and I feel only pity for them. Would that we had been wiser and less greedy.~
EXIT

// On Return Mantle to Logan
INTERJECT_COPY_TRANS2 CELOGAN 91 celogan91
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I believe this is the best choice for all concerned, <CHARNAME>, and I respect you for that.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Even though it really was none of our business in the first place.~
END





// De Arnise Keep

// Nalia Intro
INTERJECT_COPY_TRANS2 Nalia 2 Nalia2
== Z#KOVAJ IF ~InParty("Kova") Global("CommentNalia", "GLOBAL", 0)~ THEN
~Bah, I thought as much. Yet another snotty noble, one of those with the easy life.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") Global("CommentNalia", "GLOBAL", 0)~
~That may be so, but if evil has come upon her and she needs our aid, then we should provide it.~
DO ~SetGlobal("CommentNalia", "GLOBAL", 1)~
END

INTERJECT_COPY_TRANS2 Nalia 3 Nalia3
== Z#KOVAJ IF ~InParty("Kova") Global("CommentNalia", "GLOBAL", 0)~ THEN
~Bah, I thought as much. Yet another snotty noble, one of those with the easy life.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") Global("CommentNalia", "GLOBAL", 0)~
~That may be so, but if evil has come upon her and she needs our aid, then we should provide it.~
DO ~SetGlobal("CommentNalia", "GLOBAL", 1)~
END

INTERJECT_COPY_TRANS2 Nalia 5 Nalia5
== Z#KOVAJ IF ~InParty("Kova") Global("CommentNalia", "GLOBAL", 0)~ THEN
~Bah, I thought as much. Yet another snotty noble, one of those with the easy life.~
== Z#KIYOJ IF ~InParty("Kova") InParty("Kiyone") Global("CommentNalia", "GLOBAL", 0)~
~That may be so, but if evil has come upon her and she needs our aid, then we should provide it.~
DO ~SetGlobal("CommentNalia", "GLOBAL", 1)~
END

INTERJECT_COPY_TRANS2 Nalia 12 Nalia12
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Yes, and I really think you shouldn't be seen with us either. I'm more than capable of picking locks anyway, and it wouldn't do to get your hands dirty and your aunty mad with you now, would it?~
== NALIA IF ~InParty("Kova") InMyArea("Kova")~ THEN
~How can you say such a thing? But no, I can't expect you to understand, but the leader of your party might. Please, may I go with you? I can pull my own weight.~
END

INTERJECT_COPY_TRANS2 Nalia 28 Nalia28
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~I think it's really for the best that she stays out of harm's way. We've been about enough not to get lost in a little keep. Besides, having her run around collecting all her precious little trinkets while we're doing all the fighting doesn't seem a good idea.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~She's courageous enough to want to join us, Kova, so why don't you accept that nobles can also mean well? Let <CHARNAME> make the decision for <PRO_HIMHER>self.~
END

// Daleson 
EXTEND_BOTTOM ~Daleson~ 13 
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Daleson13
END

CHAIN
IF ~~ THEN Z#KIYOJ Daleson13
~It is unbecoming to make a joke when someone's life is stake, <CHARNAME>.~
= ~Don't take it too hard now, Daleson, <PRO_HESHE> was just making jest, albeit an ill-timed one.~
EXTERN Daleson 14

EXTEND_BOTTOM ~Daleson~ 42  
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ DalesonEnd
END

EXTEND_BOTTOM ~Daleson~ 43  
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ DalesonEnd
END

CHAIN
IF ~~ THEN Z#KOVAJ DalesonEnd
~Well, that was a very informative conversation. So, nothing much between us and our objective, just thirty or so trolls and an unknown number of yuan-ti, plus some extra pets.~
= ~Is it me or do none of you think that's a tall order?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
~It can be done, and will be done, for the sake of what is right.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
~You know, Kiyone, much as I mean well and all, I do have a neck to care about.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
~So do I, Kova, so do I.~
EXIT

// Glaicas
INTERJECT_COPY_TRANS2 NaliaJ 157 NaliaJ157
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~A counterspell should do the trick.~
END

// Lady Delcia Caan
INTERJECT_COPY_TRANS2 DELCIA 16 delcia16
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It's at times like this when I can fully understand why others would love to stick their dagger into another person's gut and twist the handle slowly. Especially when the gut belongs to a good-for-nothing aristocratic scum.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~You will do no such thing. It is reasonable to be angered, but turning a thought into an action is often all that separates the evil from the good.~
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
Global("DeArniseGolem", "LOCALS", 0)
AreaCheck("AR1303")~ THEN Z#KOVAJ DeArniseGolem
~These golems seem to be guarding something, and I think they are unlikely to attack unless we take hold of what they protect.~
DO ~SetGlobal("DeArniseGolem", "LOCALS", 1)~ EXIT
*/

// Torgal Death
CHAIN 
IF ~Dead("TorGal") 
Global("TorgalDie", "LOCALS", 0)
AreaCheck("AR1301")~ THEN Z#KIYOJ TorgalDie
~The beast is dead. Though I wonder, who was behind all of this, that it could organise its kind enough to raise such a detestable army.~
DO ~SetGlobal("TorgalDie", "LOCALS",1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Some things, I think, are better left unknown.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~It would be better to find out, that we might face such vileness and put an end to it.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~Exactly what I was afraid of.~
EXIT

// Nalia's Proposal
INTERJECT_COPY_TRANS2 Nalia 87 Nalia87
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~
~This is a situation that could lead to further complications. Still, I'd rather trust your hand to see to it that the people here are taken care of, rather than place it in the hands of more distasteful nobles.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
~What Nalia proposes could be well, especially if it means that the people about here will be able to live a life without oppression. Even if it may mean some inconvenience for us, it could well be worth it.~
END 

INTERJECT_COPY_TRANS2 NaliaJ 69 NaliaJ69
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~
~This is a situation that could lead to further complications. Still, I'd rather trust our own hands to take see to it that the people here are well taken care of, rather than place in the hands of more distasteful nobles.~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~
~What Nalia proposes could be well, especially if it means that the people about here will be able to live a life without oppression. Even if it may mean some inconvenience for us, it could well be worth it.~
END 




// Copper Coronet / Slaver Compound

// Kova Sees Madam Nin
CHAIN
IF ~InParty("Kiyone") !Dead("Kiyone") 
See("Madam")
Global("SeeNin","LOCALS",0)~ THEN Z#KOVAJ SeeNin
~Bah, I hate these places, and the sordid business done in here.~
DO ~SetGlobal("SeeNin","LOCALS",1)~
== Z#KIYOJ  ~How so, Kova? It is a legitimate business on its own, bar the presence of slavery in the background. It does also keep shady characters like yourself busy in activities generally less harmful to others.~
== Z#KOVAJ  ~I wouldn't deal with harlots - they disgust me.~
END
IF ~!GlobalGT("KKRomance","GLOBAL",0)~ THEN EXIT
IF ~GlobalGT("KKRomance","GLOBAL",0)~ THEN EXTERN Z#KIYOJ KovaSeeNin

CHAIN
IF ~~ THEN Z#KIYOJ KovaSeeNin
~Is that so? What a pathetic thief you are, Kova.~
= ~Well, if you haven't whored, have you not a lover or should I suppose you have no libido?~
== Z#KOVAJ  ~I...~
= ~There's no need for you to know such, Kiyone. I'm sure it's not a matter worthy of your concern.~
== Z#KIYOJ  ~My, my aren't you a sharp one? Amusingly impressive.~
== ANOMENJ IF ~InParty("Anomen") !Dead("Anomen") 
!Global("AnomenIsKnight","GLOBAL",1)~ THEN 
~Surely, my lady, you can't actually condone such wretched practices? Nor be impressed by his false claims to purity?~
== Z#KIYOJ IF ~InParty("Anomen") !Dead("Anomen")
!Global("AnomenIsKnight","GLOBAL",1)~ THEN 
~I condone what I condone. Besides, Anomen, you don't even come close to understanding what we've been saying.~
EXIT

// Watching Slave Fight
INTERJECT_COPY_TRANS2 Anno1 0 SeeFight
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~
~I had only heard of such but now, to actually see it done, makes my stomach twist with loathing.~
== Z#KIYOJ IF ~InParty("Kiyone") !Dead("Kiyone")~
~As if slavery were not criminal enough! This is an atrocity that cannot go unpunished!~
END

// Guards of Hendak
EXTEND_BOTTOM ~Guard3~ 0 
IF ~InParty("Kiyone") !Dead("Kiyone")~ THEN EXTERN Z#KIYOJ Guard3
END

CHAIN
IF ~~ THEN Z#KIYOJ Guard3
~I'll put an end to this wickedness. Free them, now!~
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~ THEN
~I'd advise you to obey, for the sake of your continued health.~
== GUARD3
~I warned you, fool!  Guards!!  Intruders!!~
DO ~SetGlobal("CopperGuards","GLOBAL",1)   Enemy()~
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~ THEN
~Well, don't say I didn't warn you.~
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
~Our names do not matter, you only need to know that we will free you from the dominion of evil.~
EXTERN Hendak 4

CHAIN
IF ~~ THEN Z#KIYOJ Hendak0Key
~Our names do not matter, you only need to know that we will free you from the dominion of evil.~
EXTERN Hendak 38

// Beastmaster
EXTEND_BOTTOM ~Beast~ 0 
IF ~InParty("Kiyone") !Dead("Kiyone")~ THEN EXTERN Z#KIYOJ Beast
END

CHAIN
IF ~~ THEN Z#KIYOJ Beast
~Give us the keys to the cells, or face the wrath of righteousness!~
EXTERN BEAST 1

// Hendak Free

INTERJECT_COPY_TRANS2 Hendak 14 Hendak14
== Z#KIYOJ IF ~InParty("Kiyone") !Dead("Kiyone")~
~It is no more than what should have been, but which has been unjustly withheld.~
== Z#KOVAJ IF ~InParty("Kova") !Dead("Kova")~
~This is a fair deed and pleasing. If only, freedom was all there is.~
END
 
// See Hendak Fight
INTERJECT_COPY_TRANS2 Lehtin 16 Lehtin16
== Z#KIYOJ IF ~InParty("Kiyone") !Dead("Kiyone")~ THEN 
~It is over, Lehtinan, and I will not allow your vile deeds to go unpunished.~
DO ~EquipRanged() Attack("Lehtinan")~
END

// Hendak abt Slavers

INTERJECT_COPY_TRANS2 ~Hendak~ 19 hendak19
== Z#KIYOJ  IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Rest assured, Hendak, we shall certainly wipe out that nest of vipers.~
DO ~SetGlobal("MoreSlavers", "GLOBAL", 1)~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I prefer to see it as a mission of rescue.~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~See it as you like - justice will be administered where it must.~
END

// Slaver Compound Guard
EXTEND_BOTTOM ~Slaver1~ 0 
IF ~InParty("Kiyone") Global("MoreSlavers", "GLOBAL", 1)~ THEN EXTERN Z#KIYOJ Slaver1
END

CHAIN
IF ~~ THEN Z#KIYOJ Slaver1
~We have come to free the slaves kept here. Let us pass or face the consequences.~
EXTERN Slaver1 6

// Slaver Moving Slave
INTERJECT_COPY_TRANS2 ~Slaver4~ 6 Slaver4-6
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ 
~I would have loved to cut him down like the dog he is!~ 
= ~Still, it is clear killing him will get us nowhere. Let us get down to the root of this foulness and strike at the heart of the matter.~
END

// Slaver Wizard
INTERJECT_COPY_TRANS2 ~SlaverM~ 0 SlaverM
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~
~See, what did I tell you about the courts and the Council?~
== Z#KIYOJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~
~Then let us act first to rectify their oversights.~
END

// Haegan 0 and 4
EXTEND_BOTTOM ~Haegan~ 4
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Haegan4
END

CHAIN
IF ~~ THEN Z#KIYOJ Haegan4
~Wretched, accursed slaver! You can yield and the courts shall decide your fate, or resist and be judged by my song of my bowstring.~
EXTERN HAEGAN 3

EXTEND_BOTTOM ~Haegan~ 0
IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN EXTERN Z#KIYOJ Haegan0
END

CHAIN
IF ~~ THEN Z#KIYOJ Haegan0
~Look to your own hide, vile creature! You can yield and the courts shall decide your fate, or resist and be judged by my song of my bowstring.~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~If what Hendak said was true, this is one man I'd sooner see dead than before the courts.~
EXTERN HAEGAN 3

// Girl with Trolls
INTERJECT_COPY_TRANS2 Girl2 0 Girl2-0
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~A child in here with these beasts? Death was too kind a fate for that man!~
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova") InParty("Kiyone") InMyArea("Kiyone")~ THEN
~I know of some ways that might just be suitable, but it's too bad he is now beyond their reach.~
END

INTERJECT_COPY_TRANS2 Girl2 1 Girl2-1
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN 
~Some gold might help her get back home, but too much would surely attract attention which would see to it that she winds up robbed, dead or in a place of abuse.~
END

// Back to Hendak
INTERJECT_COPY_TRANS2 Hendak 30 Hendak30
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~We have done no more than to set things as they should always have been.~ 
END

// After killing Quallo's friend
CHAIN 
IF ~Dead("sewcc") 
Global("QualloCC", "LOCALS", 0)
AreaCheck("AR0404")~ THEN Z#KIYOJ QualloC
~It sits ill with me to kill this creature that has done us no harm and which has only served to comfort this old man in the sewers.~
DO ~SetGlobal("QualloCC", "LOCALS",1)~
/* overkill
== Z#KOVAJ IF ~InParty("Kova") InMyArea("Kova")~ THEN
~He might be under a spell, Kiyone, and this could be a step towards freeing him.~
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
~There doesn't seem to be a reason not to give the sword. If whoever created these illusions in the first place had wanted the beast to be free, it probably wouldn't require us to release it.~
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
~No, this is as it should be. What you've hoped to gain, who you've hoped to kill, is beyond you now, forever. And that's the way it should be.~
END

EXTEND_BOTTOM ~Kalah2~ 7
IF ~InParty("Kova") InMyArea("Kova")~ THEN EXTERN Z#KOVAJ Kalah2
END

CHAIN
IF ~~ THEN Z#KOVAJ Kalah2
~Yes, a mage is a criminal and... I suppose can understand how you feel, Kalah, but it doesn't justify the means. Maybe, had things been different, there could have been a way out, before all this.~
DO ~SetGlobal("KovaKalah", "GLOBAL", 1)~
== KALAH2 
~You... understand? I... what have I done... No! You don't understand, don't understand anything!~
EXTERN KALAH2 9

APPEND Z#KIYOJ
	IF ~~ THEN BEGIN CircG1
	SAY ~I am an investigator working for Magistrate Bylanna, and may be able to deal with your problem for you, if you'll just let us know what is going on in here.~
	IF ~~ THEN EXTERN CircG1 6
	END

	IF ~AreaCheck("AR0600")
	!StateCheck(Player1,STATE_SLEEPING) 
	Global("InCircus", "LOCALS", 0)~ THEN BEGIN IntoCircus
	SAY ~If this is an illusion, I've certainly never seen or heard of one of such a grand scale. Let us be wary.~
	IF ~~ THEN DO ~SetGlobal("InCircus", "LOCALS", 1)~ EXIT
	END
END 

CHAIN
IF ~InMyArea("Kova")
InParty("Kova")
RandomNum(2,1)
Global("celvankova","AR0300",0)~ THEN CELVAN kvhaiku
~There once was a man with a heart true, 
raised in shadows yet from them flew.
With much gold on his head,
they want him so dead,
but with his love he'll show them a thing or two.~
DO ~SetGlobal("celvankova","AR0300",1)~
== Z#KOVAJ
~Who in the... you know how I can get out of this mess?~
= ~But what is this about love, I definitely don't have any, how exactly can it help me?~
EXTERN CELVAN 1

CHAIN
IF ~InMyArea("Kiyone")
InParty("Kiyone")
RandomNum(2,1)
Global("celvankiyo","AR0300",0)~ THEN CELVAN kyhaiku
~There once was a ranger learned in laws
but inside always saw all in flaws
Her world never true
her work never through
but a wanted soul might be her true cause.~
DO ~SetGlobal("celvankiyo","AR0300",1)~
== Z#KIYOJ 
~Who are you? How do you know what you know, and on what basis do you say these things? Speak plainly!~
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
~You seem full of energy and drive, but inside you are a lost soul who is tired and needing a rock to cling to. Set your pride aside, and see that what you do is not just out of duty.~
== Z#KIYOJ
~My, what nonsense you spout. I'm sorry <CHARNAME> was gullible enough to think what you have to say is worth listening to.~
EXIT

CHAIN
IF ~~ THEN TRGYP02 kovafortune
~You are pressed on all sides, yet you stake your all on a light you have never seen. Hold fast and don't despair, for you may yet come out a better person, and find the purpose you have never known.~
== Z#KOVAJ 
~That was unexpectedly encouraging. I still think I'm going to die but I'll bear these words in mind. If I didn't think it's so much babble I'd probably be more grateful.~
EXIT



// Killing tough Baddies

CHAIN
IF ~	Global("Z#KKKillHard", "GLOBAL", 1)
	InParty("Kova")
	InParty("Kiyone")
	!ActuallyInCombat()
	Global("Z#KKHardFight", "GLOBAL", 1)~ THEN Z#KIYOJ KillHard1
~The creature is dead. That is a relief.~
DO ~SetGlobal("Z#KKHardFight", "GLOBAL", 0)
IncrementGlobal("Z#KKKillHard", "GLOBAL", 1)~
== Z#KOVAJ ~So you weren't actually certain we'd survive the encounter.~
== Z#KIYOJ ~Yes. I am human, Kova.~
== Z#KOVAJ ~Perhaps it might be best if I didn't know that too well.~
== Z#KIYOJ ~Maybe. Probably the best for both of us. Still...~
== Z#KOVAJ ~Let's move on, shall we?~
EXIT

CHAIN
IF ~	Global("Z#KKKillHard", "GLOBAL", 3)
	InParty("Kova")
	InParty("Kiyone")
	!ActuallyInCombat()
	Global("Z#KKHardFight", "GLOBAL", 1)~ THEN Z#KOVAJ KillHard2
~We're... actually alive. This is a rather unexpected, albeit pleasant surprise.~
DO ~SetGlobal("Z#KKHardFight", "GLOBAL", 0)
IncrementGlobal("Z#KKKillHard", "GLOBAL", 1)~
== Z#KIYOJ ~We prevailed once before, and we have shown that we can do it again.~
== Z#KOVAJ ~No thank you, not again please. That was a considerably more dangerous than I'd ever care to experience.~
== Z#KIYOJ ~Dangerous yes, and difficult yes, but at least we know we have survived before and can take heart.~
== Z#KOVAJ ~I'd rather take heart in hoping that I won't be having such a harrowing experience again. Still, I doubt that will be the case.~
== Z#KIYOJ ~At least we both agree on that last point.~
EXIT

// Kova's First Resurrection

CHAIN
IF ~Global("KovaDied", "GLOBAL", 1)
!ActuallyInCombat()
InParty(Myself)~ THEN Z#KOVAJ FirstKvRes
~Where... where am I? What am I doing here?~
DO ~SetGlobal("KovaDied", "GLOBAL", 2)~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Breathing again. If nothing else, that's an improvement.~
== Z#KOVAJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~Yes, indeed it is. I died, didn't I?~
== Z#KOVAJ IF ~OR(2) !InParty("Kiyone") !InMyArea("Kiyone")~ THEN
~Oh, it is you, <CHARNAME>. I died, didn't I?~
== Z#KIYOJ IF ~InParty("Kiyone") InMyArea("Kiyone")~ THEN
~It certainly did appear that way.~
== Z#KOVAJ 
~So this was death... perhaps I fear it less now. Yet, a more unpleasant experience would be hard to come by, and I'd certainly not care to experience it again.~
= ~Thank you, <CHARNAME>, for bringing me back. It is a relief of sorts, to be back among the living.~
EXIT

// Kiyone's First Resurrection

CHAIN
IF ~Global("KiyoDied", "GLOBAL", 1)
!ActuallyInCombat()
InParty(Myself)~ THEN Z#KIYOJ FirstKyRes
~I thought I died. What am I doing back here?~
DO ~SetGlobal("KiyoDied", "GLOBAL", 2)~
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("KKRomance", "GLOBAL", 0)~ THEN
~<CHARNAME> brought you back, Kiyone. Are you all right?~
== Z#KIYOJ
~Yes, I am certainly alive. How strange, and unexpected. I suppose I do owe you my thanks, <CHARNAME>, for bringing me back.~
= ~I would appreciate a moment to collect myself. I didn't quite expect to return, and had thought my battle forever ended.~
== Z#KOVAJ IF ~InParty("Kova") GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~That would certainly have ended it for me as well.~
== Z#KIYOJ 
~But no, there's more to be done, isn't there? Yes, there always tends to be.~
= ~Let us be on our way, then, till the time for a more complete ending for our adventures is reached.~
EXIT


