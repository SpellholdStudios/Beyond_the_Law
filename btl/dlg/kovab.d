// PC with Kiyone

BEGIN ~Z#KIYOB~

CHAIN
IF ~InMyArea(Player1)
Global("BKiyoPC", "GLOBAL",0)~ THEN Z#KIYOB PC1
~It's been inspiring to think that I am now travelling in your company, what with your heroics in the North, not so far from my own roots, and your good name in this land.~
DO ~SetGlobal("BKiyoPC", "GLOBAL", 1)~ 
= ~It's quite an illustrious life of truth you lead, and I think we can agree that the best is yet to be.~
END
IF ~~ THEN REPLY ~Indeed, I intend to work towards greater and more glorious deeds, and leave behind a legacy of truth in the realms.~ GOTO PC1-1
IF ~~ THEN REPLY ~The road ahead is uncertain, and I doubt I'd always wish it fraught with challenges such adventures bring.~ GOTO PC1-2
IF ~~ THEN REPLY ~I'm not sure I know what you're talking about. Things just happen to me, and I deal with it, and my heroics are generally incidental.~ GOTO PC1-3
IF ~~ THEN REPLY ~That's not so important to me as serving my own ends, and an apparent good name is more a result of it being in my interests to maintain that.~ GOTO PC1-4

CHAIN
IF ~~ THEN Z#KIYOB PC1-4
~If that is the case, then I must have sorely misjudged you. I hope that your other companions find you tolerable, because I certainly do not.~
DO ~IncrementGlobal("Break", "LOCALS", 1)
SetGlobal("BKiyoPC", "GLOBAL", 50)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC1-1
~Such a legacy that you speak of will certainly be a fine thing to see, but no doubt it will come at a considerable price. I hope you are prepared to pay it, as all such things come dearly, and I can only imagine what opposition and challenges you will face.~
EXTERN Z#KIYOB PC1-2

CHAIN
IF ~~ THEN Z#KIYOB PC1-3
~Yes, I suppose things just happen to you, difficulties seemingly insurmountable. Though planning is always a virtue, nonetheless you have triumphed over them, and served well the cause of good, even as more challenges arise around you.~
EXTERN Z#KIYOB PC1-2

CHAIN
IF ~~ THEN Z#KIYOB PC1-2
~Yet I have little doubt you'll overcome them. Not all your companions may survive, of course, myself included, but such is the nature of challenges. Casualties are an unhappy but expected part of life, as I'm sure you've already found out.~
END
IF ~~ THEN REPLY ~That's an interesting way of putting things. What are your own sentiments about the death of your close friends?~ GOTO PC1-2ext
IF ~~ THEN REPLY ~Sometimes doing the right thing costs the lives of those around us, and that's the way it should be.~ GOTO PC1-2-1
IF ~~ THEN REPLY ~If a friend died for a reason, serving a cause, then that would be a life well lived and well concluded, and I would not begrudge him that.~ GOTO PC1-2-2
IF ~~ THEN REPLY ~It's a sad truth of life, and sometimes those close to us must be sacrificed for the greater good of everyone.~ GOTO PC1-2-3
IF ~~ THEN REPLY ~All lives are precious, and I would rather not see any of my friends perish, regardless of what the reasons might be.~ GOTO PC1-2-4
IF ~~ THEN REPLY ~So long as it all turns out all right for me, I don't really care what happens to others around me.~ GOTO PC1-4

CHAIN
IF ~~ THEN Z#KIYOB PC1-2ext
~I usually work alone, and there are few I'd consider close. Still, it saddens me to hear of the death of a friend or ally. It is a fortunate thing that emotions are our own to control, and can be prevented from affecting our efficiency.~
= ~Though it is by no means an ill thing to fall in the service of truth - they have served their purpose, and that is the way things should be.~
= ~But each has their own views, as I am sure you do. As you are the leader of this party, I would like to hear it, that I may know better what to expect from you regarding this issue.~
END
IF ~~ THEN REPLY ~Sometimes doing the right thing costs the lives of those around us, and that's the way it should be.~ GOTO PC1-2-1
IF ~~ THEN REPLY ~If a friend died for a reason, serving a cause, then that would be a life well lived and well concluded, and I would not begrudge him that.~ GOTO PC1-2-2
IF ~~ THEN REPLY ~It's a sad truth of life, and sometimes those close to us must be sacrificed for the greater good of everyone.~ GOTO PC1-2-3
IF ~~ THEN REPLY ~All lives are precious, and I would rather not see any of my friends perish, regardless of what the reasons might be.~ GOTO PC1-2-4
IF ~~ THEN REPLY ~So long as it all turns out all right for me, I don't really care what happens to others around me.~ GOTO PC1-4

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-1
~Indeed it does, but it should not always be the case. The cause of good is always better served with more alive than more dead, and one should not become overly familiar with death.~
EXTERN Z#KIYOB PC1-End1

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-2
~Well and truly spoken. I would not grudge a friend that, and such an end is far preferable to falling prey to one's corruption and straying from the light.~
EXTERN Z#KIYOB PC1-End2

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-3
~The passing of one who has been true is always a sad thing, and though I would not begrudge them that they served up their lives willingly for their purpose, such an end is still best avoided.~
EXTERN Z#KIYOB PC1-End1

CHAIN
IF ~~ THEN Z#KIYOB PC1-2-4
~That is true, perhaps, but only to an extent. The life of one slowly turning towards corruption is a life I'd rather see ended in the service of good than to fall from light later on.~
EXTERN Z#KIYOB PC1-End2

CHAIN 
IF ~~ THEN Z#KIYOB PC1-End2
~I hope that as part of this party, I can continue to serve the cause of righteousness and truth, and none of my companions, especially yourself, will fall prey to the corrupting allure of lawlessness.~
EXIT

CHAIN 
IF ~~ THEN Z#KIYOB PC1-End1
~I hope that in your leadership of this party, more care and planning can be exercised, especially since it concerns every one of our lives.~
= ~All this that we may continue to serve the cause of righteousness and truth, and none may fall needlessly in this journey onward.~
EXIT


CHAIN
IF ~InMyArea(Player1)
Global("BKiyoPC", "GLOBAL",1)
GlobalGT("BKKChat","GLOBAL",6)~ THEN Z#KIYOB PC2-0
~I had thought Amn a rather less violent place than the North, yet it seems the tyranny of humanity's corruption holds more sway over here.~
DO ~SetGlobal("BKiyoPC", "GLOBAL", 2)~
= ~It only goes to show the fallen nature of those around us, so that great prosperity only brings more of the nature of darkened minds into the reality of world.~
END
IF ~~ THEN REPLY ~Not everyone has such a mindset, and there is more good around us than is outwardly visible.~ GOTO PC2-01
IF ~~ THEN REPLY ~Even if a person was not innately selfish, it is probable that wealth corrupts absolutely.~ GOTO PC2-02
IF ~~ THEN REPLY ~Then we should take care that we do not become as most of these people are.~ GOTO PC2-04
IF ~~ THEN REPLY ~Indeed, every individual is selfish and corrupt at heart, and we should right what wrongs we can.~ GOTO PC2-04
IF ~~ THEN REPLY ~Who do you think you are to judge everyone else? A saint, perhaps?~ GOTO PC2-05

CHAIN
IF ~~ THEN Z#KIYOB PC2-05
~What brings this on? If you are incapable of civil conversation, then perhaps I have made a poor choice in thinking you a good travelling companion.~
DO ~IncrementGlobal("Break", "LOCALS", 1)
SetGlobal("BKiyoPC", "GLOBAL", 50)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC2-01
~That is one way of looking at it, but that good is far from apparent only goes to show the deplorable state of people.~ 
= ~If only this were true but for Amn, but I fear all the world is afflicted with this disease of the mind. A grim reality, but a reality nonetheless.~
EXTERN Z#KIYOB PC2-1

CHAIN
IF ~~ THEN Z#KIYOB PC2-02
~That might be true, but sometimes I see even in the poor some semblance of wickedness. But is it right to blame them, desperate in their need? To condemn the needy guard for taking a bribe?~ 
= ~But the facts are that a good reason does not make right a wrong. Though I empathise, I sympathise, I still must do as justice dictates.~
EXTERN Z#KIYOB PC2-1

CHAIN
IF ~~ THEN Z#KIYOB PC2-04
~Well spoken, for though there are those pure and true, they could so easily be corrupt and fallen. Perhaps it shows we are all fundamentally wicked, and we must daily watch ourselves within even as we strive against evil without.~
EXTERN Z#KIYOB PC2-1

CHAIN
IF ~~ THEN Z#KIYOB PC2-1
~It is just as well that we have come here in this season. It would be a pleasure and a challenge to do what is required of us, to bring light into the darkness even as we trample the unrighteous underfoot.~
END
IF ~~ THEN REPLY ~I hope wisdom leads us to do the right thing, rather than be too swift to strike out.~ GOTO PC2-11
IF ~~ THEN REPLY ~If we stand strong together and evil will not prevail against us.~ GOTO PC2-12
IF ~~ THEN REPLY ~The honor and glory will well be worth it, as well as other rewards.~ GOTO PC2-13
IF ~~ THEN REPLY ~We shall do just that, so long as it will prove profitable for us.~ GOTO PC2-14

CHAIN
IF ~~ THEN Z#KIYOB PC2-14
~That is a rather mercenary view I had thought you were above, <CHARNAME>. No matter, better an awakening of understanding now than later, which I will remember well.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC2-13
~Truth and righteousness is beyond honor and glory, beyond rewards. If the demands of truth are such that we die alone and forsaken without bards to sing of our victories, so be it. We must yet battle on.~
EXTERN Z#KIYOB PC2-2

CHAIN
IF ~~ THEN Z#KIYOB PC2-12
~Valour and steadfastness are bastions of the success, but the most important might yet be wisdom and acumen. I've seen many too swift to convict, too eager to judge, too brash in their actions.~
= ~They were well meaning, but the impact of their deeds were poorly considered. Not only did many fall from grace, some of the consequences caused much more pain and death than was necessary, and loss to innocent parties.~
EXTERN Z#KIYOB PC2-2

CHAIN
IF ~~ THEN Z#KIYOB PC2-11
~It is good to hear such a word from another. Not hungry for glory nor too eager to mete out justice, but tempering deeds with a care and a regard for others.~
= ~Caution and wisdom not only begets victory at a lower cost, but in dealing with the affairs see to it that what is done turns out for the best, rather than for the worse.~
EXTERN Z#KIYOB PC2-2

CHAIN
IF ~~ THEN Z#KIYOB PC2-2
~And so in all things we are led onwards, or even backwards, sideways, everywhere the press of evil and corruption stains the land, even amidst the quiet beauty of nature, at times.~
= ~Perhaps to some it would be cause for rejoicing, that one does not have to look far to do something about what is going around the person, but such a view is more vanity than truth.~
= ~Have you ever wondered, looked ahead and asked, where is this going? When goal after goal has been achieved, when cases and battles have been won, we find ourselves no closer to achieving a definite triumph against darkness.~
= ~All that is whole can be broken down, but few things can be restored, and the odds seemed stacked against absolute victory.~
= ~That is so, even for this case of mine, such are the powers arrayed against it. And even that even if I win it, I know it has no lasting impact against darkness. I will stick to it though, for it is the right thing to do.~
END
IF ~~ THEN REPLY ~I do not know about defeating evil completely, but I think doing the right thing is important.~ GOTO PC2-21
IF ~~ THEN REPLY ~It might be true that there is no point to anything we do, but we stick to it nonetheless.~ GOTO PC2-21
IF ~~ THEN REPLY ~Perhaps it would be best if you gave up altogether.~ GOTO PC2-23

CHAIN
IF ~~ THEN Z#KIYOB PC2-23
~I might, but only if I were compelled to. I stand on the truth of my deeds, for I can do no less.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB PC2-21
~It is as you say, but that only shows your view coincides with mine. It might yet be vanity to keep doing as I do.~
EXIT

CHAIN
IF ~InMyArea(Player1)
GlobalGT("AsylumPlot", "GLOBAL", 40)
Global("KyBT", "GLOBAL", 0)~ THEN Z#KIYOB KyBT0
~I had heard word of such mentioned before, but I had not thought it proper to bring it up needlessly.~ 
DO ~SetGlobal("KyBT", "GLOBAL", 1)~
= ~Nonetheless, it is obvious that your godly heritage does have more sway and influence over our directions and actions than I had initially thought. Certainly this whole misadventure with Irenicus appears to have stemmed from little else beyond that fact.~
= ~It did get somewhat challenging at times, but at least we have weathered the storm thus far relatively intact.~
END
IF ~~ THEN REPLY ~Things will probably get tougher, and I hope you can continue to stand with me in the face of such difficulties.~ GOTO KyBT01
IF ~~ THEN REPLY ~Sticking with me will probably bring more danger, and I can understand if you want to leave rather than face more trouble.~ GOTO KyBT02
IF ~~ THEN REPLY ~It does seem that way, and I'm sorry to have put you through this danger.~ GOTO KyBT02
IF ~~ THEN REPLY ~Easy for you to say. You didn't lose your soul.~ GOTO KyBT04
IF ~~ THEN REPLY ~Like it or not, you're part of this "misadventure", so live with it.~ GOTO KyBT04

CHAIN
IF ~~ THEN Z#KIYOB KyBT01
~Even if it were to be harder than it already has been, the certainty that you seek to put an end to the evil of this mage would be cause enough for me to stand by you and lend my arrows to your cause.~
END 
IF ~Global("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1pre
IF ~GlobalGT("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1post

CHAIN 
IF ~~ THEN Z#KIYOB KyBT02
~It's all right, and even if it were not evil that we faced, it would be wrong of me to abandon you after you have assisted as much in my case as you have.~
= ~And even if it were to be harder than it already has been, I would stand by you and lend my arrows to the cause of one of so true and of such generous spirit to <PRO_HISHER> companions.~
END 
IF ~Global("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1pre
IF ~GlobalGT("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1post

CHAIN 
IF ~~ THEN Z#KIYOB KyBT04
~Your upset is understandable. It can't be easy for you to have undergone that, and I respect you the more for it, that you are still with us and holding strong in your place as leader of this party. It would not sit well with me to abandon you now.~
END 
IF ~Global("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1pre
IF ~GlobalGT("OpenJonBedroom","GLOBAL",0)~ THEN GOTO KyBT1post

CHAIN
IF ~~ THEN Z#KIYOB KyBTend
~Very well, I hope for all our sakes you know what you're doing, <CHARNAME>. Meantime, it seems that this conversation has run its due course.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre
~What is most immediate is to find him before he can leave this stronghold, and venture to defeat him. Still, if his power is anything like I have heard from you earlier, and if the earlier... process... is any indication, we will have to step carefully.~
= ~Perhaps there is some way to swing the balance of battle in our favour, rather than risk confronting him in a futile engagement that will cost us all our lives.~
END
IF ~~ THEN REPLY ~If you are so afraid of him, you don't have to face him.~ GOTO KyBT1pre1
IF ~~ THEN REPLY ~We will face him head-on, and there is no need to fear his foul magics.~ GOTO KyBT1pre2
IF ~~ THEN REPLY ~What might you have in mind to make things more favourable for us?~ GOTO KyBT1pre3
IF ~~ THEN REPLY ~Perhaps it is best we engage him another time, when we are better prepared.~ GOTO KyBT1pre4

CHAIN 
IF ~~ THEN Z#KIYOB KyBT1pre1
~I am not afraid of him, nor of death or demise, but I do not see the point in needlessly throwing our lives away. If there is a way of preparing for something to better face it, then let us do that.~
= ~After all, I am sure that you also wish to have your soul returned to you, yes? Though the specifics of that process are far from certain, defeating this wizard is almost definitely a step towards that end.~
END
IF ~~ THEN REPLY ~I am the leader of this group, not you, and I will do as I see fit.~ DO ~IncrementGlobal("Break", "LOCALS", 1)~ GOTO KyBTend
IF ~~ THEN REPLY ~It's all right, I already have a plan of my own in mind.~ GOTO KyBTend
IF ~~ THEN REPLY ~What might you have in mind to improve our odds?~ GOTO KyBT1pre3
IF ~~ THEN REPLY ~Perhaps it is best we engage him another time, when we are better prepared.~ GOTO KyBT1pre4

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre2
~Then we might have to bear the consequences in terms of loss of life and our friends. Hopefully, victory might not be entirely out of reach, but I would really not wish a brash confrontation, so that victory will not come too dearly.~
END
IF ~~ THEN REPLY ~I am the leader of this group, not you, and I will do as I see fit.~ DO ~IncrementGlobal("Break", "LOCALS", 1)~ GOTO KyBTend
IF ~~ THEN REPLY ~It's all right, I already have a plan of my own in mind.~ GOTO KyBTend
IF ~~ THEN REPLY ~What might you have in mind to improve our odds?~ GOTO KyBT1pre3
IF ~~ THEN REPLY ~Perhaps it is best we engage him another time, when we are better prepared.~ GOTO KyBT1pre4

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre4
~There is no need for such a defeatist view, especially with your soul at stake, and we probably need to face him before we can leave this place.~
= ~Even if we could leave without facing him, it would be most unwise as who knows where he will go to next? Tracing him down later, if he leaves this place, or trying to penetrate this stronghold again, will probably be extremely difficult to say the least.~
END
IF ~~ THEN REPLY ~I am the leader of this group, not you, and I will do as I see fit.~ DO ~IncrementGlobal("Break", "LOCALS", 1)~ GOTO KyBTend
IF ~~ THEN REPLY ~Its all right, I already have a plan of my own in mind.~ GOTO KyBTend
IF ~~ THEN REPLY ~Since you are so intent on facing him, what do you have in mind to improve our odds?~ GOTO KyBT1pre3

CHAIN
IF ~~ THEN Z#KIYOB KyBT1pre3
~We need what allies we can get, and the only people that we might be able to obtain help from are the inmates of this stronghold. It may be a little callous and a bit difficult, but we can try to use them to aid us in the fight against Irenicus.~
= ~The worst that could happen is that if we fail to contain them, we can simply flee and leave them to their own devices. I'm pretty certain we can handle any one of them, though I'm not so sure about taking on the whole group at once.~
END
IF ~OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN GOTO KyBT2
IF ~!GlobalGT("DrowTalk","GLOBAL",4) 
!GlobalGT("SelfTalk","GLOBAL",2)~ THEN GOTO KyBT1end

CHAIN
IF ~~ THEN Z#KIYOB KyBT1end
~That should be all that I can think of, for now. It's a tough decision, but I would advise at least giving it a try, and if things don't work out we can always drop the idea.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post
~Next of course comes the question of how we are going to track him down, and perhaps slightly less urgently, how to deal with him. At least we have beaten him once, but the decease of our recent allies does prove a point.~
= ~If his powers are anything like we have seen, we will probably need a better plan than just facing him head-on in combat. Risks are expected, but it would be wise to tilt it in our favour however way we can.~
END
IF ~~ THEN REPLY ~If you are so afraid of him, you don't have to face him.~ GOTO KyBT1post1
IF ~~ THEN REPLY ~We will face him head-on, and there is no need to fear his foul magics.~ GOTO KyBT1post2
IF ~~ THEN REPLY ~What might you have in mind to make things more favourable for us?~ GOTO KyBT1post3
IF ~~ THEN REPLY ~Perhaps it is better to set aside the thought of pursuit for when we are better prepared.~ GOTO KyBT1post4

CHAIN 
IF ~~ THEN Z#KIYOB KyBT1post1
~I am not afraid of him, nor of death or demise, but I do not see the point in needlessly throwing our lives away. If there is a way of preparing for something to better face it, then let us do that.~
= ~Still, there might yet be some time between now and then, so I hope that we can take this respite to build ourselves up and improve our skills. Even if we do nothing else to prepare, that alone might be of some help.~
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post2
~Then we might have to bear the consequences in terms of loss of life and our friends. Hopefully, victory might not be entirely out of reach, but I would really not wish a brash confrontation.~
= ~Still, there might yet be some time between now and then, so I hope we can take this respite to build ourselves up and improve our skills, and hopefully that will make your expressed course of action more viable.~
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post3
~There is probably some time between now and the time we face him, so we can make use of the respite to better prepare ourselves and sharpen our skills.~
= ~Also, if we can get back to Athkatla we might pay a visit to Cromwell the Smith in the docks, we should be able to outfit ourselves much better with what he may be able to forge for us, provided we have the necessary materials, of course.~
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT1post4
~My sentiments exactly, <CHARNAME>, we should have plenty of time between now and the time we face him. Though there is the risk of your weakness growing, it's a risk we may not have a choice in undertaking.~
= ~Also, if we can get back to Athkatla we might pay a visit to Cromwell the Smith in the docks, we should be able to outfit ourselves much better with what he may be able to forge for us, provided we have the necessary materials, of course.~
EXTERN Z#KIYOB KyBT2

CHAIN
IF ~~ THEN Z#KIYOB KyBT2
~By the way, about your... transformation. Into a demonic avatar of a dead God, I believe it was.~
= ~How have you been coping with it? Should we expect more such intrusions into our party? If so, how would you prefer us to handle you, or rather, it? While trying to kill it might be an interesting challenge, it might prove fatal to you.~
END
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY ~Are you mad? Don't even think about doing that... and I sure hope that it won't be coming back.~ GOTO KyBT21
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY ~I'm pretty certain doing that will kill me, but I hope we've seen the last of it.~ GOTO KyBT21
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY ~If it comes back, don't try to fight, just run. For all our sakes.~ GOTO KyBT23
IF ~!GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY ~I have mastered that transformation, and we won't be seeing it again.~ GOTO KyBT24
IF ~!GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY ~There is no cause for concern, for I can control it now, and only in direst need will I use it.~ GOTO KyBT25
IF ~!GlobalLT("GivePowerSlayer","GLOBAL",1)~ THEN REPLY ~My control over the essence of Bhaal is established, and you need not worry, though our foes will quake before me.~ GOTO KyBT26

CHAIN
IF ~~ THEN Z#KIYOB KyBT21
~I hope so too, <CHARNAME>. Fleeing does seem preferable then, lest we hurt you, so I shall do just that. Still, in a corner, we might have little choice, and if the transformation comes at an inopportune time, it could spell the end of us all.~
= ~Let us journey onward then, and I hope this dark threat hovering over us is soon laid to rest. I may be able to handle my fears well enough, but I can't say the same for others.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT23
~I respect your decision. After all, fighting back might kill you, and that's assuming the rest of us prevail against it. Let us hope that we see no more of this creature.~
= ~Let us journey onward then, and I hope this dark threat hovering over us is soon laid to rest. I may be able to handle my fears well enough, but I can't say the same for others.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT24
~That is fine news, and it sets my mind at ease, no doubt those of others as well. This will do excellently, and we now can devote our energies to preparing ourselves to track down and confront our quarry.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT25
~That is good news, and it is good to know you will temper the use of your transformation, though it would be better, perhaps, to not use it at all. Demonic powers are to be feared for the havoc they can wreak and the corruption they can cause.~
= ~At least we don't have to worry about being surprised by the beast again, and can now devote our energies to preparing ourselves to track down and confront our quarry.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KyBT26
~Hearing that from you disturbs me, <CHARNAME>, and I wonder how this transformation has affected you. I rather you not use it at all, for such powers can cause havoc and corruption, and maybe even transform you irreversibly into a beast.~
= ~At least we don't have to worry about being surprised by the beast again, and can now devote our energies to preparing ourselves to track down and confront our quarry.~
EXIT




// PC with Kova

BEGIN ~Z#KOVAB~

IF ~InMyArea(Player1)
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaPC", "GLOBAL",0)~ THEN BEGIN PC1
SAY ~It's a rather eventful life you lead as an adventurer, <CHARNAME>. Being hunted against my will is upsetting enough for me, yet you almost seem to dive headlong into such adventures, of your own free will.~
IF ~~ THEN REPLY ~Evil must be met with a strong hand wherever it is encountered, and I will not shrink from what I must do.~ DO ~SetGlobal("BKovaPC", "GLOBAL", 1)~ GOTO PC1-1
IF ~~ THEN REPLY ~I don't do so of my own free will, but sometimes I must for the sake of those around me.~ DO ~SetGlobal("BKovaPC", "GLOBAL", 1)~ GOTO PC1-1
IF ~~ THEN REPLY ~The conflict that adventure brings is where the profit of it all lies, and I see no reason to avoid it.~ DO ~SetGlobal("BKovaPC", "GLOBAL", 1)~ GOTO PC1-3
IF ~~ THEN REPLY ~What I do with myself is none of your business, Kova.~ DO ~SetGlobal("BKovaPC", "GLOBAL", 1)~ GOTO PC1-4
END

IF ~~ THEN BEGIN PC1-4
SAY ~Ah, my apologies. I'll keep our future interaction to a minimum then.~
IF ~~ THEN DO ~IncrementGlobal("Break", "LOCALS", 1)
SetGlobal("BKovaPC", "GLOBAL", 50)~ EXIT
END

IF ~~ THEN BEGIN PC1-3 
SAY ~Really? I've never been fond of being at loggerheads with others. What profit be there in such unhappy business?~
IF ~~ THEN REPLY ~For experience, which governs our abilities and prowess, and is the root of power.~ GOTO PC1-3-1
IF ~~ THEN REPLY ~I enjoy the thrill of the kill, and the satisfaction of overcoming the odds to defeat mighty foes.~ GOTO PC1-3-2
IF ~~ THEN REPLY ~It does me good to know that a creature of evil will plague the world no longer.~ GOTO PC1-3-1
IF ~~ THEN REPLY ~The loot from the bodies of my foes makes the whole endeavour worth my while.~ GOTO PC1-3-4 
END 

IF ~~ THEN BEGIN PC1-3-4
SAY ~Well, that's a rather mercenary point of view I had thought you were above. Though it is true, and I've been surrounded by those who think in such a manner for the longest time, I still think the lives of others are above my material gain.~
= ~If such are your future plans, I wish no part in them.~
IF ~~ THEN DO ~IncrementGlobal("Break", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN PC1-3-2
SAY ~It would be a stretch for me to consider injury and close brushes with death as a source of entertainment, and killing for the sake of a challenge strikes me as neither wise nor good.~
= ~Performing such activities to prove our prowess to ourselves or to those around us hardly seems the way to go. I hope it will not be this way with me while I'm in your company.~
IF ~~ THEN DO ~IncrementGlobal("Break", "LOCALS", 1)~ EXIT
END

IF ~~ THEN BEGIN PC1-3-1
SAY ~To say that we grow through trials and conflicts does seem a fair statement. I sometimes feel as if I have grown much more through these past few months than I have over the many years before.~
= ~Still, it would be best to pick our quarrels only with those who deserve such. Yet there are likely more such as I consider myself to be, people who are not evil yet compelled to do what deeds they have taken to, in order to get by. Who are we to judge that their lives are to be ended with an uncaring blade?~
IF ~~ THEN REPLY ~Their deeds would have shown if they were good or otherwise, regardless of what they think, and they shall be dealt with accordingly.~ GOTO PC1-1-1
IF ~~ THEN REPLY ~The good of those around me is of utmost importance to me, and while I am no judge, I have to do what I must in such cases.~ GOTO PC1-1-2
IF ~~ THEN REPLY ~One will never know enough to judge, and so I act when compelled to by necessity or when I judge appropriate, lest in idleness more evil be done.~ GOTO PC1-1-2
IF ~~ THEN REPLY ~Their coming against me is reason enough to show that they probably mean ill to many others, and my ending of them is justified.~ GOTO PC1-1-1
END 

IF ~~ THEN BEGIN PC1-1
SAY ~That is good to know. Yet, how would one know what is best for others, and what is it that is evil that needs to be done away with completely?~
= ~There are likely more such as I consider myself to be, people who are not evil yet compelled to do what deeds they have taken to, in order to get by. Who are we to judge that their lives are to be ended with an uncaring blade?~
IF ~~ THEN REPLY ~Their deeds would have shown if they were good or otherwise, regardless of what they think, and they shall be dealt with accordingly.~ GOTO PC1-1-1
IF ~~ THEN REPLY ~The good of those around me is of utmost importance to me, and while I am no judge, I have to do what I must in such cases.~ GOTO PC1-1-2
IF ~~ THEN REPLY ~One will never know enough to judge, and so I act when compelled to by necessity or when I judge appropriate, lest in idleness more evil be done.~ GOTO PC1-1-2
IF ~~ THEN REPLY ~Their coming against me is reason enough to show that they probably mean ill to many others, and my ending of them is justified.~ GOTO PC1-1-1
END 

IF ~~ THEN BEGIN PC1-1-1
SAY ~If men are to be judged by deeds and deeds alone, then I am as guilty as any of those back among the Shadow Thieves.~
= ~But so are you, aren't you? For the lives ended at your hand, for whatever motivations, that you have killed and killed many should be reason enough. Who then is righteous? Is there such a thing?~
= ~I feel as if I am chasing after the wind, grasping at water with my hands. Is it worth it to die for something so intangible, something so meaningless? I do not know.~
= ~But enough. I must be wearing your patience thin.  It is a question of my own, for my own self, and my answer can only be my own.~
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PC1-1-2
SAY ~I see. You have spoken true, yet it has only disturbed me. If what is good and what is best is as subjective as it seems to be, then maybe my search for all that truth and righteousness is but a chasing after the wind.~
= ~Is it worth it to die for something so intangible, something so meaningless? I do not know.~
= ~But enough. I must be wearing your patience thin. It is after all, a question of my own, for my own self, and my answer can only be my own.~
IF ~~ THEN EXIT
END

CHAIN
IF ~InMyArea(Player1)
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaPC", "GLOBAL", 1)
GlobalGT("BKKChat","GLOBAL",3)~ THEN Z#KOVAB PC2
~It feels somewhat novel, to be travelling in the company of such persons as yourselves, especially with our presence so openly undisguised in the city.~
DO ~SetGlobal("BKovaPC", "GLOBAL", 2)~
= ~I can't say it doesn't frighten me to some extent. To know that our paths are watched by our foes, and yet we still walk onwards as we do.~
END
IF ~~ THEN REPLY ~We walk the path of truth and light, and whatever evil gets in our way, we will put an end to it.~ GOTO PC2-1
IF ~~ THEN REPLY ~It does give our foes some knowledge about us, but I don't wish to stoop to slinking around as if I were guilty of something.~ GOTO PC2-1
IF ~~ THEN REPLY ~I would prefer more discretion myself, but it seems my name is a bit too well known for that.~ GOTO PC2-3
IF ~~ THEN REPLY ~ If not for you and all those hunting you, we'd have little need of discretion in the first place.~ GOTO PC2-4

CHAIN
IF ~~ THEN Z#KOVAB PC2-4  
~That is indeed close to truth, and I apologise for jeopardising everyone by virtue of my presence in this party.~
= ~Henceforth, I shall try not to be a greater burden than I already am, by desisting from conversation that may distract you from the road ahead.~
DO ~IncrementGlobal("Break", "LOCALS", 1)
SetGlobal("BKovaPC", "GLOBAL", 50)~ EXIT

CHAIN
IF ~~ THEN Z#KOVAB PC2-1
~That is one way of looking at it, though a view rather removed from my own. Apart from the obvious fact that I am at least guilty of some matters, I also doubt that our foes are easily reckoned with. Erring on the side of caution is always preferable to being caught offguard.~
EXTERN Z#KOVAB PC2-2

CHAIN
IF ~~ THEN Z#KOVAB PC2-3
~Yes, that is so. There are many advantages to remaining a mere unknown, as I would be if not for the price upon my head. Yet it seems we have little choice but to make do with the current state of affairs.~
EXTERN Z#KOVAB PC2-2

CHAIN
IF ~~ THEN Z#KOVAB PC2-2
~Still, there might be other ways of avoiding pursuit, and while I can only make educated guesses on my part based on my knowledge of the inner workings of my former organisations, I hope that they may be of some use in keeping us out of harm's way.~
END
IF ~~ THEN REPLY ~How do you think we can better deal with the Cowled Wizards coming after us?~ GOTO PC2-cowl
IF ~~ THEN REPLY ~Is there a way to shake off the Shadow Thieves that are hunting us?~ GOTO PC2-shadow
IF ~~ THEN REPLY ~What do you think of the law enforcers that the government might send our way?~ GOTO PC2-law
IF ~~ THEN REPLY ~That's all right, what I already know should be sufficient for now.~ GOTO PC2-End

CHAIN
IF ~~ THEN Z#KOVAB PC2-End
~Very well, I hope that what information we have on hand will be sufficient to deal with what threats may arise.~
= ~I must admit, I am rather unused to being part of such a large and noticeable group, and even more so with companions who trust me to defend their backs, and for me to expect no less of them as well.~
= ~Still, I am grateful, at least to an extent, that you have let me be part of this band. If it weren't for the fact that danger might spring up around us at any time, I think I should not find having such company overly disagreeable.~
EXIT

CHAIN
IF ~~ THEN Z#KOVAB PC2-law
~I do not know that much about the law enforcers, and Kiyone would probably know more. From what I gather, most of the arm of order at large are the Amnish Guard, and the Knights of the Order as well.~
= ~For most part, the Amnish Guard protect the cities within Amn, while the Knights more often venture out to hunt down particularly notorious villains, which I think, would probably include me.~
= ~Given Kiyone's rapport with the side of the law though, I think so long as we can find evidence to keep them regularly informed of progress on the case, they should largely leave us to own devices.~
END
IF ~~ THEN REPLY ~How do you think we can better deal with the Cowled Wizards coming after us?~ GOTO PC2-cowl
IF ~~ THEN REPLY ~Is there a way to shake off the Shadow Thieves that are hunting us?~ GOTO PC2-shadow
IF ~~ THEN REPLY ~That's all right, what I already know should be sufficient for now.~ GOTO PC2-End

CHAIN
IF ~~ THEN Z#KOVAB PC2-cowl
~The Cowled Wizards practise a secrecy even I find somewhat disturbing, and though I've been with them for a time I haven't much inkling of how many hidden libraries and nests of lore they have around Athkatla, not to mention here and there in other parts of Amn as well.~
= ~Their central base is doubtless Athkatla though, and as such they are unlikely to venture out of the city in pursuit of us. They may be slightly easier to deal with if we have enough ranged weapons and can pick them off one by one, especially ranged weapons that have additional damage to slip past their protections.~
= ~Corneil does appear to be their current main contact, and buying a license is probably a good idea, unless we want reinforcements coming in midway even as we bring down their magical defences. We might even be able to bribe him to get them off our back for a time, though I fear the price will be exorbitant.~
= ~Apart from that, most Cowled Enforcers apply a large variety of defensive spells on themselves before engaging, so if we are quick enough, we may be able to slip out of sight before they have their offensive spells readied, and return at a later time to pick them off, preferably after their spells have expired.~
= ~That's about all I can say for dealing with them at the moment, I'm afraid. How we will fare next time, will have to be seen.~
END
IF ~~ THEN REPLY ~Is there a way to shake off the Shadow Thieves that are hunting us?~ GOTO PC2-shadow
IF ~~ THEN REPLY ~What do you think of the law enforcers that the government might send our way?~ GOTO PC2-law
IF ~~ THEN REPLY ~That's all right, what I already know should be sufficient for now.~ GOTO PC2-End

CHAIN
IF ~~ THEN Z#KOVAB PC2-shadow
~I doubt we'll be able to shake them off. Even as an individual I wasn't sure how long I could stay hidden from them, and as a noticeable group I doubt that we'd stand any chance whatsoever of moving along undetected by them.~
= ~Given the long arm of the Shadow Thieves and the hefty reward on me, they can probably show up just about anywhere. It would be well to have spells to spot assassins before they can deliver that devastating blow.~
= ~However, since it's mainly Seida who wants me dead and I suspect, who put up the bounty on my head, it should be well if we can obtain the backing of some other, more influential Shadow Thieves. That way, should we play our cards right they might be able to call off at least some of the thieves.~
= ~Still, it is probably best that I remain hidden from any other Shadow Thief, as they probably all know my face better than their own hands by now. If I am spotted by one of them, I cannot think of any outcome except for bloodshed.~
END
IF ~~ THEN REPLY ~How do you think we can better deal with the Cowled Wizards coming after us?~ GOTO PC2-cowl
IF ~~ THEN REPLY ~What do you think of the law enforcers that the government might send our way?~ GOTO PC2-law
IF ~~ THEN REPLY ~That's all right, what I already know should be sufficient for now.~ GOTO PC2-End

CHAIN
IF ~InMyArea(Player1)
GlobalGT("AsylumPlot", "GLOBAL", 40)
Global("KvBT", "GLOBAL", 0)~ THEN Z#KOVAB KvBT0
~I never thought I'd be saying this after all that you have done for me, but it seems having a child of a God on my side also means I have to deal with their enemies.~
DO ~SetGlobal("KvBT", "GLOBAL", 1)~
= ~It did seem very much like fiction tacked onto the stories of you from the North, but it's certainly beyond dispute now, and I think it would really make me feel a lot better to know more about it.~
== Z#KOVAB IF ~OR (2) 
GlobalGT("DrowTalk","GLOBAL",4)
GlobalGT("SelfTalk","GLOBAL",2)~ THEN
~Your recent transformation does also make this exceptionally disturbing, at least to myself, and I'm sure most others probably feel the same way, I think.~
== Z#KOVAB ~It's not everyday that I ask about divinity, but I'd be grateful for any information about your condition that you might be willing to discuss.~
END 
IF ~!GlobalGT("DrowTalk","GLOBAL",4) 
!GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~I fear if I do not recover my soul, my weakness will grow and I will not have long to live.~ GOTO KvBT06
IF ~!GlobalGT("DrowTalk","GLOBAL",4)
!GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~I've lost my divine soul, and I need to get it back from Irenicus!~ GOTO KvBT05
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~Without my soul I cannot control the beast within, and unless I get it back I fear it could dominate me permanently.~ GOTO KvBT04
IF ~GlobalLT("GivePowerSlayer","GLOBAL",1)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~The beast within me born of Bhaal took over and raged uncontrollably, but I will yet dominate it and bring it under my control.~ GOTO KvBT03
IF ~GlobalGT("GivePowerSlayer","GLOBAL",0)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~Something inside helped me contain the power of the avatar of Bhaal, but I'm not going to use it unless I need to.~ GOTO KvBT02
IF ~GlobalGT("GivePowerSlayer","GLOBAL",0)
OR(2) 
GlobalGT("DrowTalk","GLOBAL",4) 
GlobalGT("SelfTalk","GLOBAL",2)~ THEN REPLY ~Don't worry, for I have learned to harness the power of Bhaal, and only my enemies shall tremble as I loose my wrath upon them.~ GOTO KvBT01

CHAIN
IF ~~ THEN Z#KOVAB KvBT01
~Hearing you say that in such a manner makes me wonder at what price such control came at. Though it would be advantageous to turn such power against our foes, I can't help but rather that I see less of that creature than more.~
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB  KvBT02
~That is of some relief to hear. Though it is probably a powerful and effective weapon, I think the preference towards restraint bodes well, and personally, I'd rather see less of such savagery than more.~
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB KvBT03
~Dominating it would indeed be preferable to letting it raged unchecked against it. Perhaps I have not the strength of character you have, but I'd personally rather that we should have seen the last of it.~
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB KvBT04
~That is rather disturbing and unsettling news, if not altogether unexpected. Normally I'd value my skin more and take leave of you while I may, but after all that you have done for my cause I will do my best to assist you in this endeavour of yours.~
EXTERN Z#KOVAB KvBT0ext

CHAIN
IF ~~ THEN Z#KOVAB KvBT0ext
~Still, what of your soul? It seems to be so important to our foe that he'd take pains to have such an elaborate arrangement just to gain your soul, and so significant that once you were reft of him he no longer considered you any threat.~
END
IF ~~ THEN REPLY ~I fear if I do not recover my soul, my weakness will grow and I will not have long to live.~ GOTO KvBT06
IF ~~ THEN REPLY ~It is the essence of my divinity that he took from me, and I will to get it back from him!~ GOTO KvBT05

CHAIN
IF ~~ THEN Z#KOVAB KvBT05
~That is a task easier said than done, but your personal prowess is considerable, as are those of many in this company. So long as no other... unhealthy... changes come upon us, we might yet stand a chance against that mage.~
EXTERN Z#KOVAB KvBT1

CHAIN
IF ~~ THEN Z#KOVAB KvBT06
~Certainly that seems a rather unpleasant outcome. I hope for your sake you can keep up the strength for longer, you'd probably need it to regain your soul, and also regaining your soul isn't going to do you much good if you should die on us.~
EXTERN Z#KOVAB KvBT1

CHAIN
IF ~~ THEN Z#KOVAB KvBT1
~Nonetheless, taking Irenicus on is another challenge all in itself, and I'm not sure how we may certainly prevail against him, or more pressingly, how after defeating him we might be able to restore you.~
= ~Certainly we wouldn't have in place the devices and set-up that he had to wrench your soul from you, and probably have neither the time nor knowledge to discover how to reverse the process the way he did.~
= ~How any person's soul link up with magic is an unknown thing for me, but what might happen if we manage to defeat him and fail to return your soul to you might well prove very dangerous to yourself, or you might just lose your soul forever and that's that.~
END
IF ~~ THEN REPLY ~Are you trying to say I shouldn't go after Irenicus?~ GOTO KvBT11
IF ~~ THEN REPLY ~What do you think we can do then, about this situation?~ GOTO KvBT12
IF ~~ THEN REPLY ~I will take risks so long as I stand a chance of recovering what I have lost.~ GOTO KvBT13
IF ~~ THEN REPLY ~You are right, but I have to risk it or I won't stand a chance.~ GOTO KvBT14
IF ~~ THEN REPLY ~Well, you can't expect me to just go up and ask him how to reverse the process.~ GOTO KvBT15

CHAIN
IF ~~ THEN Z#KOVAB KvBT11
~No, of course not! If nothing else, I think he should pay for the atrocities he did against you and your party, I guess. Just that it would be well to be prepared for the worst in case things don't turn out as you expect.~
= ~That's about all I can think of at the moment, there isn't much else that I can say which would help. I'll try my best to assist as I may, and hopefully that will count for something, apart from giving you more enemies to come against.~
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT12
~I'm not sure, but we should try to go after him and foil his schemes as we might, even if a direct battle is not the best thing to engage in. Hopefully the chance will present itself regarding how we may recover your soul from him and destroy his evil completely.~
= ~That's about all I can think of at the moment, there isn't much else that I can say which would help. I'll try my best to assist as I may, and hopefully that will count for something, apart from giving you more enemies to come against.~
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT13
~If that is your will and your wish, so be it. After all, I'm not the one whose life is at stake here. Let us just be careful then, and not take more risks than is necessary. It might be satisfying to kill him anyway, even if you didn't get your soul back.~
= ~That's about all I can think of at the moment, there isn't much else that I can say which would help. I'll try my best to assist as I may, and hopefully that will count for something, apart from giving you more enemies to come against.~
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT14
~That much is true at least, a somewhat sobering truth. You haven't really much choice, have you? I must admit I envy you, at least you haven't a choice in this, whereas I do, yet I am still on the path I walk though I just know I don't stand a chance.~
= ~Well, there isn't much else that I can say which would help. I'll try my best to assist as I may, and hopefully that will count for something, apart from giving you more enemies to come against.~
EXIT

CHAIN
IF ~~ THEN Z#KOVAB KvBT15
~Yes, indeed. I must admit it is some relief to see your sense of humour has survived the loss of your soul. If that is a sign of things to come I should think it a good sign, but one never really knows. The risks are real if we go after him, but they become certainties if we don't.~
= ~That's about all I can think of at the moment, there isn't much else that I can say which would help. I'll try my best to assist as I may, and hopefully that will count for something, apart from giving you more enemies to come against.~
EXIT


// Kova / Kiyone Stage 0 

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",0)~ THEN Z#KOVAB KKc1
~Kiyone, is there any other reason you came down South? What about the other case you were handling?~
DO ~SetGlobal("BKKChat","GLOBAL",1)~
== Z#KIYOB ~There isn't another case, Kova. Just yours.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~I thought you said you'd attend to my case only after you were done with the other one.~
== Z#KIYOB ~That other one was your case, Kova. As you more or less already know. Which makes me wonder as to the real reason why you ask.~
== Z#KOVAB ~I just wanted to clarify. It sure sounded like you had another case on your hands, Kiyone.~
== Z#KIYOB ~Look, I just didn't know it was yours at the time I met you. You weren't exactly forthcoming on your issues with the Council, or your background, or even your name, Mr Shiroka.~
== Z#KOVAB ~And how was I to know you were on my case? It's not as if you were dropping any clues.~
== Z#KIYOB ~We're expected to keep our cases confidential, unless we're working with someone on it. I didn't have all the details with me, either.~
== Z#KOVAB ~Right. I still don't get why you're doing all this for me, though.~
== Z#KIYOB ~I've told you before, Kova, I'm not doing this for you. I'm just doing what is right, and what the law requires of me.~
== Z#KOVAB ~Travelling with a dangerous criminal you were sent out to apprehend hardly seems like what the law requires.~
== Z#KIYOB ~Let's not start that argument again. I do what is right - beyond that is none of your business.~
== Z#KOVAB ~If you say so, then.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",1)~ THEN Z#KOVAB KKc2
~Kiyone, do you miss the North?~
DO ~SetGlobal("BKKChat","GLOBAL",2)~
== Z#KIYOB ~Not entirely. No doubt if we were to be able to step back from all the bloodshed and see the softer side of Amn, it'd prove to be a reasonably pleasant place.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~I see. So if you closed this case by handing me over to the authorities, you'd more or less be free to return back north or enjoy the softer side of life in this country.~
== Z#KIYOB ~Unlikely. There will always be injustice that needs to be addressed.~
== Z#KOVAB ~So the longer you're stuck helping me, the longer you're kept from righting other wrongs, yes?~
== Z#KIYOB ~Yes, that would appear to be the case. Barring those that we run across.~
== Z#KOVAB ~So why do you not turn me in, then?~
== Z#KIYOB ~Have you a death wish, Kova? No, that cannot be so.~
= ~It is pride, isn't it? That you should do me a favour by opening my eyes to reality, to see that my motives are naive and my stand flawed?~
= ~Or to show me that I have feelings mixed up in this, turning this exercise into one born of impure motives and selfish interests?~
== Z#KOVAB ~I know you feel, but I do not see what impurity or selfishness there is in such. Is it so hard to admit that this "exercise", as you call it, matters more to you than just that?~
== Z#KIYOB ~It matters to me because it concerns justice. Feelings have no place in a case, for they distort judgment and affect impartiality. I know what you are insinuating, though.~
= ~When we came South, we were strangers who were starting to be friends, and I have not forgotten that. However, that has to be behind us, if we are to perform satisfactorily on this case.~
== Z#KOVAB ~Is that so? Didn't your feelings help you? To realise that Shiroka is Kova Kashiro? And to feel that he is innocent? Though the truth of that remains to be seen, of course...~
== Z#KIYOB ~You do not know me well enough to judge. Feelings they were, but a specialised sort. Call them intuition, professional hunches, or a detective's instinct. These serve me well, others are but stumbling blocks.~
== Z#KOVAB ~I do not see why feelings have nothing to do with this. Why do you treat your own feelings so cheaply? Don't they matter to you?~
== Z#KIYOB ~Not on a case. As to your motives for questioning - do you presume to think I feel something for you? The truth is that you are a suspect I am investigating. I would be in grave danger if your presumptions were true, and you as guilty as everyone else believes.~
= ~Why have this conversation at all, then? It could well be that you either feel something for me, or your pride is the one speaking.~
== Z#KOVAB ~I feel nothing for you, Kiyone. You aid me and you serve my interests. Beyond that there is nothing.~
== Z#KIYOB ~Then, be you innocent or guilty, I pity you and your pride.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",2)~ THEN Z#KIYOB KKc3
~We didn't end our last two conversations on the best of notes, Kova.~
DO ~SetGlobal("BKKChat","GLOBAL",3)~
== Z#KOVAB ~No, we didn't.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~I'd like to apologise. If for no other reason, it would be detrimental to us working together.~
== Z#KOVAB ~Is that it?~
== Z#KIYOB ~No, not exactly. There are some matters that I am curious about.~
== Z#KOVAB ~I'll answer what I choose to answer, whether or not there has been an apology made to me.~
== Z#KIYOB ~If you say so. Believe what you will, I'd have apologised even if there was no question I wished to ask.~
= ~So, how was it that you came down South with me, Kova? Why do you still remain here, when you could choose to put this all behind, by heading elsewhere?~
== Z#KOVAB ~Well, I did intend to leave, but while travelling north I met a lady on her way here for some official duty of sorts. I was understandably taken in, for she was such an interesting individual, an altogether lovely, most beautiful and...~
== Z#KIYOB ~Look, I asked for an honest answer, not a tirade of flattery, Kova. Answer, without doing me the disservice of adding untrue detail to your narrative.~
== Z#KOVAB ~If you say so. After all, you should know best as to whether it is mere flattery or otherwise.~ 
= ~Anyway, quite apart from her agreement to look over my case and my curious desire to be absolved of my crimes, most of my interest came from imagining the look on her face when she would review my details.~
== Z#KIYOB ~We're both pragmatic people, Kova, even if it is sometimes to differing ends. You expect me to believe you remain down south, putting yourself in danger, simply to see a pretty face curdle? Which, by the way, never happened.~
== Z#KOVAB ~Well, truth be told, I am pretty much wondering if I could gain the absolution you are so sure I will receive. I find it a rather interesting thought though - after a lifetime on the wrong side of the law, that I could be on the right side of it? Amusing, if nothing else.~
== Z#KIYOB ~Gambling with your life?~
== Z#KOVAB ~Not quite. Just call it an extreme measure to prove that you, my dear lady, are so completely wrong in your ideals of justice and law.~
== Z#KIYOB ~My, so you're raising the stakes for both of us, aren't you? Impressive. Though I think there's still more chips on the table.~
== Z#KOVAB ~Yes, I'm glad we both agree on that point. Interesting, isn't it?~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",3)~ THEN Z#KIYOB KKc4
~So now that we are working together, what would you consider to be our best course of action?~
DO ~SetGlobal("BKKChat","GLOBAL",4)~
== Z#KOVAB ~If it weren't for that whole lawfulness course of yours, I'd say find Seida and kill him, then bribe everyone else to leave me alone.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~Kova!~
== Z#KOVAB ~And to get them to tell you that I'm innocent.~
== Z#KIYOB ~Thank you very much, but I already know that you're innocent. Based on your word, of course.~
== Z#KOVAB ~So you don't actually know that I'm innocent.~
== Z#KIYOB ~That's why I am gathering evidence, to show that you are innocent.~
== Z#KOVAB ~Look, I don't need a bunch of strangers telling me what I did or did not do. I know what I did, no matter how it looks like to the rest of you, and I don't have prove it to anyone.~
= ~So, if we're still going to remain around here, it's most effective and practical to kill those who really want me dead, bribe the rest, then we can each get on with our own lives.~
== Z#KIYOB ~No, I want things done the right way - evidence, acquittal, and everything. Besides, there's enough killing and corruption without us adding to it.~
== Z#KOVAB ~Right. You simply don't believe I'm innocent, do you?~
== Z#KIYOB ~If I truly thought that, you'd be in custody by now. Without proof though, no one will ever know for sure.~
== Z#KOVAB ~Bah, I'd know. That's enough.~
== Z#KIYOB ~If it were, you wouldn't be here, would you?~
== Z#KOVAB ~If it takes evidence to convince someone who knows me that I am innocent, that person may as well not know me.~
== Z#KIYOB ~Who knows a man, Kova? Who knows what lies within anyone's heart?~
== Z#KOVAB ~No one does, just as no one knows the deceitfulness of a man's heart, nor the truth that might lie within.~
== Z#KIYOB ~Well and truly spoken. Though I suppose that is expected from one who has been among thieves.~
== Z#KOVAB ~As I find it interesting from one among the lawkeepers, though only partially so, in this case.~
== Z#KIYOB ~I didn't make this world. I just see it as it is, no more and no less.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",4)~ THEN Z#KOVAB KKc5
~You don't trust me, do you, Kiyone?~
DO ~SetGlobal("BKKChat","GLOBAL",5)~
== Z#KIYOB ~I trust you to a certain extent, based on what I know of you. It is important to set all things in measure according to informed judgment.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~Which depends on what you know. Though, as earlier mentioned, you can't possibly know enough of anyone to be absolutely certain of anything.~
== Z#KIYOB ~Correct. In any case, directly presented information tends to be biased, and I can only draw so much grounds for trust so much based on such.~
== Z#KOVAB ~If I didn't agree so much with your words, I'd be tempted to reconsider placing my case in your hands.~
== Z#KIYOB ~At least you acknowledge trust, as well.~
== Z#KOVAB ~Just enough to put my case in your hands.~
== Z#KIYOB ~I think it's a bit more than that, but I could be wrong of course.~
== Z#KOVAB ~You have an interesting way of phrasing what you mean to say.~
== Z#KIYOB ~I'd rather be less presumptuous than more. After all, neither of us are just what we make ourselves out to be.~
== Z#KOVAB ~Who is less on the outside than what he is on the inside, except the wicked?~
== Z#KIYOB ~And you have an interesting way of complimenting yourself. We're in the same boat, apparently, at least for this time and season.~
== Z#KOVAB ~Interesting, is it not? We're both on different sides of the law, yet both on the same side as the other. I can't say though, how long this state of affairs would last.~
== Z#KIYOB ~Long enough for this case to be settled.~
== Z#KOVAB ~And after that? Assuming I live long enough for that to make a difference.~
== Z#KIYOB ~Then we'll just have to see if you do live long enough to see what happens.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",5)~ THEN Z#KIYOB KKc6
~You don't really think this course of action is going to lead you to your death, do you?~
DO ~SetGlobal("BKKChat","GLOBAL",6)~
== Z#KOVAB ~Actually, I do. As I've hinted a few times.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~This is unlike you. If that were the case, you wouldn't remain. You're too sensible for that.~
== Z#KOVAB ~I must admit, I am a little curious who will get to do me in for good. Do you think it would be the Shadow Thieves or the Cowled Wizards? Or maybe your good friend Bylanna?~
== Z#KIYOB ~Kova... why are you thinking such thoughts? Surely certain death is not your only fate in the outcome of this case.~
== Z#KOVAB ~That's what you say, since you are committed to justice and truth. Whether or not that actually entails my death is something else, so long as the truth comes to light your purpose will have been served adequately.~
== Z#KIYOB ~It is not that way, Kova. While a posthumous pardon is not something I have never striven towards, it... truly would not be what I would like to see in this case.~
== Z#KOVAB ~Oh really? What makes this case so special?~
== Z#KIYOB ~Then what makes you remain here, if you are so certain it will lead to your death?~
== Z#KOVAB ~And what makes you so certain I'm innocent? You never had anything to begin with, since we never spoke of it directly in the first place.~
== Z#KIYOB ~It's not what you say outright, but what you don't say, that speaks louder.~
== Z#KOVAB ~Since you're so good at knowing that, I wonder why you even ask why I stick around.~
== Z#KIYOB ~Because I want you to know, that you're not staying here for yourself, but for something else. You just want, for once in your life, for others to know that you'd never do such things, and to want to show that you are capable of some good.~
== Z#KOVAB ~And so you're saying that I'm letting myself die to prove a point to others.~
== Z#KIYOB ~Yes.~
== Z#KOVAB ~Let me tell you then, you've got it all wrong. I am not about to do something so foolish as that, unlike you. So much for thinking you were sensible.~
== Z#KIYOB ~If you are going to insult me, at least make some sense while you are at it.~
== Z#KOVAB ~Just look at yourself! Up against the largest criminal organisation south of Waterdeep, and the government of Amn, and then the Cowled Wizards as well. Any one of these three is big enough to make your Sentinels look like a nursery for adventurers.~
= ~Your foolish pride is going to get us all killed. My death at least, wouldn't give much cause for mourning, but I can't say the same for others.~
== Z#KIYOB ~Justice and truth will prevail. Or we perish in its service.~
== Z#KOVAB ~You believe in justice, in truth, do you? No, you don't really. You see the world as it really is, don't you? A place where even the ones who serve the law are corrupt beyond what is acceptable.~
= ~Yet you persist, you press on, and you don't even serve a God, nor serve a dream. What are you trying to prove, what point are you trying to make? This is futile, but you fight on, just to make a point. Just to show that you can make a difference.~
== Z#KIYOB ~No, it's not like that, not like that at all... it is NOT futile.~
== Z#KOVAB ~So you say, and you are quite willing to give it your all, give up your all, which is your choice. But don't be so selfish and lead us down to be sacrifices for your pride.~
== Z#KIYOB ~Damn you...~
== Z#KOVAB ~Only the truth hurts, Kiyone. Nothing else would.~
== Z#KIYOB ~Just shut your damned mouth up.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("BKKChat","GLOBAL",6)~ THEN Z#KIYOB KKc7
~It might be as you have said. It might not make a difference, and all I've lived for, all I've done, is just a lie, my life a dream blown on by the hot air of my pride.~
DO ~SetGlobal("BKKChat","GLOBAL",7) SetGlobal("KKRomance","GLOBAL",1)~
= ~Your case.. this case, the next. What difference does it make to me? Just another person, passing by along the road. I help who I may help, and beyond that, is none of my concern.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
= ~But for you.. your life, your death, everything. You struggle.. and then it is over. You have more to lose, yet you remain. Why?~
== Z#KOVAB ~I tell you why.. because I am cursed. And you know what with?~ 
= ~With goodness... oh yes. Now if I were an ordinary, obedient Shadow Thief, like all the rest, I wouldn't have batted an eyelid as to our mission objective.~
= ~I wouldn't have murdered the Guildmaster's son, and I wouldn't be in this mess now. Who knows, I might even have become a top level operative within both the Cowled Wizards and the Shadow Thieves.~
== Z#KIYOB ~And that is the reason why you are trying to prove a point to the world, that you are innocent, through me. And you want to, need to, believe in something, that there is some good in this world, and some good inside of you.~
== Z#KOVAB ~And you know that, because that is what you need and want, as well.~
== Z#KIYOB ~Yes... I suppose so. We are the same, after all, I guess.~
== Z#KOVAB ~So much for practicality, so much for good sense. Pathetic.~
== Z#KIYOB ~It seems that our needs take precedence over what we know. A disagreeable state of affairs, but perhaps not for the worse.~
== Z#KOVAB ~Perhaps. But it is not the same for me, as it is for you.~
= ~You are innocent of all crimes, and you have ever been within the light. Raised in light, and risen up in merit, and shining with truth. People look up to you, as they ever will, and you cannot be anything else less than true.~
= ~I am something else entirely. All those I've ever walked among are the lawless, the corrupt and the tyrannical, and those are all I've served. Born in darkness, raised in shadows, fleeing into corruption and now mired in treachery through treachery.~
= ~You are all I am not, and never shall be. The light was always one with you, but there is no place in it for one brought forth in darkness.~
== Z#KIYOB ~Maybe. But you are not like them.~
== Z#KOVAB ~But I am one of them. Whether I like it or not... I was raised that way.~
== Z#KIYOB ~Things may yet change, you never know.~
== Z#KOVAB ~I don't believe that. I'm just going to die on this vain excursion to try to show I'm not like the rest of them, and that'll be the end of that.~
== Z#KIYOB ~You won't. I won't let that happen, and you won't let it happen either.~
== Z#KOVAB ~How amusing that one who knows me less than myself would have more faith in myself.~
== Z#KIYOB ~I doubt that will change as I get to know you better, so get used to it.~
== Z#KOVAB ~Thank you, Kiyone.~
== Z#KIYOB ~You're welcome.~
EXIT

// KKDream1

CHAIN
IF ~Global("KKDream1", "GLOBAL", 1)
AreaType(FOREST)
InParty("Kova")
InParty("Kiyone")
Global("KKRomance", "GLOBAL", 0)~ THEN Z#KIYOJ KKDream11
~Look, <CHARNAME>.~
= ~Be ready to rouse the rest up in case he does something, or tries to run.~
END
IF ~~ THEN REPLY ~Very well, I'll keep an eye out for you.~ GOTO KKDream11re1
IF ~~ THEN REPLY ~Don't bother me, he's your own liability.~ GOTO KKDream11re2

CHAIN
IF ~~ THEN Z#KIYOJ KKDream11re1
~Thank you, <CHARNAME>.~
DO ~EquipRanged() SetSequence(SEQ_READY)
SetGlobal("KKDream1", "GLOBAL", 2) SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ KKDream11re2
~If that's the way you want to take things, so be it. I still have a job to do.~
DO ~EquipRanged() SetSequence(SEQ_READY) IncrementGlobal("Break", "LOCALS", 1)
SetGlobal("KKDream1", "GLOBAL", 2) SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1", "GLOBAL", 2)~ THEN Z#KIYOJ KKDream12
~So, where do you think you're going?~
DO ~SetGlobal("KKDream1", "GLOBAL", 3)~
== Z#KOVAJ ~Hereabouts, just to take a walk in the fresh air away from the camp. Don't mind me, I'm used to not getting enough rest.~ 
= ~Never did get much sleep among the Shadow Thieves anyway. And I just need to think a little.~
== Z#KIYOJ ~Is that so? Think about what?~ 
== Z#KOVAJ ~Things I'd rather forget, but they seemed to have returned not so long ago. Sleep has this habit of picking unpleasant memories up, and hasn't been so restful of late.~
== Z#KIYOJ ~I can say the same for my sleep, though that unease appears to be well justified.~
== Z#KOVAJ ~Don't be foolish. If I wanted to be out of Amn I would have left instead of waiting for you to pick me up in the Windspear Hills.~
== Z#KIYOJ ~I do not understand your motivations, but I have my position to keep to, as you well know.~
DO ~EquipMostDamagingMelee() SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1", "GLOBAL", 3)
Range("Kiyone", 5)~ THEN Z#KOVAJ KKDream13
~Yes, I can see that very well.~
== Z#KIYOJ ~We can come to an arrangement, I'm sure. I can stay up with you to keep you company, and in return you can do your thinking closer to the rest of us.~
== Z#KOVAJ ~Persistent, aren't you? You know as well as I do that I'm not going anywhere.~
== Z#KIYOJ ~Better safe than sorry. Isn't that so, <CHARNAME>? ~
END
IF ~~ THEN REPLY ~Yes, keep that fellow close to you and make sure he doesn't get up to any mischief.~ EXTERN Z#KOVAJ KKDream13re1
IF ~~ THEN REPLY ~Erring on the side of caution is always preferable to regretting later on.~ EXTERN Z#KOVAJ KKDream13re1
IF ~~ THEN REPLY ~Actually, I don't see what's wrong with him going for a walk if he can't rest.~ EXTERN Z#KIYOJ KKDream13re2
IF ~~ THEN REPLY ~Relax, he won't leave us, so you may as well let him walk a little if he wants to.~
EXTERN Z#KIYOJ KKDream13re2

CHAIN
IF ~~ THEN Z#KOVAJ KKDream13re1
~It appears I haven't much of a choice. Very well, I will just sit here and think on what I will.~
DO ~IncrementGlobal("Break", "LOCALS", 1)~
== Z#KIYOJ ~I will be staying up as well. Feel free to share with me anything that might weigh particularly on your mind.~
== Z#KOVAJ ~After that recent display of trust, I doubt I will. Good <DAYNIGHT>, Kiyone.~
DO ~SetGlobal("KKDream1", "GLOBAL", 10) RestParty() 
ActionOverride(Player2, SetSequence(SEQ_READY) )
ActionOverride(Player3, SetSequence(SEQ_READY) )
ActionOverride(Player4, SetSequence(SEQ_READY) )
ActionOverride(Player5, SetSequence(SEQ_READY) )
ActionOverride(Player6, SetSequence(SEQ_READY) ) SetCutSceneLite(FALSE)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOJ KKDream13re2
~Very well, I see your point.~
== Z#KOVAJ ~You don't sound altogether convinced. Still, that's your problem, not mine.~
DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova", RunAwayFrom("Kiyone", 30) ) SetGlobal("KKDream1", "GLOBAL", 4)
SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1", "GLOBAL", 4)
Range("Kova", 5)~ THEN Z#KIYOJ KKDream14
~It doesn't matter what I think. I'm your new best friend for the time being.~
== Z#KOVAJ ~Did it occur to you that the reason why I was walking away was because I would like to be left alone with my thoughts?~
== Z#KIYOJ ~And did it occur to you that I have a responsibility regarding you and your person, and I will stay with you for now whether or not I believe that you intend to stay with us?~
== Z#KOVAJ ~Is it too much to ask for some measure of trust?~
== Z#KIYOJ ~It might be too early to ask for that measure of trust.~
= ~Just as it might be too early to expect to know what's weighing on your mind. But I keep myself available and at hand.~
DO ~PlaySong(0)
ActionOverride("Kova", RunAwayFrom("Kiyone", 10) ) SetCutSceneLite(TRUE) 
RealSetGlobalTimer("KKDreamT","GLOBAL",1)
SetGlobal("KKDream1", "GLOBAL", 5)~ EXIT 

CHAIN
IF ~Global("KKDream1", "GLOBAL", 5)
Range("Kiyone", 5)~ THEN Z#KOVAJ KKDream15
~It was about the village. The one I poisoned.~
DO ~PlaySound("kkrom1") PlaySong(0)~
== Z#KIYOJ ~Shanro, you mean.~
== Z#KOVAJ ~Yeah, not that the name means a thing. It doesn't exist anymore, anyway...~
== Z#KIYOJ ~What did you dream about it?~
== Z#KOVAJ ~Just what happened, that's all.~
= ~I could have stopped it, you know. I could have prevented it from happening.~
== Z#KIYOJ ~Is that so?~
== Z#KOVAJ ~I hesitated, I was thinking it would be a really bad idea to cross the Guildmaster's son, and by the time I tried to stop him the others got in my way and I wasn't fast enough. My spells managed to kill him and a few others, but not quickly enough...~ 
== Z#KIYOJ ~But then you could have warned the villagers, yes?~
== Z#KOVAJ ~Thinking back, yes, I could have. But at that point all I could care about was that the rest of them wanted me dead and to get myself as far from the place as I possibly could.~
== Z#KIYOJ ~I suppose the situation must have been rather pressing for you to not think of warning the people first.~
== Z#KOVAJ ~Perhaps. I could have prevented their deaths, though... if I hadn't been so selfish and only caring about my own skin.~
== Z#KIYOJ ~And you think about that whenever you are reminded of what happened.~
== Z#KOVAJ ~In a sense, it's true that I killed them. There's so much I could have done, yet didn't.~
== Z#KIYOJ ~It's too late to think about such things now.~
== Z#KOVAJ ~Indeed it is, but that doesn't stop me from thinking about it. Will it haunt me all the days of my life, I wonder?~
= ~Anyway, I think I could try and have some rest now. The oblivion of sleep would be welcome, if it was oblivion.~
== Z#KIYOJ ~I hope you rest well, then.~
DO ~ActionOverride("Kova", MoveToObject(Player1) )
ActionOverride("Kiyone", MoveToObject(Player1) )
SetGlobal("KKDream1", "GLOBAL", 6)
SetCutSceneLite(TRUE)~ EXIT

CHAIN
IF ~Global("KKDream1", "GLOBAL", 6)
Range(Player1, 5)~ THEN Z#KIYOJ KKDream16
~By the way, thank you for sharing the matter with me.~
== Z#KOVAJ ~Well, it does me no harm to tell you about it. It is to my advantage after all, isn't it?~
= ~And I'm sure you must be wondering whether it's just skilful acting to go with an elaborate lie.~
== Z#KIYOJ ~Yes. Aren't you an impressive one.~
DO ~SetGlobal("KKDream1", "GLOBAL", 10)  RestParty() 
SetCutSceneLite(FALSE)~ EXIT

// Kova / Kiyone Stage 1

// 1

CHAIN
IF ~Global("KKStage11", "GLOBAL", 1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 1)
Global("KKBanter11", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter111in1
~Kiyone, what do you really think of me? About who I am, what I have done, my past, and what danger I'm putting you in just by travelling with you.~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter111

CHAIN
IF ~Global("KKStage12", "GLOBAL", 1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 2)
Global("KKBanter11", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter111in2
~Kiyone, what do you really think of me? About who I am, what I have done, my past, and what danger I'm putting you in just by travelling with you.~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter111

CHAIN
IF ~Global("KKStage13", "GLOBAL", 1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 3)
Global("KKBanter11", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter111in3
~Kiyone, what do you really think of me? About who I am, what I have done, my past, and what danger I'm putting you in just by travelling with you.~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter111

CHAIN
IF ~~ THEN Z#KIYOB KKBanter111
~You're a good man, that much is certain, based on what I know of you. Just how good, I do not know, but enough that I'm reasonably assured that my path is correct.~
DO ~SetGlobal("KKBanter11", "GLOBAL", 1)~
== Z#KOVAB ~Yet you do not think me incapable of betraying your trust.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~Of course I do not. Who is incapable of betraying another's trust? Some people might today think that they cannot live without the other, yet tomorrow plot to kill them.~
= ~Even if I could be certain that you will never be able to betray me, tomorrow that might not be true. Everyone changes, everyone grows, and it is not correct to consider something impossible.~
== Z#KOVAB ~I see. So none of this has anything to do with my past, and who I am?~
== Z#KIYOB ~It is a consideration I apply to everyone, regardless of who they are, even fellow Sentinels. Their background and previous deeds only serves to show if they are more or less inclined to do evil against others. No one is above judgment.~
== Z#KOVAB ~And so no one is worthy to judge.~
== Z#KIYOB ~Yes, I suppose. I must admit, not even myself.~
== Z#KOVAB ~And so, why do you judge as you do, perceive as you do, and apply actions to them? Especially when some of such decisions may have irreversible results.~
== Z#KIYOB ~Firstly, I am vigilant, and ever watchful that I am not corrupted, or rather, stay reasonably untainted by the evil around me.~
= ~Secondly, I have the acumen and I have the knowledge to deal with such matters. It is my skill, which I have honed. While my judgment is not perfect, it is above those of many who are lesser. Why then should I shirk that responsibility?~
== Z#KOVAB ~Because you are disinterested in it? Because it is not truly you?~
== Z#KIYOB ~Why do you say that? It is me, it has been part of me, always.~
== Z#KOVAB ~Consider myself, what has been part of me, always. And what I have turned aside from.~
== Z#KIYOB ~That is different, there are other factors involved in your areas.~
== Z#KOVAB ~Not so different. Think on it, I'm sure you'll have time enough to consider it in our walk onwards.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter11", "GLOBAL", 1)~ THEN Z#KIYOB KKBanter112
~So you think that just because you've always been a thief yet never should have been one, I might also be an investigator and judge who never should have been either?~
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KOVAB ~Not one who never should have investigated or judged, but one who might want more than that.~
DO ~SetGlobal("KKBanter11", "GLOBAL", 2) IncrementGlobal("KKInStage1x", "GLOBAL", 1)~
== Z#KIYOB ~I've always done what I've always done. I've aspired to it since I was young girl, and I have worked towards it with reasonable success, applied it with some degree of alacrity to achieve some noteworthy results.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~And you will continue to do so to the end of your days.~
== Z#KIYOB ~That is what is before me, and nothing can change that.~
== Z#KOVAB ~Do you want to change it?~
== Z#KIYOB ~Why should I? It is who I am, what I am, all that I've ever stood for.~ 
= ~And it is probably, as you have said before, nothing more than the product of my futile pride.~
== Z#KOVAB ~Not just your pride, though. Everything is meaningless. I may trust you today - tomorrow you could turn me in.~
= ~I may follow you today, trusting you to handle my case - tomorrow you could be dead.~
== Z#KIYOB ~Well spoken. And that is the measure to which you trust me? It hardly sounds that way.~
== Z#KOVAB ~I make do with what I have, depositing enough to keep me going in what I think I need to do. I trust you enough for that, at least.~
== Z#KIYOB ~Then why do you expect me to trust you more than I already have?~
== Z#KOVAB ~You know I don't really know why I hope, with regards to the case, knowing I will not survive to see it come to pass.~
== Z#KIYOB ~And similarly you hope to have my trust in the same way, knowing that you can never have it.~
== Z#KOVAB ~It is foolish and needless to pursue certain things. Still, it might make oneself feel better, perhaps, before one's life is reft from oneself.~
== Z#KIYOB ~Death comes to all, doesn't it? There is no need to fear it overmuch.~
= ~Be true to yourself, is what some people say. But that is in itself senseless and futile.~
== Z#KOVAB ~There might be something else, but I doubt it.~
== Z#KIYOB ~True. Meantime, some trust might move things along more easily.~
== Z#KOVAB ~Not too much, just enough to achieve its purpose, should be sufficient. After all, we must set all things in measure, yes?~
== Z#KIYOB ~Indeed, according to informed judgment.~
EXIT

// 2

CHAIN
IF ~Global("KKStage11", "GLOBAL", 2)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 1)
Global("KKBanter12", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter121in1
~I was just wondering, Kiyone, what is it that truly drives you?~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter121

CHAIN
IF ~Global("KKStage12", "GLOBAL", 2)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 2)
Global("KKBanter12", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter121in2
~I was just wondering, Kiyone, what is it that truly drives you?~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter121

CHAIN
IF ~Global("KKStage13", "GLOBAL", 2)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 3)
Global("KKBanter12", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter121in3
~I was just wondering, Kiyone, what is it that truly drives you?~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter121

CHAIN
IF ~~ THEN Z#KIYOB KKBanter121
~I thought you had already answered that question earlier. A futile fight, and my pride, wasn't it?~ 
DO ~SetGlobal("KKBanter12", "GLOBAL", 1)~
== Z#KOVAB ~I was worked up, and I spoke in haste. I'm sorry if I hurt you.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~It's all right. It's true anyway, as I have acknowledged. Justice, truth, righteousness. Hardly even sounds anything close to the state of affairs anywhere in the world.~
= ~Perhaps I may have been a little selective in seeing what is truth and what isn't, and I wouldn't have let myself realise it if you hadn't pointed that out to me.~
== Z#KOVAB ~You wouldn't have kept it that long from yourself, as well, I think. I just happened to speed up the process somewhat.~
= ~But now that you know it, there must be something else that keeps you going, to keep you on this course of lawfulness.~
== Z#KIYOB ~Force of habit, maybe? Or perhaps my mind simply cannot comprehend a world properly and truly without rules, or a world without distinction between good and evil.~
== Z#KOVAB ~No, it's not that. We both know it.~
== Z#KIYOB ~To be honest, it doesn't matter what drives me. Whether or not there is something at the end of it, be it a reward or glory or fame, or an ignominious death in a gutter somewhere, what is right, remains right.~
= ~Laws protect little people from themselves, and make it easy for them to distinguish who have crossed the mark. It also prevents them from falsely condemning those who are not guilty.~
= ~I might or might not need the law, but others do. And that's the way it is, and that is what I work towards. It is for the sake of others, and it makes my work much easier, as well.~
== Z#KOVAB ~You do not follow any God, and have no divine guidance. And you are also aware that every nation has its laws, with each set separate and different. Yet you contend that it makes your work easier, but I fail to see how.~
== Z#KIYOB ~There is a bit more to law and righteousness, than is obvious. I think you, of all people, should know that best.~
== Z#KOVAB ~I do not, and I fail to see why I should.~
== Z#KIYOB ~Really? Your past deeds do not seem to reflect that.~
= ~But I think you are not ready to hear, and even if you were, I too, need to sort out my thoughts and my words, for I've never needed to think on this before. We'll speak on this again, if time permits.~
EXIT


CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter12", "GLOBAL", 1)~ THEN Z#KIYOB KKBanter122
~You remember the question you asked me, previously, about how the law helps, that makes my work easier?~
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KOVAB ~That I recall. Your response to it has perplexed me more than I thought it could.~
DO ~SetGlobal("KKBanter12", "GLOBAL", 2) IncrementGlobal("KKInStage1x", "GLOBAL", 1)~
== Z#KIYOB ~That is good. It has taken much of me, as well, to think how best to put it. I suppose you are ready to hear me out? Some might say it would not make much sense to you, but I believe it will.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~I think I will do my best to see what I might make of it. More than that I cannot promise.~
== Z#KIYOB ~Very well. You see, there is a law of truth, written inside our hearts. It is set down in different ways and to differing extents, on paper, but it lives inside of us, inside of most people.~
= ~I find it strange that I should acknowledge something so intangible, so nebulous, but it does exist, and inside us we all know what we should and should not do. It is however, affected by various factors, such as upbringing and performing crimes repeatedly.~
= ~It is by this law, inside of me, that I perceive those around me. It is more than actions, as well. One might almost call it a judge's instinct, separating light from darkness.~
== Z#KOVAB ~I think I understand. I call it good, and it is within me as well.~ 
= ~Yet unlike you who serve it, I curse it, for it drives me to irrational actions like taking my very life in my hands by opposing the deeds of the Shadow Thieves. I think it is a pointless, dangerous thing.~
= ~I often wish I could twist it out of my life, like so many others have done, that I may serve my own interests more effectively.~
== Z#KIYOB ~I do not know what the point of its existence is, but I guess I have to believe it carries a reward all on its own.~
= ~I don't believe in faith, but in retrospect, I must have believed in this inner law for a long, long time now. It does brings me a kind of odd willingness to perish for it. Impractical, inconvenient, foolish, yet I do not seem to truly mind.~
== Z#KOVAB ~It is a curse, a damnable thing, and the only thing it feeds is one's pride, at great peril and cost to one's life!~
== Z#KIYOB ~Perhaps. Yet it is all I have, and I think it is all you have, as well.~
= ~Where it leads us, perhaps only time will tell.~
EXIT


// 3

CHAIN
IF ~Global("KKStage12", "GLOBAL", 3)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 2)
Global("KKBanter13", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter131in2
~You do know, Kiyone, that even if you prove me innocent of these major charges, it doesn't change the fact that I'm a thief, nor does it change what I've done before.~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter131


CHAIN
IF ~Global("KKStage13", "GLOBAL", 3)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone")
Global("KKInStage1x", "GLOBAL", 3)
Global("KKBanter13", "GLOBAL", 0)~ THEN Z#KOVAB KKBanter131in3
~You do know, Kiyone, that even if you prove me innocent of these major charges, it doesn't change the fact that I'm a thief, nor does it change what I've done before.~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KIYOB KKBanter131

CHAIN
IF ~~ THEN Z#KIYOB KKBanter131
~Yes, that is true.~
DO ~SetGlobal("KKBanter13", "GLOBAL", 1)~
== Z#KOVAB ~So you are keeping me free to help you with your case. And after that I assume I will be receiving my dues for the rest of my lawless record, yes?~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~I could say I'm just going to let you slip away, but no. I will detain you if the court demands it, to face charges other than the three that you face, but only after I have cleared you of what you need to be cleared of.~
== Z#KOVAB ~And that means that as more evidence comes in for my case, the more I should try to slip away.~
== Z#KIYOB ~If you believe that to be your best interests. No amount of evidence speaks for a needless absence at a trial, which says a lot in itself.~
== Z#KOVAB ~So you knew, right from the start, I'd be damned if I do, and damned if I don't.~
== Z#KIYOB ~That is one way of looking at the matter, yes.~
== Z#KOVAB ~Bah! Is there nothing to be said for the good man whose hand has been forced? Who has wished no part in all of these matters yet has been caught up in every one of them?~
== Z#KIYOB ~There is no law that makes such a provision, Kova.~
== Z#KOVAB ~Surely there must be something... the law of man is after all imperfect and incomplete in its provision. Is there truly to be no respite or forgiveness in all of this?~
== Z#KIYOB ~The law has ever been about justice. All deeds must be accounted for in the sight of truth.~
== Z#KOVAB ~Yes... I suppose so. But... what does the law inside you say? The inner law, so to speak.~
== Z#KIYOB ~There is a way, but it is beyond our means. The law cannot forgive, and although restitution can be made, how much restitution is enough?~
== Z#KOVAB ~How much punishment is enough? I can think of many for whose deeds death would be considered too light a sentence.~
== Z#KIYOB ~Well spoken. But why do you ask if you already know?~
== Z#KOVAB ~Why do you follow if you disbelieve?~
== Z#KIYOB ~You are not certain enough to cease asking, but certain enough to walk this path, though it may mean your death.~
== Z#KOVAB ~Not may, but will.~
== Z#KIYOB ~And now you ask the naive one, who you are following to your death, what the point of your actions is?~
== Z#KOVAB ~Your opinion might be of interest to me, though whether or not to accept it, is entirely my own choice.~
== Z#KIYOB ~How droll you are. Then when we are both done with our thoughts, perhaps we can exchange our opinions, and see what can be done for your... futile quest.~
== Z#KOVAB ~Though it can only end in my demise, I think perhaps it's not quite that futile.~
== Z#KIYOB ~Can it be that there is something more important than one's life? How practical.~
== Z#KOVAB ~There might be, or there might not be. We shall have to wait and see.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter13", "GLOBAL", 1)~ THEN Z#KIYOB KKBanter132
~Well, after thinking views over, I can only give my view of pardon, Kova. I still am not able to think of any law that might speak of such.~
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KOVAB ~That is to be expected. I've thought on it for much of life and have found nothing. I need to hear an impartial view on the matter, anyway. I think too much about it to hold it as impossible.~
DO ~SetGlobal("KKBanter13", "GLOBAL", 2) IncrementGlobal("KKInStage1x", "GLOBAL", 1)~
== Z#KIYOB ~It shouldn't be as impossible as it seems, I think. It does seem interesting how quick we are to condemn people and so reluctant to grant them some kind of amnesty or reprieve.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
= ~Yet, that is only to be expected from a people so undeserving of trust.~
== Z#KOVAB ~How I wish that was less true. So, what words have you for this desperate fugitive from the law?~
== Z#KIYOB ~I think some service in aiding the law would be well. If we could find and secure the person behind all the charges that you've been set up for, I think that would be sufficient.~
== Z#KOVAB ~That's what you think. And Magistrate Bylanna, or Inspector Brega? Or more interestingly, Corneil?~
== Z#KIYOB ~You asked me for my opinion, and I gave it. I am not capable of reading minds, Kova.~
== Z#KOVAB ~Right. Anyway, Corneil will probably only overlook the past if we can point him the right way, and if he has some reason to be grateful to us, separate from the court of law.~
= ~Still, even if they overlooked the rest of the record, it is still just their perception. Nothing can change the fact of what I've done in the past.~
== Z#KIYOB ~That's why the law requires an account of all. When I was young, someone once told me true pardon and peace comes from within, but he couldn't find it.~
== Z#KOVAB ~Who was that, Kiyone?~
== Z#KIYOB ~Someone who died. An unimportant person.~
== Z#KOVAB ~And what he sought for and told you about is just an idle dream, isn't it?~
== Z#KIYOB ~It always has been. Maybe you will be able to find it, maybe you won't. But I won't be able to help you find it.~
== Z#KOVAB ~Even if there is such a peace possible, it's futile anyway. I'll die, remember?~
== Z#KIYOB ~If you say so. It doesn't really matter.~
EXIT

// 4

CHAIN
IF ~Global("KKStage12", "GLOBAL", 4)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kova") InMyArea("Kova")
Global("KKInStage1x", "GLOBAL", 2)
Global("KKBanter14", "GLOBAL", 0)~ THEN Z#KIYOB KKBanter141in2
~What do you think might be the point to faith?~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KOVAB KKBanter141

CHAIN
IF ~Global("KKStage13", "GLOBAL", 4)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kova") InMyArea("Kova")
Global("KKInStage1x", "GLOBAL", 3)
Global("KKBanter14", "GLOBAL", 0)~ THEN Z#KIYOB KKBanter141in3
~What do you think might be the point to faith?~
DO ~PlaySound("kkrom1") PlaySong(0)~ EXTERN Z#KOVAB KKBanter141

CHAIN
IF ~~ THEN Z#KOVAB KKBanter141
~If one covets the power of the Gods, that's reason enough to be acceptable, I suppose.~
DO ~SetGlobal("KKBanter14", "GLOBAL", 1)~
== Z#KIYOB ~I don't desire that. My trust is in the strength of my arm and the trueness of my arrow.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~If I were in your place, perhaps, I'd desire all the power I could possibly lay my hands on, that I might better do what I have to, and fewer may be able to stand in my way.~
= ~Of course, I am not in your position. And you're not really asking about Gods anyway.~
== Z#KIYOB ~There is no real power in belief. Though harnessing that in others is helpful, in oneself it seems more a needless indulgence. It also can be used to drive oneself in a certain direction, if one can harness it well.~
== Z#KOVAB ~Yet through it all, little more than a tool. It is just toying with your own mind and goals to set you on a certain path with minimal thought as to other considerations.~
= ~It is a dangerous game to drive oneself using such a thing that can potentially consume you in its entirety.~
== Z#KIYOB ~So, you became your "good" self through some faith-driven belief you instilled in yourself?~
== Z#KOVAB ~I'd like to think so. I cannot remember, though, and if it was deliberately instilled in myself, it must have been from a very young age.~
= ~Your own zeal does seem a little raw as well. It's just a covering, though, for something truer inside.~
== Z#KIYOB ~That it might be. It does vex me to know that our lives are governed by such... idiosyncratic, illogical thoughts and motivations.~
== Z#KOVAB ~A curse, a damnable thing, a thorn I cannot remove from inside me.~
== Z#KIYOB ~No, we can remove it. It's just that we don't want badly enough to, and would rather die than lose a sense of who and what we are. Such is our weak reliance on it.~
== Z#KOVAB ~There's not much point to that reliance. It doesn't help us survive better, and in my case, quite the opposite effect.~
== Z#KIYOB ~It tells us what to do, how to react, I believe. Such as the way you did, to that boy we met on our way down to Athkatla.~
== Z#KOVAB ~That didn't help my situation. As you pointed out back then, it could have given away where I was. These are not beneficial tendencies.~
== Z#KIYOB ~True, and that only goes to show its impact on our lives. If there is some purpose to this... internal truth that we seem to cling so dearly to... I would learn of it.~
== Z#KOVAB ~I wish you all the best with it. I've been asking myself that question for just under two decades now, and I haven't yet found an answer.~
== Z#KIYOB ~Thank you. At least I'm not the only one.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter14", "GLOBAL", 1)~ THEN Z#KOVAB KKBanter142
~I hope you don't find me overly inquisitive, but have you any new insights on faith and inner belief? It would be kind of you to indulge this dying man somewhat before he moves on.~
DO ~PlaySound("kkrom1") PlaySong(0)~ 
== Z#KIYOB ~You really do have a way of effectively endearing yourself to others.~ 
DO ~SetGlobal("KKBanter14", "GLOBAL", 2) IncrementGlobal("KKInStage1x", "GLOBAL", 1)~
== Z#KOVAB ~You're too kind.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~Anyway, nothing new. Just that such inner belief drives us onward. Perhaps to a life we might not have had, otherwise.~
= ~If you hadn't that driving force inside you, you wouldn't be here with all of us now.~ 
== Z#KOVAB ~Yes, I'd probably be somewhere higher up in the Cowled Wizards by now, probably.~
== Z#KIYOB ~Probably. And be guilty of killing all those villagers.~
== Z#KOVAB ~True. Though there was that saying, better them than me.~
== Z#KIYOB ~Therefore, Kova believes all sayings.~
== Z#KOVAB ~Point taken. So is there any purpose to all of this? I keep getting this impression that the building that I'm being led towards looks like a slaughterhouse.~
== Z#KIYOB ~If I believed in destiny, I would say that perhaps it leads you towards what you're supposed to do, who you are supposed to be.~
== Z#KOVAB ~Well, it's a good thing I don't believe in destiny either. It must be disturbing for someone to believe that their destiny is to be gutted like a pig.~
== Z#KIYOB ~Have you truly no hope in proving your innocence? Do my methods inspire so little confidence?~
== Z#KOVAB ~Proving my innocence might not be a problem, eventually, but leaving the courthouse alive after showing my face could well be. The court isn't incapable of corruption.~
= ~Anyway, you don't have anything for me, either. You promise nothing but your best, however much that is worth.~
== Z#KIYOB ~True, but perhaps there is some point to all of this, to show you that even though you've been in darkness, the light awaits and that is where you belong.~
== Z#KOVAB ~That is one way of putting it. In the same language, maybe this will turn you back towards the light, for though you've always been in it you've never really walked in it.~
== Z#KIYOB ~Of course. But neither of us really believe there is any real point to any of that impractical, mystical spiritualistic talk for the weak-minded.~
== Z#KOVAB ~Agreed. Though some occasional delusion might not be too bad. It helps answer some questions and keep my mind off the fact that I won't be breathing for too much longer.~
== Z#KIYOB ~We both know you can get up and go anytime you want to. With your considerable skill at concealment, even I would have some difficulty in tracking you down.~
== Z#KOVAB ~And we both know I can't go. Because of that belief, that inner desire to seek the light, yes? What a pointless, terrible desire to have, to chain a man to a hope he does not believe in.~
== Z#KIYOB ~Perhaps not just in one man.~
EXIT

// 5

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKInStage1x", "GLOBAL", 4)
Global("BKKChat","GLOBAL",7)~ THEN Z#KIYOB KKc8
~You know, Kova, you are rather far from what I expected of a thief, especially a Shadow Thief.~
DO ~SetGlobal("BKKChat","GLOBAL",8) 
PlaySound("kkrom2") PlaySong(0)
SetGlobal("KKRomance","GLOBAL",2)~
== Z#KOVAB ~How nice. I suppose I should be grateful for that most extravagant compliment.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)
SetGlobal("BKKChat","GLOBAL",8)~
== Z#KIYOB ~It's a neutral statement. Not negative, not positive, just a statement.~
== Z#KOVAB ~Well, you're not so uninteresting yourself, Sentinel Kiyone.~ 
== Z#KIYOB ~Thank you then, for that most neutral comment.~
== Z#KOVAB ~Well, how do you think you would have been like, if you had been brought up as a Shadow Thief?~
== Z#KIYOB ~I wasn't brought up as one, so I don't know.~
== Z#KOVAB ~Fair enough. Do you think we might have been friends? Though most Shadow Thieves don't come across as friends to me.~
== Z#KIYOB ~We might have, maybe. It really depends on what you look for in a friend.~
== Z#KOVAB ~Someone who isn't too ready to gut me, who I can trust to some reasonable degree, and who trusts me to some reasonable degree. What about for you?~
DO ~SetGlobal("KKRomance","GLOBAL",2)
SetGlobal("BKKChat","GLOBAL",8)~
== Z#KIYOB ~I rather someone who will watch my back, assist me on the few occasions I need it and more importantly, know not to assist me when I do not need it.~
== Z#KOVAB ~I can imagine some degree of intelligence and understanding would help, then. So, the main reason why we are not friends is because I am your quarry, and you are my jailor.~
== Z#KIYOB ~That is true. But you are also my client, and I your advocate.~
= ~Either way, a professional relationship is desirable. However, though a friendship is not necessary, it should not pose too much of an inconvenience.~
== Z#KOVAB ~Of course, care should be taken that it does not interfere with what we both might have to do. Since I might run if I have to, and you'll hunt me down like a dog if you have to.~
DO ~SetGlobal("KKRomance","GLOBAL",2)~
== Z#KIYOB ~Not like a dog, but otherwise you have spoken rightly. It is also worth remembering that it would be in your interests to gut me, as you so like to put it, before making a run for it.~
== Z#KOVAB ~Naturally. What was it you said before?~ 
= ~It is good that we understand each other.~
== Z#KIYOB ~Indeed. And with this understanding aside, the rest of the criteria are fulfilled.~
== Z#KOVAB ~Quite true, my friend.~
== Z#KIYOB ~Well spoken. This might be a permanent state of affairs for most, but for us, probably just a temporary arrangement.~ 
== Z#KOVAB ~Very probably, in fact.~
DO ~SetGlobal("KKRomance","GLOBAL",2)~ EXIT

// Kova on Cooking

CHAIN
IF ~Global("Z#RestInn", "GLOBAL", 1)
Global("Z#TrialClear","GLOBAL",0)
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKvCook", "GLOBAL", 0)
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
~Who would have thought, Kova Kashiro, wanted and most dangerous criminal, bent over the pots and pans preparing for breakfast.~
DO ~SetGlobal("BKvCook", "GLOBAL", 1) SetGlobal("Z#RestInn", "GLOBAL", 0)
PlaySound("kkrom1") PlaySong(0)~
==Z#KOVAJ ~Unlike some, I am human, and I have to eat.~
= ~Since I have to, I thought it would be better to have good food to attend to than otherwise.~
==Z#KIYOJ ~Indeed. You certainly seem to have a good appetite.~
==Z#KOVAJ ~At least I have something to work with, here indoors with a kitchen to look into. Better than making do with what we manage to scrounge off while on the road.~
= ~Help yourselves, the food is already and the plates are set.~
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen")~ THEN
~Certainly a surprise, that something acceptable should come from one so conniving and foul.~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN
~This is nice, Kova. I wonder if I might learn how to cook like that.~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin")~ THEN
~Well, at least this is some use for this monkey! (now to get <CHARNAME> to give me <PRO_HISHER> share)~
== HAERDAJ IF ~InParty("Haerdalis") InMyArea("Haerdalis")~ THEN
~Not bad, for a prime.~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN
~Well, <CHARNAME>, where did you dig this guy out from? This isn't half-bad, in fact, I don't think I remember when I last tasted something this good.~
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira")~ THEN
~Reasonably nourishing fare, Kova. Keep up the good work.~
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN
~Now, this is some good food! What it really lacks though, is a generous helping of turnip, added here and here and here and...~
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn")~ THEN
~My compliments, young man. I didn't expect one to be this good with preparing food.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN
~If ever I be leaving this lot, here's a good reason to be dragging ye off with me.~
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy")~ THEN
~This is quite a pleasant surprise. I thank you, Kova. I have received this meal very well.~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN
~Almost as good as we made it back in Rashemen, but not enough. Minsc wants more.~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN
~Well, I must certainly get you to be my cook if ever I put back up in the keep!~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar")~ THEN
~It has been a while since I had such a good meal. My thanks, wizard.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN
~It seems that surfacer fare can be agreeable after all.~
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo")~ THEN
~This is quite a marvel, my friend. A splendid meal makes for the start of a good day.~
== Z#KIYOJ ~This is rather unexpected, Kova. Where did you learn to cook like that?~
== Z#KOVAJ ~Even with reading and my other pursuits, I had quite a lot of free time while among the Shadow Thieves. Besides, it was good to give them another reason to keep their knives out of my back.~
== Z#KIYOJ ~Yes, and speaking of thieves, I'm pretty certain some of what we ate wasn't from our packs. Just be careful while gathering ingredients for your cooking. You never know who might see you.~
== Z#KOVAJ ~I care more about my skin than to risk it needlessly just to prepare a pleasant meal. Besides, in case you forgot, it is easier to sneak around indoors than ourdoors.~
== Z#KIYOJ ~I rather you stay right where you are the next time round. The loss of a chance to have some good food won't kill any of us, I'm sure.~
= ~What are the ingredients and meat you look for, anyway? I'm capable of gathering them for you, I'm sure, and I'm at least as good as remaining unseen as you are, without your spells.~
== Z#KOVAJ ~Well, isn't that an unexpected offer. The righteous ranger offering to raid the pantry?~
== Z#KIYOJ ~I am human too, and I have to eat.~
= ~And if this means that I can come closer to having good food to attend to in future, even after I've concluded this case, I am quite interested in picking it up.~
= ~As for reimbursement, I'm sure a few pieces of gold should more than make up for the loss of whatever we have to supplement our supplies with.~
== Z#KOVAJ ~Thank you, Kiyone.~
== Z#KIYOJ ~You're welcome.~
EXIT

CHAIN
IF ~Global("Z#RestInn", "GLOBAL", 1)
Global("Z#TrialClear","GLOBAL",0)
InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKvCook", "GLOBAL", 1)
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
~That's some rather varied ingredients we have with us.~
DO ~SetGlobal("BKvCook", "GLOBAL", 2) SetGlobal("Z#RestInn", "GLOBAL", 0) GiveGoldForce(-3)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAJ ~Not a problem. You paid for it anyway, didn't you?~
== Z#KIYOJ ~We paid for it, you mean. Anyway, this mix hardly lends itself to consistency with your preparation of the previous meal.~
== Z#KOVAJ ~Well, I was thinking it common knowledge that more than one recipe exists. ~
== Z#KIYOJ ~And you expect me to pick these recipes up when you don't even cook two such things the same back to back?~
== Z#KOVAJ ~Consider it an excuse to go pick my ingredients myself.~
== Z#KIYOJ ~No. The reason I'm doing this is so you don't have to go get them and give yourself away.~
== Z#KOVAJ ~And because you want to know how to cook better to properly feed yourself after I'm dead.~
== Z#KIYOJ ~Of course. In any case, by now I'm certainly able to recognise the ingredients and how to select the fresher ones.~
= ~The next time you can give me a list of what you need and I'll gather them for you.~
== Z#KOVAJ ~I don't seem to be getting much of a choice here.~
== Z#KIYOJ ~You aren't.~
== Z#KOVAJ ~Well, what can I say? I hear and I obey, lawful one.~ 
= ~Lest you get tired of me and turn me over to the courts.~
== Z#KIYOJ ~Very funny. If things were that simple, I'd have done so long ago.~
EXIT 

CHAIN
IF ~	GlobalGT("KKRomance", "GLOBAL", 0)
	Global("Z#TrialClear","GLOBAL",0)
	InParty("Kova") InMyArea("Kova")
	Global("BKvCook", "GLOBAL", 3)
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
~And where do you think you're going?~
DO ~PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAJ ~To get what I need to prepare a reasonable meal later on. From the way you're looking at me, that must have been lately considered a capital crime.~
== Z#KIYOJ ~And it must have just slipped your mind what we agreed to the last time.~
== Z#KOVAJ ~I do get forgetful at times. Well, hurry up then.~
DO ~SetCutSceneLite(TRUE)
SetGlobal("BKvCook", "GLOBAL", 4)
RealSetGlobalTimer("KvCookT","GLOBAL",5)
ActionOverride("Kiyone", RunAwayFrom(Player1, 60) )
FadeToColor([60.0],0)~ EXIT

CHAIN
IF ~	GlobalGT("KKRomance", "GLOBAL", 0)
	Global("Z#TrialClear","GLOBAL",0)
	InParty("Kiyone") InMyArea("Kiyone")
	Global("BKvCook", "GLOBAL", 5)
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
~That was rather delectable for a second try. You certainly learn fast, Kiyone.~
DO ~SetGlobal("BKvCook", "GLOBAL", 6) SetCutSceneLite(FALSE)~
== Z#KIYOJ ~Thank you. Although, that was one try more than what most of the people in my line of work usually get.~
== Z#KOVAJ ~That sounds like a few situations I've been in as well. Fail to impress, die like the rest.~
== Z#KIYOJ ~Life on the edge isn't so different, after all. Just that we used to be on opposite sides.~
== Z#KOVAJ ~But it doesn't matter which side one is on, good food is always welcome.~
EXIT 

// 2 Underdark Chats

CHAIN
IF WEIGHT #-1 ~Global("KKJoin", "GLOBAL", 1)
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("KKDrowFormChat", "GLOBAL", 0)
InParty("Kova")
InParty("Kiyone")
!ActuallyInCombat()
InMyArea("Kova")~ THEN Z#KIYOB KKDrowCh1
~This is indeed rather fascinating, to feel what it is like to be as a drow.~
DO ~SetGlobal("KKDrowFormChat", "GLOBAL", 1)~
= ~It is interesting that such an evil race would be so beauteous and full of allure.~
== Z#KOVAB ~Therein lies their power I suspect, in their dark charm. But they were once of the elves, so that is no surprise.~
= ~Being drow seems to be becoming, for your mood, at least.~
== Z#KIYOB ~This is just for knowledge purposes, and yes it does make me feel a lot more comfortable to be a drow in the Underdark than a half-elf in the Underdark.~
== Z#KOVAB ~I think that can be said for every one of us.~
== Z#KIYOB ~I doubt I'd enjoy being under the sun again, if I were to greet it in this form, but I might be wrong. I am after all, drow, and not vampire or other such undead.~
== Z#KOVAB ~It is indeed refreshing to see you this way, but it still makes for odd looking. I should not feel comfortable if I never get to see how you truly are again.~
== Z#KIYOB ~What a strange way of putting things. But yes, I have no intention of remaining in this shell forever. This form is luscious, but I have no need of such charms over my own.~
== Z#KOVAB IF ~GlobalLT("KKRomance", "GLOBAL", 2)~ THEN 
~True, I suppose, that is one way of looking at things.~
== Z#KIYOB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~But my view is biased, of course. What do you think, Kova? Comfortable viewing aside, how visually becoming is this drow covering upon my form?~
== Z#KOVAB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~You pose a difficult question, but then again you always have.~
= ~Let's see now. There is more carnal sensuality about the drow form, a base form of attraction, I suppose, than what you normally possess.~
== Z#KIYOB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~So I am unattractive as my normal self?~
== Z#KOVAB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~One might almost say that, yes. Normally I don't feel a desire to be closer to you, so to speak, such as to touch you, but maybe that is just this form I take as well.~
== Z#KIYOB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~That is well. Doing so could well be hazardous to your health.~
== Z#KOVAB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~I thought as much. But normally, you still are very comely to look upon, but more as a flower perhaps, to be admired from afar, rather than touched.~
= ~Or like a statue made of crystal, or like a reflection in the water.~
== Z#KIYOB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~Some might consider it insulting to be considered so fragile. But I doubt you mean that.~
== Z#KOVAB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~Just untouchable, difficult to draw near, and very probably dangerous to draw near.~
== Z#KIYOB IF ~GlobalGT("KKRomance", "GLOBAL", 1)~ THEN
~You have very good eyes, Kova.~
EXIT

CHAIN 
IF WEIGHT #-1 ~Global("KKJoin", "GLOBAL", 1)
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("KKDrowFormChat", "GLOBAL", 1)
InParty("Kova")
InParty("Kiyone")
!ActuallyInCombat()
InMyArea("Kova")~ THEN Z#KIYOB KKDrowCh2
~What is it like to be as a drow male?~
DO ~SetGlobal("KKDrowFormChat", "GLOBAL", 2)~
== Z#KOVAB ~Not much different from my usual self, it seems. A little more muscular here and there, nothing beyond my reach if I took time from my usual pursuits to train with Navaeren.~
== Z#KIYOB ~Is that all? I thought there is a sleekness to you I had not noticed before.~
== Z#KOVAB ~Ah, really? How... disappointing.~
== Z#KIYOB ~No, you had it all along when you were in your usual form. I just never really found the word to describe it, or maybe I did not pay it enough heed to give it a name.~
== Z#KOVAB ~I can't remember the last time I received a compliment from a lady.~
== Z#KIYOB ~You probably didn't pay enough attention to register it as such.~
== Z#KOVAB ~Really? Thank you, Kiyone.~
== Z#KIYOB ~You're welcome. But yes, this form we have is certainly strange.~
= ~I'm saying a lot of things that I wouldn't have consciously realised before, even.~
== Z#KOVAB ~Agreed. It's almost like a higher level of awareness.~
== Z#KIYOB ~Or a more carnal level of existence. Certain forms of mental control have been slowly broken down, it seems.~
= ~Appearance is such a shallow thing, so obviously the transformation went deeper than that.~
== Z#KOVAB ~It is ironic that a deeper transformation causes a shallower focus.~
== Z#KIYOB ~True. I should like to see you as yourself again, and it is possible that I might think differently about your appearance.~
== Z#KOVAB ~The same, I suppose. I'm tired of seeing midnight hued bodies everywhere. Emerald strands in the sunlight would be a very refreshing change.~
= ~Ah... my apologies. Blame it on this form, if you will.~
== Z#KIYOB ~No, there's no need to apologise. Or maybe that's just this drow talking.~
= ~We probably won't remain this way when the spell is removed, so it shouldn't pose too much of a problem.~
== Z#KOVAB ~That is a reassuring thought.~
== Z#KIYOB ~Well, since we are as we are now, let the drow in me just say that she misses your piercing sapphire eyes.~
= ~Not that I'd even think of it once I'm myself, of course.~
== Z#KOVAB ~Of course. I thank you, Kiyone, while you're still capable of accepting thanks for saying such a thing.~
== Z#KIYOB ~You're welcome, though I have little doubt I'd still be if I were to be myself again.~
EXIT

// Kiyone on the Forest

CHAIN
IF WEIGHT #-1 ~AreaType(Forest)
Global("BKyForest", "GLOBAL", 0)
GlobalGT("KKRomance", "GLOBAL", 0)
RandomNumLT(7,7)
!AreaCheck("AR1404")~ THEN Z#KOVAB BKyForest1
~Kiyone, your countenance reminds me of back when we were travelling south together to Athkatla.~
DO ~SetGlobal("BKyForest", "GLOBAL", 1)
PlaySound("kkrom1") PlaySong(0)~
= ~You do seem far happier out here in the forests than when in the city.~
== Z#KIYOB ~That's the way it should be. The forests hold no treachery, and the animals possess no guile apart from the cunning they require to survive.~
== Z#KOVAB ~I've spent most of my life within the city, but from what little I've seen of the wilds, it is indeed far preferable to the city.~
= ~Perhaps it might have been very different for me, if I had walked in the way that you have.~
== Z#KIYOB ~It is never too late to learn, especially when we move through such areas. It should not be too difficult, compared to how you've already managed to stay alive before we met.~
== Z#KOVAB ~That is kind of you. Who would have thought I would be learning from one as yourself?~
== Z#KIYOB ~You already possess some skill at stealth, and it's fairly common knowledge about the life that flows through the forests. All that is left is learning to appreciate it properly.~
== Z#KOVAB ~Well it's nice and pleasant, compared to the city.~
== Z#KIYOB ~That is only the beginning of it. But everyone has to start somewhere.~
== Z#KOVAB ~How encouraging. Though I'm sure every villain, with or without an appreciation for nature, would find in you an unyielding foe.~
== Z#KIYOB ~Naturally.~
EXIT

CHAIN
IF WEIGHT #-1 ~AreaType(Forest)
Global("BKyForest", "GLOBAL", 1)
GlobalGT("KKRomance", "GLOBAL", 0)
RandomNumLT(5,5)
!AreaCheck("AR1404")~ THEN Z#KIYOB BKyForest2
~Look over there. What do you see?~
DO ~SetGlobal("BKyForest", "GLOBAL", 2)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAB ~Just some grass and greenery.~
== Z#KIYOB ~Try again.~
== Z#KOVAB ~All right, but it's still the ... oh.~
= ~I didn't know birds built their nests on the ground.~
== Z#KIYOB ~Some do. But why do you think it was built there?~
== Z#KOVAB ~Let's see. Those prickly shrubs provide cover, and the depression makes the chicks almost invisible to the eye.~
= ~They are... rather endearing, aren't they?~
== Z#KIYOB ~Yes, they are. And as for cover, anything that enters the shrubbery would cause a movement in the shrubs, including near where the nest is, so the mother gets some warning.~
= ~The shrubs themselves also provides good nesting material and this is the environment where their favourite food is. There's also a more open path for the mother to lead away predators from the nest, while having some cover.~
== Z#KOVAB ~Who would have thought even little animals like that would be so complex?~
== Z#KIYOB ~They're really quite simple, and the rest is just as necessity dictates.~
= ~It's rather interesting how simple it all is, yet becomes something so beautifully intricate. I've never seen two trees with the same pattern in its bark.~
== Z#KOVAB ~It makes me wonder. It is more than nice, isn't it? Something to be amazed at.~
== Z#KIYOB ~Naturally.~
== Z#KOVAB ~I begin to understand slightly more your appreciation of such. It is good to know there is more to this.~
== Z#KIYOB ~Yes, to all these. They just need some time to grow on us, and some attention, to appreciate fine detail.~
== Z#KOVAB ~Neither of us are the sort to stop and watch the flowers grow, Kiyone.~
== Z#KIYOB ~Who said anything about stopping?~
= ~To give the same measure of appreciation without stopping requires sharper eyes and better focus to see the finer details.~
== Z#KOVAB ~Of course. Good practice, if nothing else.~
= ~Is there anything you ever cultivate without a reason?~
== Z#KIYOB ~I don't think there is anything anyone ever does without a reason. Whether they are aware of it is another matter, of course.~
= ~Just like not all crimes are planned, I suspect, until they realise they were working towards it all along. That darkness in the human heart is something that can creep into the world without the culprit being properly aware of it.~ 
== Z#KOVAB ~In contrast to that, there is something simple and pure in all of this.~
== Z#KIYOB ~Yes, though it might be forever beyond the reach of us all.~
EXIT

CHAIN
IF WEIGHT #-1 ~AreaType(Forest)
Global("BKyForest", "GLOBAL", 2)
GlobalGT("KKRomance", "GLOBAL", 0)
TimeGT(7)
TimeLT(21)
!AreaCheck("AR1404")~ THEN Z#KIYOB BKyForest3
~Here's a leaf with a little something extra. Take a good look at it.~
DO ~SetGlobal("BKyForest", "GLOBAL", 3)
PlaySound("kkrom1") PlaySong(0)~
== Z#KOVAB ~That's a worm on it. Well, a caterpillar, to be precise.~
= ~Not the most appetising thing to hold so close, Kiyone. I know they become butterflies without having to have them so near to me.~
== Z#KIYOB ~Butterflies last only a very short while, fleeting displays of beauty. But look more closely, observe.~
== Z#KOVAB ~This isn't doing much for me.~
== Z#KIYOB ~Then I'll set it aside.~
== Z#KOVAB ~Wait... hold it.~
= ~Yes, I can see it now... the light catches on that patchy, dull green silvered form as it wriggles along... It's rather... enthralling.~
== Z#KIYOB ~It's like glimpsing a rippling rainbow flow by right under eyes, isn't it? And there is something in the way it moves along, its form so tiny yet its movements so fine.~
== Z#KOVAB ~Who would have thought that no spell I've ever heard of could compare to something as simple as this?~
= ~Bah, it stopped moving.~
== Z#KIYOB ~It has to eat, and anyway we're done with it, so let it eat.~
== Z#KOVAB ~You do have a keen eye for beauty after all.~
== Z#KIYOB ~Only when it can do me no harm.~
= ~It's interesting. In little insects like this, out of their ugliness I find beauty, and with that same skill out of outwardly faultless people I find evil.~
== Z#KOVAB ~Very true, although far from uplifting..~
== Z#KIYOB ~My appreciation of the forest keeps me going, I suppose. For every facade I pierce, I know there is a hidden beauty out here waiting to be discovered.~
== Z#KOVAB ~At least most of us thieves are fairly open with our faults, though trying not to be on the receiving end of plotting is another game altogether.~
== Z#KIYOB ~I wonder, will you turn out to be the ugly seeming caterpillar or a faultless seeming person?~
== Z#KOVAB ~Probably both. No verdict is ever really final, except perhaps, in death.~
== Z#KIYOB ~True. Sometimes I forget that the verdict and closing of the case might not be the closure of the whole matter.~
= ~Though it often is, because my business in that matter would have been concluded.~
== Z#KOVAB ~Are you looking forward to seeing the end of my trial and the closure of my case, Kiyone?~
== Z#KIYOB ~Not if there is more evidence to be found, which there probably is.~
== Z#KOVAB ~I see.~
EXIT

// Kova / Kiyone Stage 2

// 1

CHAIN
IF ~Global("KKStage21","GLOBAL", 1)
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
InParty("Kiyone") InMyArea("Kiyone") 
Global("KKInStage2x", "GLOBAL", 1)
Global("KKBanter21","GLOBAL",0)~ THEN Z#KIYOB KKBanter21in1
~They say friends are people who have things in common, though I haven't had enough friends to be absolutely certain of it.~
= ~Still, I wonder, what do the two of us really have in common?~
DO ~PlaySound("kkrom2") PlaySong(0)~ EXTERN Z#KIYOB KKBanter21

CHAIN
IF ~~ THEN Z#KIYOB KKBanter21
~I presume you mean apart from the case, the time we've spent travelling together and the encounters we've faced side by side.~
DO ~SetGlobal("KKBanter21", "GLOBAL", 1)~
== Z#KOVAB ~Yes, I suppose so. What we have probably will not last very long, but it might be interesting to know what common ground I might have with one so true and righteous.~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KIYOB ~You fulfill the most important common point between us, Kova.~
= ~You are a good person, and perhaps more humane than myself.~
== Z#KOVAB ~I wish I could say that wasn't true, but I can see your point.~
= ~It is the root cause of my irrationality and of my inability to do what is the most effective thing for my own interests and survival. A vexing thing, and sometimes I wish I could do without it.~
== Z#KIYOB ~Well, you are a good person, Kova, whether you like it or not.~
== Z#KOVAB ~Yet it didn't stop me enough, I guess. Many are the lawless deeds I've done, and I've had to do more... disagreeable things in the past, than simply break the law.~
== Z#KIYOB ~What you've done doesn't change the fact that you're a good person. In fact, based on your upbringing and history, few would have had as much reason as you to depart from the path of goodness.~
= ~Perhaps faced with that situation, even I would have departed from it. Yet you didn't.~
== Z#KOVAB ~So it seems, but what does being good on the inside mean? I'm certain you've brought at least a few good men to face judgment for their deeds before.~ 
== Z#KIYOB ~And so I have. They may have been good, but they were not without guilt.~
== Z#KOVAB ~Nor am I.~
== Z#KIYOB ~You're not guilty of the charges raised against you, Kova.~
== Z#KOVAB ~That's true, but I've still done more than a few crimes. That makes me guilty, I understand.~
== Z#KIYOB ~We all make mistakes, Kova. And that's why I am bringing you to face your judgment.~
== Z#KOVAB ~Were you friends with any such other men as I? Good but having made mistakes, good but guilty?~
== Z#KIYOB ~Some have thought I was their friend, but I never was, at least not from my point of view.~
== Z#KOVAB ~So I'm different, am I?~
== Z#KIYOB ~Yes, you can believe that you are.~
= ~For now.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
!RealGlobalTimerNotExpired("KKBanterTMin","GLOBAL")
Global("KKBanter21", "GLOBAL", 1)~ THEN Z#KIYOB KKBanter212
~Your earlier question got me thinking about why I would identify myself with you.~
DO ~PlaySound("kkrom2") PlaySong(0)~ 
== Z#KOVAB ~You, identify yourself with me?~
DO ~SetGlobal("KKBanter21", "GLOBAL", 2) 
IncrementGlobal("KKInStage2x", "GLOBAL", 1)~
== Z#KIYOB ~I am honest with myself, Kova. If I didn't identify with you in some way, why would I agree to consider myself your friend?~
DO ~RealSetGlobalTimer("KKBanterTMin","GLOBAL",40)~
== Z#KOVAB ~True. Friendship is built on more than simply what you've done for me, or I for you.~
== Z#KIYOB ~It would be a pity to see you killed, Kova.~
== Z#KOVAB ~What a delightful topic to bring up. Aside from the rock-solid friendship between us and all the very happy times we've spent together, what other reasons might there be to pity my death?~
== Z#KIYOB ~Droll. I should be disturbed to realise that I find your sarcasm helpful in taking my mind from weightier matters.~
= ~I know what you see in me, of course, as you always seem to be mentioning indirectly in one way or another. Perhaps I've never said so, but if I seem strong to you, you seem strong to me as well.~
== Z#KOVAB ~That's kind of you to say so, Kiyone. But I don't see how such can be compared.~
== Z#KIYOB ~I can always just move on to my next case, whereas you have nothing to look forward to. I help others out of duty and based on what is best, yet you do so because it is good and kind.~
= ~I know that I'm fulfilling what I've been charged with and what I'm supposed to do, but you know very well that doing good for others does you no good. Especially not in a court of law.~
== Z#KOVAB ~So that is why I seem strong to you?~
== Z#KIYOB ~You know it is hopeless, pointless even. Dangerous, and yet leading nowhere... why do you go on?~
== Z#KOVAB ~I might not be schooled in the law, but I know what is right and what is wrong. An inner law, and I'm sure this term shouldn't be too unfamiliar to you.~
== Z#KIYOB ~Odd that I should once have thought having such a thing to be most unseemly, more so in us law enforcers than in mere citizens. Too often it has been abused, used as a reason for people to have their own way, and take the law into their own hands.~ 
= ~Yet of late I have seen how it can be a strength so great it keeps a man close to light though he has no compelling reason to do so, and many practical reasons to do otherwise.~
== Z#KOVAB ~Well, therein the liability, and the eventual outcome of possessing this "strength", since you choose to recognise it as such, has yet to be seen.~
== Z#KIYOB ~Do not worry, you have a friend in me who is not short on "strength", at least that is what you choose to recognise as such.~
= ~Or you can call it "pride." It doesn't make a difference to me.~
== Z#KOVAB ~I think it would, but I'll choose to call that quality "commitment to a friend".~
== Z#KIYOB ~I might almost call that optimism if I didn't know you to be sardonic, but I think I can afford to be a little optimistic in this respect as well.~
EXIT

// Kiyone on Writing

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
GlobalGT("KKRomance", "GLOBAL", 1)
Global("Z#PartyRested","GLOBAL",1)
Global("BKyWrite", "GLOBAL", 0)~ THEN Z#KOVAJ kiyowrite1
~You really seem to like writing a lot, don't you, Kiyone?~
DO ~SetGlobal("BKyWrite", "GLOBAL", 1)
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ ~It's not unenjoyable, and a useful skill to hone in communicating in my reports.~
== Z#KOVAJ ~There don't seem to be that many reports to keep you occupied so often during the times we stop to rest.~
== Z#KIYOJ ~Quite so. I write because I like to. It helps keep my mind active, while taking it off other things, like the violence of the day.~
== Z#KOVAJ ~I see. I do the same when I study at times, only I don't have many books anymore, bar my spellbook.~
= ~What do you usually write about then, if not your work?~
== Z#KIYOJ ~Outlines, stories, lessons.~
== Z#KOVAJ ~Stories? Those seem the least like you.~
== Z#KIYOJ ~It helps me think like a criminal to write like one. It's interesting to try to apply a methodology I've just seen through, try to cover it up and then find a way from the investigator's perspective to see through it.~
= ~Though less people die in the stories.~
== Z#KOVAJ ~I suppose the investigator almost always survives and gets through?~
== Z#KIYOJ ~Yes, along with most of the witnesses and victims as well.~
== Z#KOVAJ ~Sounds like quite a few happy endings.~
== Z#KIYOJ ~Indeed. After all, happy endings are just for stories that haven't ended yet.~
== Z#KOVAJ ~Yes. The odds are that sooner or later the investigator will meet his match, or get killed, or both.~
== Z#KIYOJ ~Those are the odds, yes. They haven't happened, but readers with half a brain will know that. Anyway they're just stories, they're not real. The world doesn't really work this way.~
== Z#KOVAJ ~Anyone read them before?~
== Z#KIYOJ ~No, and whether or not you will be the first makes no difference to me.~
== Z#KOVAJ ~I see. I'll read while you write, then. It'll be something simulating to pass my time.~
== Z#KIYOJ ~Suit yourself.~
DO ~RestParty()~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
GlobalGT("KKRomance", "GLOBAL", 1)
Global("Z#PartyRested","GLOBAL",1)
Global("BKyWrite", "GLOBAL", 1)~ THEN Z#KOVAJ kiyowrite2
~The stories I read were fairly interesting. Some bits could be improved I think.~
DO ~SetGlobal("BKyWrite", "GLOBAL", 2)
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ ~That's good. Any information that helps me write better is good.~
== Z#KOVAJ ~Criminals don't really just think a logical fashion. They can be erratic and irrational, and it's common to use these traits against them.~
== Z#KIYOJ ~That is true, as I've often found myself, but it makes the case files far more challenging as study materials to assume that they are rational and therefore as close to humanly perfect in covering up their tracks.~
== Z#KOVAJ ~It's probably a worthy area of study to be able to detect anomalies and patterns in their ways. You covered that to some extent, but they can be advantageous when facing them.~
== Z#KIYOJ ~Such as when trying to get away, but I can see how that may be interesting in bringing them down. There's little point in tracking the criminal only to be unable to ensnare him.~
== Z#KOVAJ ~Yes, I guess that's why you provide such detail in your writings, so the reader can try to anticipate how the investigator overcomes the problem.~
== Z#KIYOJ ~Observation is not just crucial to clue finding and analysis, but also to survival and detection of the enemies and so.~
== Z#KOVAJ ~Detail is interesting and beautiful as well, but there'd be little point to it if it didn't serve a practical purpose in some way.~
== Z#KIYOJ ~I'm glad you see things that way.~
== Z#KOVAJ ~You think your fellow Sentinels will have much chance to read and enjoy these?~
== Z#KIYOJ ~They will probably be approved, yes, once I present them back as studies. They're hypothetical, of course, but hopefully handy exercises to sharpen the mind.~
== Z#KOVAJ ~For those with the appreciation, they're very entertaining to read as well. Certainly far better than studying spellcrafting tomes and physics of the body to enhance thievery.~
= ~It is interesting to note that entertainment, while hardly meaningful in itself, is a helpful tool to help ensure knowledge gets transmitted effectively.~
== Z#KIYOJ ~It is good not to be misunderstood in that area. Simple things can be used for pragmatic purposes, after all.~
== Z#KOVAJ ~I notice then that your protagonist is rather scrupulous then, in that sense. I don't see her using her allure on others, apart from getting into their minds.~
== Z#KIYOJ ~Maybe she does have some moral scruples after all. Still, I did not intend for her to be alluring, though she probably could if she wanted to.~
== Z#KOVAJ ~If her thought processes are anything like the story is written, she is certainly very formidable opponent. Perhaps therein her allure, though it is hardly healthy to consider sooeone who is formidable as alluring.~
== Z#KIYOJ ~I find myself wondering how cunning you could be, if you put your mind to it. But if that is the case, I'm probably already in your web of manipulation.~
== Z#KOVAJ ~That is probable, yes, though I suspect you have the advantage in the current situation. I wonder who will prevail in the end.~
== Z#KIYOJ ~We shall have to see.~
DO ~RestParty()~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
GlobalGT("KKRomance", "GLOBAL", 1)
Global("Z#PartyRested","GLOBAL",1)
Global("BKyWrite", "GLOBAL", 2)~ THEN Z#KIYOJ kiyowrite3
~I've been considering, how often are you able to deduce the outcome or course of action, based on the stories? And yes, I know you have reason to conceal your perceptiveness, but just set it aside for this.~
DO ~SetGlobal("BKyWrite", "GLOBAL", 3)
PlaySound("kkrom2") PlaySong(0)~
== Z#KOVAJ ~Well, after I got used to your style, it wasn't that hard to look ahead and to be able to spot the clues. I am after all, a criminal, so I get the advantage of the other side, as well.~
== Z#KIYOJ ~It would take more than just a criminal to be able to perceive so well. And what of the general lessons learnt, separate from the work of an investigator?~
== Z#KOVAJ ~Separate from the work of...?~ 
= ~I see. It is more than just a set of case studies or study guides. Lessons learnt and illustrated, seen in practicable terms, that often cannot be effectively seen theoretically.~
= ~It must pertain to the framework of the investigator's work then - the Law.~
== Z#KIYOJ ~My work is all neatly dated.~
== Z#KOVAJ ~Dated from before we ever met.~
== Z#KIYOJ ~No framework is necessarily perfect, especially those that arise from an ad hoc basis, such as the Law. I've studied my own notes as well, noticing the gaps, and it took me a while to accept that there are flaws in what I've been basing my work on.~
== Z#KOVAJ ~There is no pardon, no restitution.~
== Z#KIYOJ ~There is no proof, either. All proof is circumstantial and based on deduction. Even confessions are flawed - a person may be misled into thinking he or she is guilty, or have other reasons, but not necessarily be so.~
== Z#KOVAJ ~And these writings, if they move throughout the Sentinels, they slowly bring your point across. Not as doubt, but as ways to be improved on. A subtle form of brainwashing, if I may so put it.~
== Z#KIYOJ ~Why yes, indeed you may, that is a valid way of looking at it. However, I'm not the only one to be aware of such issues.~ 
= ~I'm certain those higher up in the Sentinels probably know there has not been a satisfactory set of laws to encompass and provide room enough to handle and rectify all the uncertainties of reality as they arise.~
== Z#KOVAJ ~I see. So that is your aim - to create a law that addresses all those issues.~
== Z#KIYOJ ~Indeed. But addressing the shortcomings are not enough - the law came about for a purpose, and the ideal law should be geared towards that purpose.~
== Z#KOVAJ ~You're trying to put your experience and your inner law out onto paper.~
== Z#KIYOJ ~One can put it that way, but not just that. An individual's knowledge is always limited - principles and logic must be the basis for translating it to a wider scale.~
== Z#KOVAJ ~Maybe when all this is over, I might be able to help you on it. As a counter balance, of course, so that it is more impartial and balanced.~
== Z#KIYOJ ~Assuming you're still alive at the end of all this, of course.~
== Z#KOVAJ ~It's a fair enough reason to keep the idea of living attractive.~
== Z#KIYOJ ~You are indeed very strange.~
== Z#KOVAJ ~And so are you.~
DO ~RestParty()~ EXIT

// Kova on Fishing

CHAIN
IF ~	Global("KvFishing","GLOBAL",1)
	Global("BKvFishing","GLOBAL",0)
	Global("Z#KvFishingPlace","GLOBAL",0)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KIYOJ BKvFishing11
~Where are you going this time, Kova?~
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",1) 
SetCutSceneLite(TRUE)~
== Z#KOVAJ ~I thought it would be a good time, perhaps, to do some fishing. It has been quite a while since I last did so, and recent events have helped me settle myself more to be able to enjoy it again.~
== Z#KIYOJ ~I see. I suppose I am obliged to go with you, just to keep an eye on you and make sure you aren't going to run off.~
== Z#KOVAJ ~I doubt I'd like that, but I know better than to try to turn you away from your duty. After all, trusting me to be a friend is one thing, but turning from your duty is something else.~
== Z#KIYOJ ~Your thoughtfulness is appreciated.~
== Z#KOVAJ ~That is good to hear. Let's go then - it's not often we are in a place that is suited for such an activity.~
EXIT

CHAIN
IF ~	Global("Z#KvFishingPlace","GLOBAL",3)	
	Global("BKvFishing","GLOBAL",0)
	Global("KvFishing","GLOBAL",1)~ THEN Z#KOVAJ BKvFishing12
~This should be a good spot. It does seem a peaceful <DAYNIGHT>. Perfect for fishing.~
DO ~SetGlobal("KvFishing","GLOBAL",2) SetCutSceneLite(TRUE) 
PlaySound("kkrom2") PlaySong(0)~  
== Z#KIYOJ ~I can stand watch while you unwind.~
== Z#KOVAJ ~There's no real need to. There's something almost therapeutic about this activity - it is calming, soothing, and peaceful, but it somehow also provides a strong guard and awareness all round.~
= ~Excellent practice for keeping alert and on guard while giving yourself some peace and relaxation.~
== Z#KIYOJ ~From the sound of things, it's probably also enjoyable.~
== Z#KOVAJ ~I thought you might need a pragmatic nudge to be persuaded.~
== Z#KIYOJ ~Then I think I'll take up your offer. How does one begin?~
== Z#KOVAJ ~Let's see - I must admit, I haven't tried to teach this before - first I think we must find a rod...~
END
IF ~AreaCheck("AR1100")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(8) )
ActionOverride("Kiyone",Face(10) )~ EXIT
IF ~AreaCheck("AR1200")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(9) )
ActionOverride("Kiyone",Face(11) )~ EXIT
IF ~AreaCheck("AR1800")~
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(7) )
ActionOverride("Kiyone",Face(5) )~ EXIT
IF ~AreaCheck("AR2500")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(6) )
ActionOverride("Kiyone",Face(7) )~ EXIT
IF ~AreaCheck("AR2600")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(13) )
ActionOverride("Kiyone",Face(15) )~ EXIT
IF ~AreaCheck("AR3000")~ 
THEN DO ~RealSetGlobalTimer("KKDreamT","GLOBAL",2)
ActionOverride("Kova",Face(7) )
ActionOverride("Kiyone",Face(6) )~ EXIT

CHAIN
IF ~	Global("KvFishing","GLOBAL",2)
	Global("BKvFishing","GLOBAL",0)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KIYOJ BKvFishing13
~This is... quite pleasant, actually.~
DO ~SetGlobal("BKvFishing","GLOBAL",1) 
SetGlobal("KvFishing","GLOBAL",0) 
SetGlobal("Z#KvFishingPlace","GLOBAL",0) 
SetCutSceneLite(FALSE)~
== Z#KOVAJ ~I'm glad we agree.~
== Z#KIYOJ ~It's like we're becoming part of the land, to feel all of our surroundings, the shrubs, the ground, the cover, all around us.~
== Z#KOVAJ ~Some people forget that, what it means not just to focus on the rod, but on all that is around you, appreciate it, be part it. Plus, it helps keep an eye out for dangers. And you have your affinity for the forest to make you even better and sharper than me.~
== Z#KIYOJ ~Indeed, when one is aware of a breeze moving amidst the leaves, aware of a ripple on the water's surface, and aware even, of the warm breath of one's companion.~
== Z#KOVAJ ~Ah.~
= ~It is good to know that at least one other sees some value in my continued breathing.~
== Z#KIYOJ ~It's just a sign that you're alive, and more importantly, it indicates your disposition in case you have something planned up your sleeve.~ 
= ~Currently, you are taking very regular and measured breaths, especially only just.~
== Z#KOVAJ ~Really? How interestingly astute.~
DO ~MoveGlobalObject("Kova",Player1) 
MoveGlobalObject("Kiyone",Player1) RestParty()~ EXIT


CHAIN
IF ~	Global("KvFishing","GLOBAL",1)
	Global("BKvFishing","GLOBAL",1)
	Global("Z#KvFishingPlace","GLOBAL",0)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KOVAJ BKvFishing21
~Yes, the answer to your question is that I'm going to betray your trust and run off from the party.~
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",1) 
SetCutSceneLite(TRUE)~
== Z#KIYOJ ~I guessed as much. You can have this then.~
== Z#KOVAJ ~Thanks. You learn pretty quickly how to select the rods.~
== Z#KIYOJ ~Being closer to the forest is of some pragmatic value.~
== Z#KOVAJ ~Of course, otherwise you'd never bother with it in the first place.~
== Z#KIYOJ ~Nor bother with accompanying you on this activity.~
EXIT

CHAIN
IF ~	Global("KvFishing","GLOBAL",2)
	Global("BKvFishing","GLOBAL",1)
	RealGlobalTimerExpired("KKDreamT","GLOBAL")~ THEN Z#KOVAJ BKvFishing22
~Your catch is improving, both quality and quantity.~
DO ~SetGlobal("KvFishing","GLOBAL",3) SetCutSceneLite(FALSE) 
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ ~Thanks. How long did it take you to get the hang of this?~
== Z#KOVAJ ~A while. I initially engaged in it because it seemed the only leisure activity I can engage in without lowering my guard. Studying isn't that relaxing, and too engrossing to be safe these past few months.~
== Z#KIYOJ ~So when did you actually start paying attention to the fish?~
== Z#KOVAJ ~When I got tired of eating meat and hunting for it. And you?~
== Z#KIYOJ ~It is good to be good at whatever you do. Set your mind to it, do it well.~
== Z#KOVAJ ~Yes. Do it once, do it right.~
== Z#KIYOJ ~So it appears I do have quite a lot in common with a thief. I wonder if I should feel insulted.~
== Z#KOVAJ ~If I were just a common thief, you ought to.~
== Z#KIYOJ ~I'm definitely insulted, then.~
DO ~MoveGlobalObject("Kova",Player1) 
MoveGlobalObject("Kiyone",Player1) RestParty()~ EXIT

CHAIN
IF ~	Global("KvFishing","GLOBAL",3)
	Global("BKvFishing","GLOBAL",1)
	Global("Z#PartyRested","GLOBAL",0)~ THEN Z#KOVAJ BKvFishing23
~Fish for breakfast, anyone? Courtesy of Kiyone.~
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",0) 
SetGlobal("KvFishing","GLOBAL",0)
SetGlobal("BKvFishing","GLOBAL",2)~
EXIT

CHAIN
IF ~	InParty("Kova")
	InParty("Kiyone")
	GlobalGT("KKRomance", "GLOBAL", 1)
	Global("BKvFishing","GLOBAL",2)
	Global("KvFishing", "GLOBAL", 1)
	OR(6)
	AreaCheck("AR1100") // Umar Hills
	AreaCheck("AR1200") // Windspear Hills
	AreaCheck("AR1800") // North Forest
	AreaCheck("AR2500") // Underdark Exit
	AreaCheck("AR2600") // Forest of Tethyr
	AreaCheck("AR3000") // Watcher's Keep
	Global("Z#PartyRested","GLOBAL",2)~ THEN Z#KOVAJ BKvFishing31
~I'm starting to recognise that look on your face.~
DO ~SetGlobal("Z#KvFishingPlace","GLOBAL",1) 
SetCutSceneLite(TRUE) 
PlaySound("kkrom2") PlaySong(0)~
== Z#KIYOJ ~It's not as if you are any less transparent.~ 
== Z#KOVAJ ~Well, it's not everyday that we get to do this.~
== Z#KIYOJ ~My sentiments exactly.~
= ~So let's get moving.~
EXIT

CHAIN
IF ~	Global("KvFishing","GLOBAL",3)
	Global("BKvFishing","GLOBAL",2)
	Global("Z#PartyRested","GLOBAL",0)~ THEN Z#KIYOJ BKvFishing32
~Here's more fish for breakfast, <CHARNAME>.~
DO ~SetGlobal("KvFishing","GLOBAL",0)
SetGlobal("BKvFishing","GLOBAL",3) 
SetGlobal("Z#KvFishingPlace","GLOBAL",0) 
SetCutSceneLite(FALSE)~
== Z#KOVAJ ~And lunch and dinner, probably.~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan")~ THEN
~A few more days of this I'd be starving than be eating another bite of those scaley things.~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia")~ THEN
~I'm starting to get sick of these, can we not just throw them away and eat other more delectable fare?~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2")~ THEN
~Not again... you cook great and all, but really, if I wake up to fish for a few more mornings I think I'll just lose it.~
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN
~Boo thinks that too much fish is a little too fishy for good.~
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia")~ THEN
~Is there no other choice but fish again? The cooking's really good and all but having some choice might be more preferable, I think.~
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie")~ THEN
~Erm... is there a chance we can try something else instead?~
== JANJ IF ~InParty("Jan") InMyArea("Jan")~ THEN
~Fish are healthy and all, but what I really need now, clearly, is more turnips. It's a sad thing to separated from your first love, especially by a whole bunch of fish.~
== Z#KOVAJ IF ~OR(12)
InParty("Jan") InMyArea("Jan")
InParty("Aerie") InMyArea("Aerie")
InParty("Nalia") InMyArea("Nalia")
InParty("Minsc") InMyArea("Minsc")
InParty("Imoen2") InMyArea("Imoen2")
InParty("Korgan") InMyArea("Korgan")~ THEN
~I can't say I disagree with you all, but I'm not the only one making the decisions here...~
== Z#KIYOJ ~Our score will eventually even out, Kova.~
== Z#KOVAJ ~I suppose so, assuming wherever we are fishing doesn't run out of fish first.~
EXIT


// Viconia

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon", "GLOBAL", 0)~ THEN BVICONI Kiyo1
~I've heard your speciality lies in investigating cases. Tell me, what is the point in doing such a thing?~
DO ~SetGlobal("BKKVicon","GLOBAL",1)~
= ~Back in the Underdark the mistresses, handmaidens, priestesses and matrons punished and ruled as they saw fit. Investigation was almost unheard of, unless it was information they were after.~
== Z#KIYOB ~We investigate because the truth of all matters, especially in cases, must be brought to light, and the guilty must not go unpunished.~
== BVICONI ~I see. So, once the truth is known in a case, I suppose it gives the proceedings meaning and ensures that the guilty are punished at its conclusion.~
== Z#KIYOB ~You test my patience, drow. If you have something meaningful to say, speak and be done with it.~
== BVICONI ~Offering benefits and favours to the court would probably be far more effective than your needless efforts.~
== Z#KIYOB ~I should have known better than to expect something meaningful from you. There is much of our law that you are ignorant of, and your mind has no concept of the sanctity of truth.~
== BVICONI ~Perhaps, but I know that those presiding over the courts are no different from the rest of the filth out there. And that is all we need to know, isn't it?~
== Z#KIYOB ~Enough! Spout your prejudices elsewhere, to ears more willing to listen to them.~
 EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",1)~ THEN BVICONI Kova2
~So, Kova, given the rather flattering number of people who want you dead, how did you survive for long enough to still be here with us?~
DO ~SetGlobal("BKKVicon","GLOBAL",2)~
== Z#KOVAB ~I don't find any amount of pursuit flattering, Viconia. As for getting by, I had to rely on my stealth, my magics and my wits to get out of Athkatla in one piece.~
== BVICONI ~It sounded like it was a trying time for you.~
== Z#KOVAB ~Indeed, it was. To be alone, cut off from everything I had known, and to not know where I was going. I doubt anyone really knows how that feels.~
== BVICONI ~You might be pleasantly surprised.~
== Z#KOVAB ~Perhaps. And how was your time above the ground, Viconia? If what I gather is right, it couldn't have been easy for you.~
== BVICONI ~No, it wasn't.~
== Z#KOVAB ~I see. And... how was it like?~
== BVICONI ~Your questioning grows tiresome, male. The road ahead needs more of your attention than it currently occupies.~
EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",2)~ THEN BVICONI Kova3
~I've seen what you are capable of, half-breed. Tell me, how is it that you have not turned your skills to more useful, beneficial ends?~
DO ~SetGlobal("BKKVicon","GLOBAL",3)~ 
== Z#KOVAB ~What useful, beneficial ends are you talking about?~
== BVICONI ~A man like yourself, wielding an unseen knife and backed by powerful magic, could do almost anything he liked, rather than try to live according to the standards of others.~
= ~It's not as if those fools, surrounded by their corruption and petty squabbles, would know anything about what it means to do anything meaningful with their lives. How pathetic to perish trying to impress such worms.~
== Z#KOVAB ~That is true, but... what would I do, otherwise?~
== BVICONI ~Do all that is necessary to place yourself beyond such petty cares. Get rid of who you must, that none may prevent you from doing what is best for yourself and, if you so wish it, the best for others.~
== Z#KOVAB ~You make it sound simple to decide what the most ideal course of action is.~
== BVICONI ~Then such a decision will be left to those of lesser intelligence.~
== Z#KOVAB ~Your viewpoint is hardly news, really. Still, its good to know that at least someone agrees with these long unvoiced thoughts of mine.~
== BVICONI ~It is not a matter of agreement - having the power to be free to do as you wish to those who would oppose you, that is the only way to live.~
= ~But weak-willed as you surfacers are, that will no doubt be difficult for you to grasp. Perhaps, if you even live long enough, you will understand.~
== Z#KOVAB IF ~Global("KKRomance", "GLOBAL", 0)~ THEN
~Perhaps I already understand more of it than you know, Viconia.~
EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",3)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN BVICONI Kova4
~What a pity. To see the man you could be reduced to such a state of meek servitude to others' beliefs for the most pathetic of reasons.~
DO ~SetGlobal("BKKVicon","GLOBAL",4)~ 
== Z#KOVAB ~Really? What might that reason be, drow?~
== BVICONI ~Your obvious lust for Kiyone, of course. Whose wishes and views you have been trying very hard to live up to.~
== Z#KOVAB ~Rubbish! I feel nothing for lady Kiyone. We are mere acquaintances who happen to be working together.~
== BVICONI ~And that would be on your case? As if you couldn't up and vanish anytime you choose to, Kova. The poor thief dancing around the guardhouse to catch the eye of the inspector.~
== Z#KOVAB ~I don't know what you are talking about.~
== BVICONI ~Of course, you being the pragmatic person you are, would find it most appropriate to risk your life for so meaningful a thing as the perspective of someone else. After all, if you do survive you are guaranteed to win her heart.~
== Z#KOVAB ~This is foolishness, Viconia! Cease this at once!~
== BVICONI ~Whether or not foolishness continues, is not my choice to make, especially if you think the mere possibility of winning such a bed-partner worthy of your life.~
== BVICONI IF ~OR(2)
Global("ViconiaRomanceActive", "GLOBAL", 0) 
Global("ViconiaRomanceActive", "GLOBAL", 3)~ THEN 
~If you do change your mind, though, you know where to find me. For advice, and maybe a little more, if you prove worthy.~
EXIT

CHAIN
IF ~InParty("Viconia") InMyArea("Viconia") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",4)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN Z#KIYOB KKVicon5
~Viconia, I would have a word with you.~
DO ~SetGlobal("BKKVicon","GLOBAL",5)~ 
== BVICONI ~Oh? What put you in the mood for letting my prejudices offend your sensitive ears, half-breed?~
== Z#KIYOB ~I warn you, cretin. Do not think I am not aware of your schemes!~
= ~You have been dripping poison into him. I will not permit that to continue.~
== BVICONI ~If you insist, then I will remember to invite you to watch the next time I and he relieve each other of the drudgeries of the road. Just so you can see that what is dripped is far from poison.~
== Z#KIYOB ~Cease your lies, woman!~
== BVICONI ~Pathetic thing. You aren't even certain that what I say is the truth.~
= ~All males have urges. Since you didn't want to entertain him I thought to do you a favour or two by relieving you of that tiresome duty.~
== Z#KIYOB ~What are you insinuating?~
== BVICONI ~I have just been giving him what he desired. Since you are too weak to provide that, though you want to. You probably don't even know how to begin.~
== Z#KIYOB ~I am not interested in this!~
== BVICONI ~Then what does it matter to you what I was dripping into him?~
== Z#KIYOB ~I will not have you endanger my case by poisoning his mind. Without him to assist me I cannot uncover the truth satisfactorily.~
== BVICONI ~You amuse me, daarthir. Or rivvil, whatever it is. That you lust for him is apparent, yet you are so miserable as to deny it.~ 
= ~No wonder you surface females are dominated by your male counterparts. I should put you out of your misery, but for now, it will be more amusing that it continue.~
== Z#KIYOB ~I warn you, drow! If you do not desist I will pierce your worthless hide with a thousand arrows!~
EXIT

CHAIN
IF ~OR(2)
Global("ViconiaRomanceActive", "GLOBAL", 0) 
Global("ViconiaRomanceActive", "GLOBAL", 3)
Global("Z#TrialClear","GLOBAL",0)
InParty("Kova") InMyArea("Kova") 
InParty("Kiyone") InMyArea("Kiyone") 
Global("BKKVicon","GLOBAL",5)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN BVICONI KKVicon6
~Congratulations. It may interest you to know that your leashholder certainly cares enough to be uptight about me talking to you.~
DO ~SetGlobal("BKKVicon","GLOBAL",6)~
= ~Possessiveness and jealousy are always refreshing ways to know that you're on the right track. You must feel most satisfied on the inside.~
== Z#KOVAB ~No. Why should that be satisfying, or even of interest, to me?~
== BVICONI ~If that was the case, why would you care about being acquitted by the Athkatlan court?~
== Z#KOVAB ~Viconia, I have no interest in her. We hardly even trust each other enough to be friends.~
== BVICONI ~Really? What keeps you away from me, then?~
== Z#KOVAB ~What are you talking about now?~
== BVICONI ~I've seen the way you watch me, you males are all the same. If not for her, why else would you not try to draw closer?~
== Z#KOVAB ~I must admit I find you most fascinating to look upon, Viconia, but that is about the extent of my interest. I would not dare venture further, especially where so many males have ventured, I think.~
== BVICONI ~I say you lie, male. And do not think that you can mock me and get away unscarred.~
== Z#KOVAB ~And I say that if I were to venture further, I would be as many of those males of yours, and be certainly scarred.~
== BVICONI ~You almost make yourself sound like a challenge, and an interesting one to take up, perhaps.~
= ~Those are fine, supple fingers of yours. Would they like to feel their way over dark, lush curves, and learn the finer arts of making a woman lust to have you with her?~
= ~And of course, your own lean form could do with some easings, some coaxing with an artful tongue and skilled hands, to let out that tension inside of you that has never known release.~
== Z#KOVAB ~Viconia...~
== BVICONI ~You protest, but I can read the dark, hungry fires in your eyes. Are you frightened of giving in, of consuming one who takes delight in making you burn with needy eagerness?~
== Z#KIYOB ~Stop this at once!~
== BVICONI ~Such a rude interruption, indeed.~
= ~However, I'm feeling generous today, so you can watch and learn as well. I'm sure there is plenty you can learn, and it would certainly serve your purpose of being more attractive to this male here.~
== Z#KIYOB ~You will do NO such thing, drow! I will kill you before I allow that!~
== BVICONI ~You threaten so often it bores me. If this male is willing to entertain and be taught by me, such an exchange is certainly our freedom of choice. At least, I hear that your law says so.~
== Z#KIYOB ~He has no such desire! Is that not so, Kova?~
== Z#KOVAB ~Kiyone, I...~
== Z#KIYOB ~That's it! Do what you will, it's none of my concern! Once this case is done, it's over, and you can do what you like with this creature of yours!~
DO ~RunAwayFrom("Viconia", 30)~
== Z#KOVAB ~What in the... Kiyone!~
= ~Damned!~
DO ~MoveToObjectFollow("Kiyone")~
== BVICONI ~Amusing, delightfully amusing. But he won't be able to get away next time, and then you shall see, you foolish, pathetic half-elf.~
EXIT


CHAIN
IF ~InMyArea(Player1) InMyArea(Player1) 
InParty("Kova") InMyArea("Kova")
InParty("Viconia") InMyArea("Viconia")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKVicon","GLOBAL",6)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN Z#KIYOB KKVicon7
~It disturbs me to admit this, <CHARNAME>, but  I can barely bear the presence of that loathsome drow any longer. Despite the injustice of it, I almost wish that you had left her to burn on the stake in town.~
DO ~SetGlobal("BKKVicon","GLOBAL",7)~ 
= ~The stench she lays around our company is most sordid and putrid, and her vile thoughts and actions spit on everything that is right and true! How I long split her black skull open beneath my weapon and pierce her black heart with my arrows.~
END
IF ~~ THEN REPLY ~Is there some way I can help resolve this issue for you?~ GOTO KKVicon7-0
IF ~~ THEN REPLY ~What is the real reason why are you griping to me over her?~ GOTO KKVicon7-0
IF ~~ THEN REPLY ~And what do you expect me to do about it?~ GOTO KKVicon7-0
IF ~~ THEN REPLY ~I can't be bothered about your petty issues, so just shut up and keep in line.~ GOTO KKVicon7-1

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-1
~It appears I have misjudged you, <CHARNAME>. I will know not to trouble you again with my "petty" issues, as you so put it.~
DO ~IncrementGlobal("Break", "LOCALS", 1)
SetGlobal("BKiyoPC", "GLOBAL", 50)~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-0
~I would be most grateful if you could either expel her from our company, or if you are of the same mind as I am, I can put a permanent end to the black stain that she is on the surface of Faerun.~
= ~Which would be most agreeable for you?~
END
IF ~~ THEN REPLY ~Yes, she is irksome to me as well. Deal with her as you see fit.~ GOTO KKVicon7-4
IF ~~ THEN REPLY ~I agree with your assessment, and I think it would be best to remove her from the party.~ GOTO KKVicon7-3
IF ~~ THEN REPLY ~I also find her somewhat trying, but she is a crucial part of the party and I would rather she remain.~ GOTO KKVicon7-2
IF ~~ THEN REPLY ~She is far more precious to this party than you are, so just stew on your petty issues.~ GOTO KKVicon7-1

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-2
~Very well, if that is your wish concerning this matter, so it shall be. I am not pleased but while I am part of your group I must heed your word on this matter, however distasteful it seems to me.~
EXIT

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-3
~I'm glad you agree with me, <CHARNAME>, though I regret I cannot teach that foul creature a lesson she will not be able to recover from.~
= ~Thank you for indulgence, and it will be a great honor to continue with you in your travels.~
DO ~ActionOverride("Viconia", DropInventory() ) 
ActionOverride("Viconia", LeaveParty() )~ EXIT

CHAIN
IF ~~ THEN Z#KIYOB KKVicon7-4
~My sincere thanks, <CHARNAME>. It will be with great pleasure that I shall pay her back, in full, for what vexation she has caused us both.~
= ~Wretched drow, meet your end!~
== BVICONI ~What brings this hostility on?~
== Z#KIYOB ~You know full well, Viconia. Why ask?~
DO ~EquipRanged()
SetGlobal("KyVicFight", "GLOBAL", 1)
SetCutSceneLite(TRUE)~
== BVICONI ~I see that you are beyond reason. Very well then, I will put an end to your foolish strength, and crush you beneath the ground where you belong!~
DO ~ReallyForceSpell(Myself, CLERIC_HEAL) 
ReallyForceSpell(Myself, CLERIC_BLESS) 
ReallyForceSpell(Myself, CLERIC_AID) 
ReallyForceSpell(Myself, CLERIC_DRAW_UPON_HOLY_MIGHT) 
ReallyForceSpell(Myself, CLERIC_ARMOR_OF_FAITH) 
ReallyForceSpell(Myself, CLERIC_CHAMPIONS_STRENGTH) 
ReallyForceSpell("Kiyone", CLERIC_HEAL) 
ReallyForceSpell("Kiyone", CLERIC_ARMOR_OF_FAITH) 
ReallyForceSpell("Kiyone", CLERIC_BLESS) 
ReallyForceSpell("Kiyone", CLERIC_AID) 
ReallyForceSpell("Kiyone", CLERIC_BARKSKIN)
Attack("Kiyone")
SetCutSceneLite(TRUE)~ EXIT

// Post Kiyo Viconia Fight

CHAIN
IF ~GlobalGT("KyVicFight", "GLOBAL", 0)
Dead("Viconia")
!Global("KyVicFight", "GLOBAL", 3)~ THEN Z#KIYOJ ByeVicon
~The black-hearted witch lies fallen before me, and all is as it should be.~
DO ~SetGlobal("KyVicFight", "GLOBAL", 3)
ActionOverride("Viconia", LeaveParty() )
ReputationInc(2)~
== Z#KOVAJ 
~What in the... you just murdered her, like that?~
== Z#KIYOJ 
~She was a scheming, conniving drow, Kova. If I had left her around us, she would have corrupted more others than just you. Though you are my primary interest, because I need your assistance on your case.~
== Z#KOVAJ 
~I'm sure you have your reasons, whatever they are, however varied they are. All fully justified, yes, by the law?~
== Z#KIYOJ
~And you, who were so beguiled by her, you dare to judge me?~
== Z#KOVAJ 
~I never came close to touching her, Kiyone. But you don't know me, and you wouldn't believe me now, as it would mean admitting your own mistake.~
== Z#KIYOJ
~I did no wrong. It is fitting that she was ended here.~
== Z#KOVAJ 
~Yes, of course. I have no doubt.~
EXIT

CHAIN
IF ~GlobalGT("KyVicFight", "GLOBAL", 0)
Dead("Kiyone")
!Dead("Viconia")
!Global("KyVicFight", "GLOBAL", 3)~ THEN VICONIJ ByeKiyone
~Where is your bravado now, fool? I hope the worms find pleasure in your sickly pale flesh, as weak as your spirit had been.~
DO ~SetGlobal("KyVicFight", "GLOBAL", 3)
ActionOverride("Kiyone", LeaveParty() )~
== Z#KOVAJ 
~What is this that you have done, drow!?~
== VICONIJ
~I have defended myself well. Do you not exult with me in my victory? It is as much yours, for now you are free of those chains that bind you to your foolish course of action.~
= ~You no longer have to worry about what she thinks, or what the court thinks. All that is left is simply to find your enemies and slaughter them, all.~
== Z#KOVAJ
~No... you speak evil, creature, and someday, I will return for your blood.~
= ~But meantime, I will go, and I will take her with me, to see if anything can be done for her.~
== VICONIJ
~Weak, pathetic fool! Go then, to your death, since you are so eager for it! I am through with you and the snivelling waste of your talents that you are!~
== Z#KOVAJ
~I hope for your sake you are right, Viconia. If you do see me again, you will regret it, I assure you. Yes, you will regret very much, indeed.~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)
ActionOverride("Kiyone", DestroySelf() )~ EXIT








// Yoshimo

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaYoshi","GLOBAL",0)~ THEN BYOSHIM Kova1
~That's a handsome price on your head, Kova. If it were not for <CHARNAME> here, I might already be working to get that sum myself.~
== Z#KOVAB ~I've done in a few enterprising thieves of late - one more would mean little to me.~
DO ~SetGlobal("BKovaYoshi","GLOBAL",1)~
== BYOSHIM ~Ah, but I am no mere thief. I am THE Yoshimo! Do you not know me?~
== Z#KOVAB ~Even if I did, it wouldn't matter. I'll do in whoever threatens my life, be he with or without a name.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaYoshi","GLOBAL",1)~ THEN BYOSHIM Kova2
~Frankly, I'd be flattered to have such a rich bounty on my head.~
== Z#KOVAB ~You might be, but I'm not.~
DO ~SetGlobal("BKovaYoshi","GLOBAL",2)~
== BYOSHIM ~You don't take very well to attempts to make friendly conversation, do you?~
== Z#KOVAB ~That topic doesn't exactly bring up the friendly side of me. I have problems enough without bothering about what others think.~
== BYOSHIM ~They might prove to be friends, and you never know when one of them would save your life someday.~
== Z#KOVAB ~And they might just as easily cost me mine.~
EXIT

CHAIN
IF ~InParty("Yoshimo") InMyArea("Yoshimo") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaYoshi","GLOBAL",2)~ THEN Z#KOVAB Yoshi3
~I apologise, Yoshimo, if I have offended you earlier.~
DO ~SetGlobal("BKovaYoshi","GLOBAL",3)~
== BYOSHIM ~Let the bards not sing that Yoshimo is an unforgiving soul. Apology accepted, my friend.~
== Z#KOVAB ~My thanks. So, how does travelling with this little band of admirers further your ends?~
== BYOSHIM ~It is my turn to apologise, then, for it's in my professional interests to keep that information confidential.~
== Z#KOVAB ~I see. That makes two of us, though how the situation fits my interests should be pretty transparent.~
== BYOSHIM ~Both of us serving our own interests? Yoshimo thinks that is not the best of situations.~
== Z#KOVAB ~True. At least we'll both be relatively understanding if we have to cross blades. Here's the advance notice, so no hard feelings.~
== BYOSHIM ~No hard feelings, especially to one with a blade as fine as yours.~
== Z#KOVAB ~Though the skill with which it is wielded leaves much to be desired.~
== BYOSHIM ~Maybe I could teach you a thing or two about it, and in return I might know where to get a blade like that forged.~
= ~Yoshimo the blade master, that has a nice ring to it, yes? Thief is such an ugly word.~
== Z#KOVAB ~You are truly one of a kind.~
== BYOSHIM ~But of course! There can only be one Yoshimo.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("BKovaYoshi","GLOBAL",3) 
PartyHasItem("YoshKata")~ THEN YOSHJ Kova4
~Thank you, my friend. This blade here is a fine one, and useful at that.~ 
= ~Not only can I now fight my foes nearby, but should they turn to run, I should hurl this segment of the blade into their backs.~
== Z#KOVAJ ~I'm glad you find it of use, Yoshimo. It is fine and fitting for you.~
= ~Though I must admit, I always thought the purpose of being able to strike at your enemies from afar was to ensure that they didn't come close.~
== YOSHJ ~Ah, yes. I suppose it must be so, for your handling of your weapon could use some guidance from a samurai.~
== Z#KOVAJ ~You, a samurai?~
== YOSHJ ~Not quite, but close. After all, I am Yoshimo, and that makes all the difference.~
== Z#KOVAJ ~Yes, indeed. Well, samurai or not, I could certainly use your guidance, Yoshimo.~
== YOSHJ ~And for the blade you have led me to, with <CHARNAME>'s blessing, I would not have a warrior's honor if I should not teach you something.~
== Z#KOVAJ ~You are too kind.~
== YOSHJ ~Anything for a friend. Now come, let's dance!~
DO ~EquipMostDamagingMelee()~
== Z#KOVAJ ~Certainly, but not on a head of a pin, please.~
DO ~EquipMostDamagingMelee()~
== YOSHJ ~Hah! You'll be able to before the <DAYNIGHT> is out!~
DO ~SetGlobal("BKovaYoshi","GLOBAL",4)
ClearAllActions()
StartCutSceneMode() StartCutScene("Z#yoshkv")~ EXIT


// Keldorn

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",0)~ THEN BKELDOR Kova1
~You don't have the air of a common thief, Kova. Indeed, you stand as one whose spirit has turned bitter in grief.~
== Z#KOVAB ~With good reason - I stand innocent of the crimes of which I have been accused.~
DO ~SetGlobal("BKovaKeld","GLOBAL",1)~
== BKELDOR ~We will redress your grievances, but the matter of your other crimes cannot be overlooked.~
== Z#KOVAB ~Are the demands of the law so implacable, that there is no forgiveness where it is sought? Or be there only none in your justice and your law?~
== BKELDOR ~Justice will be served in its measure. Torm will deal with us all, according to our deeds.~
== Z#KOVAB ~And a good man must pay for deeds his hand has been forced to?~
== BKELDOR ~You may be, as you claim, a good man, but you are still a thief. To claim innocence in such matters is a lie.~
== Z#KOVAB ~When I was but a child, I learnt that should I steal not, I would either starve or be gutted for my lack of use.~
== BKELDOR ~I'm sure there were other alternatives.~
== Z#KOVAB ~There were none.~
== BKELDOR ~If that is so, better to starve, then.~
== Z#KOVAB ~You disgust me, Keldorn. If you are wise among your Order, then I am sorry I have not sooner spat on the name of the Radiant Heart.~
== BKELDOR ~Torm is my judge, not you. Nor are you fit to.~
= ~One lesser than me might be moved to strike you down for your words, but to show you what it means to be your better, I will just leave you to your thoughts for now.~
= ~If you will, use this respite to think on what it means to be as I am.~
EXIT

CHAIN
IF ~InParty("Keldorn") InMyArea("Keldorn") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",1)~ THEN Z#KOVAB Keldorn2
~I've thought on what you said earlier, Keldorn.~
DO ~SetGlobal("BKovaKeld","GLOBAL",2)~
= ~Though I cannot yet agree in entirety with what you said, I appreciate your gesture.~
== BKELDOR ~I acted as I did not just for my own sake, but for the name of the Order.~
= ~It is odd though, that as a thief, you did not think ill of the Order.~
== Z#KOVAB ~I've never wanted any part in the lawless life I led. I was compelled by circumstance, but I cannot expect you to understand that.~
= ~Almost everything seemed better in comparison. Even the brash actions of those in the Order of the Radiant Heart.~
== BKELDOR ~Many would have found great, if base, pleasures in the life of a successful thief. An option that was probably open to you.~ 
= ~But you possess a different spirit. One which you should take heart in.~
== Z#KOVAB ~I do not rejoice in what will probably be the death of me.~
== BKELDOR ~Better to have sought for righteousness and perished, than to live long in evil.~
== Z#KOVAB ~Yeah right. You have no idea what it was like, do you?~ 
= ~No, you were all coddled from birth and don't know what it meant to live surrounded by those who did what was wrong as if it were right, and expected you to do the same.~
= ~And if you didn't, they would graciously put you out of your misery with a sharp knife.~
== BKELDOR ~Indeed, I do not know how. Yet I know there is still a hope for salvation, and there is a place for one as you, to lift you out of damnation.~
== Z#KOVAB ~There is no such place. Your own lips declared that my crimes cannot be overlooked.~
== BKELDOR ~That is so, yet there is redemption.~
== Z#KOVAB ~Let me guess. An unquantifiable, intangible state of being, where somewhere along the line, you get a feeling that you've done enough to be considered "good"?~
= ~And which of course, gets you nowhere with the authorities unless there's a hefty bribe along the way.~
== BKELDOR ~Your unseemly words grate on my ears and wear my patience thin. My words are of what is right, but it is up to you what to make of them.~
= ~Return to me if you would learn more, but otherwise do not, for I do not have so much breath left that I would cast pearls of wisdom to unteachable swine.~
EXIT

CHAIN
IF ~InParty("Keldorn") InMyArea("Keldorn") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",2)~ THEN Z#KOVAB Keldorn3
~I apologise, for my hasty words earlier. Still, it is much to expect me to believe in.~
DO ~SetGlobal("BKovaKeld","GLOBAL",3)~
== BKELDOR ~Do you not believe in anything? A God, a deity?~
== Z#KOVAB ~I do not trust any God enough to place anything of mine into their hands.~
== BKELDOR ~No wonder you lack faith! But what approval do you seek, if not that of your God? One's standing in the eyes of men is always an unstable, wavering thing.~
== Z#KOVAB ~I do not know.~
== BKELDOR ~It's not an easy road ahead, and if you would walk it you must face what is coming to you, for all that you have done.~
= ~Still, if you would walk it, I will guide as I am able.~
== Z#KOVAB ~I thank you for the offer, and I will think on it.~
EXIT

CHAIN
IF ~InParty("Keldorn") InMyArea("Keldorn") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKeld","GLOBAL",3)~ THEN Z#KOVAB Keldorn4
~Tell me more about this redemption of yours, Keldorn.~
DO ~SetGlobal("BKovaKeld","GLOBAL",4)~
== BKELDOR ~It is not something that would mean much to one without faith. Torm could have redeemed me, but in the eyes of man I could still be the same.~
== Z#KOVAB ~I know what I am, or rather, what I seek for. I do not need a God to tell me I am good.~
== BKELDOR ~Yet you are bitter and know no peace.~
== Z#KOVAB ~I am hounded on all sides by those seeking my death. How could I know peace?~
== BKELDOR ~Peace comes from within, from knowing who you are, where you came from and where you are going.~
== Z#KOVAB ~Oh, I know that very well, too well, in fact.~
= ~I am a man who has been compelled to do things I would rather not have, a man born and raised in darkness, and I am going to die for this accursed streak of goodness in me.~
== BKELDOR ~If that gives you no peace, then until it changes, you will have no peace.~
== Z#KOVAB ~I see. Then if that is peace, and redemption, those without a conscience would have no lack of either.~
== BKELDOR ~That is not so, for they will be damned to the fires of hell for stilling the work of truth in their lives.~
== Z#KOVAB ~You make truth and righteousness sound so difficult.~
== BKELDOR ~Is it not? That path, the path I walk, is not for the cowardly nor the unquestioning.~
== Z#KOVAB ~Then perhaps I am already on that path.~
== BKELDOR ~If I had thought you a mere thief I would not have even stooped to speaking with you.~
== Z#KOVAB ~I see. Guide me then, and I will listen. Though more than that I cannot promise.~
== BKELDOR ~Such hunger for goodness bodes well for your spirit and your soul.~
== Z#KOVAB ~That may be so, but I fear it bodes ill for my flesh. ~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaKeld", "GLOBAL", 3)
GlobalLT("BKovaKeld", "GLOBAL", 5)
// Global("KKRomance", "GLOBAL", 0)
GlobalLT("KKRomance", "GLOBAL", 2)~ THEN BKELDOR Kova5
~I can see you feel something for Kiyone, my young friend.~
==Z#KOVAB ~Is that so? How is it that I am unaware?~
DO ~SetGlobal("BKovaKeld","GLOBAL",5)~
= ~I merely look upon her as an ally, whom I just happen to be getting to know. Given what you and I have spoken about, I'm probably closer to you than to her.~
== BKELDOR ~If it were plain matters of the heart, I would not be overly concerned. What worries me is your looking upon her as a paragon of righteousness and truth. No one is fit to be considered as such.~
== Z#KOVAB ~I do not need you to speak of such obvious matters. She is fallible, and just a mere being after all. I've never really seen eye to eye with her anyway.~ 
= ~Apart from handling my case, what could ever make her want to have anything to do with me?~
== BKELDOR ~And why do you even ask yourself that question? Be aware of yourself, and so save yourself from your shortcomings, as well as those of hers.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaKeld", "GLOBAL", 3)
GlobalLT("BKovaKeld", "GLOBAL", 6)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN BKELDOR Kova6
~I am concerned your love for lady Kiyone might affect your journey onward into the light.~
== Z#KOVAB ~Me, love her? I'm starting to like her more as a friend, and that about sums up the extent of my affection for her. Besides, to construe an emotion born out of our ignorance for each other as love would be a mistake most unworthy of one such as her.~
DO ~SetGlobal("BKovaKeld","GLOBAL",6)~
== BKELDOR ~She's a fine young lady, no doubt about that, but that is not my concern. I fear you are staking too much of what you will be on her and the outcome of this case, and probably on your relationship with her, as well.~
== Z#KOVAB ~There is no relationship to speak of. I stake nothing on her, and my life is my own, as her life is hers. As such I fail to comprehend your words - speak sense, Keldorn.~
== BKELDOR ~What would you do should she should turn on you, perhaps in the certainty you are guilty, or for other reasons? Or if she should, Torm forbid, turn evil someday?~
== Z#KOVAB ~If that were to happen, my case and my cause would be lost, and death would be a welcome reprieve.~
== BKELDOR ~And if you survived? And fled elsewhere, perhaps?~
== Z#KOVAB ~I do not know. Probably settle down as a peasant somewhere outside of Amn, I suppose.~
== BKELDOR ~I would like to believe that, but I suspect that it would be more likely that your bitterness would consume you completely, and maybe even turn you towards evil.~
== Z#KOVAB ~It just might, but by then I shouldn't care less. Still, what has this to do with Kiyone?~
== BKELDOR ~She is not the only way to light, Kova. Nor is she the only reason. If she fails, there is still redemption elsewhere.~
== Z#KOVAB ~She will not fail.~
== BKELDOR ~So I pray.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaKeld", "GLOBAL", 3)
GlobalLT("BKovaKeld", "GLOBAL", 7)
Global("KKRomance", "GLOBAL", 2)~ THEN BKELDOR Kova7
~Now that you know Kiyone better, have you sorted out your feelings for her?~
== Z#KOVAB ~I've always known full well my feelings for her. Currently she's growing a little on me, but we do not yet love each other.~ 
DO ~SetGlobal("BKovaKeld","GLOBAL",7)~
== BKELDOR ~And yet you cannot imagine a life in the light without her.~
== Z#KOVAB ~I can. I will survive, wherever I must, doing whatever I must.~
== BKELDOR ~Indeed, yet survival is far from righteousness. Will you bother with righteousness if she's not around you? What meaning would you find in it?~
== Z#KOVAB ~I... I do not know.~
== BKELDOR ~So you've sought good all your life, but never actually found a reason to do so. And so you have cursed every good impulse in you, and she is the only reason not to.~
== Z#KOVAB ~Yes, it is as you say. She gives it all some semblance of sense. That I can go on in this... folly, and tell myself it is for a reason.~
== BKELDOR ~She would probably change your life, if she remained in it. But if she perished? Or if she loves you not? Or if the case should fall through?~ 
= ~Will you base your goodness, and the fate of your eternal soul, on such a fragile, ephemeral thing as a woman? If you lose this reason to go on, could you?~
== Z#KOVAB ~I used to think I could. But now I'm not so sure.~
== BKELDOR ~Be warned then. If you should stray and I cannot bring you back, I would see you dead before I should let you descend further.~
== Z#KOVAB ~How comforting. Have you no true friends, whom you value?~
== BKELDOR ~I value truth and righteousness above all else, and my own feelings pale in comparison to such greater matters.~
== Z#KOVAB ~I see. And suddenly I am grateful that I am not half as righteous as you are, Keldorn.~
EXIT






// Valygar

CHAIN
IF ~InParty("Valygar") InMyArea("Valygar")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaValy","GLOBAL",0)
!Dead("lavok01")
!Dead("lavok02")~ THEN Z#KOVAB Valy1
~Another good man wanted by the authorities, aren't you? It's nice to know I'm not entirely alone in my wretchedness.~
DO ~SetGlobal("BKovaValy","GLOBAL",1)~
== BVALYGA ~That is what little we have in common. A foul magic user like yourself deserves whatever comes his way.~
== Z#KOVAB ~What brings on this tirade of abuse? Your unfounded personal prejudices?~
== BVALYGA ~Far from unfounded. You are, after all, a Cowled Wizard.~
== Z#KOVAB ~Yes, and one who has not sought to do you harm.~
== BVALYGA ~Not yet, I suppose. But you are more than just a scheming mage, but also a crooked thief - you may yet intend to use me for your purposes.~
== Z#KOVAB ~I assure you, I have no such designs. Even though I'd rather be known as one among Cowled Wizards than one among the Shadow Thieves, they are still as much my enemies as they are yours.~
== BVALYGA ~That is a wretched view. Have you no eyes for the wickedness of wizardry?~
== Z#KOVAB ~Wretched indeed I am, to have to choose between two evils. But who are you to judge the arcane forces, to condemn that which would preserve and protect?~
== BVALYGA ~I know enough to know that such powers corrupt, and corrupt completely. That is enough.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalLT("BKovaValy","GLOBAL",2)
OR(2) Dead("lavok01") Dead("lavok02")~ THEN BVALYGA Kova2
~You seem to take pleasure in seeing good done about you.~
== Z#KOVAB ~Actually, I'm pretty ecstatic over such matters. My conscience has, unfortunately, survived a lifetime of miscreant actions, so I may as well reap some joy from it while I'm still breathing.~
== BVALYGA ~You make it sound as if you would surely die. The way onward is still there, just that you might not see it.~
== Z#KOVAB ~Easy for you to say - your past is done with and over. Mine is just waiting to catch up.~
== BVALYGA ~I overcame my past. So can you.~
== Z#KOVAB 
IF ~Global("BKovaValy","GLOBAL",1)~ THEN ~Well, as you put it, I deserve whatever comes my way, yes?~
== Z#KOVAB 
IF ~Global("BKovaValy","GLOBAL",0)~ THEN ~Well, it is really nothing more than I deserve, isn't it?~
== Z#KOVAB ~I may have been framed for my crimes, but still there are deeds for which I have yet to receive my dues for.~
== BVALYGA ~To hear something like that from you shows me that there is more good in you than I would have thought initially.~
== Z#KOVAB ~I suppose you are right. Though, I often feel it a curse more than a blessing.~
== BVALYGA ~Why should that be so? Is it not a privilege to know good from evil?~
== Z#KOVAB ~A burden as well. Even when I had no fear of a hidden dagger in my back, I spent my nights wondering if this was the road I would be destined to walk down forever.~
= ~Compare that to the pleasure of the others, and their cheerful willingness to do whatever they were told to, and maybe slit a few throats on the side without so much as batting an eyelid, I was at a distinct disadvantage.~
== BVALYGA ~Yet that dissatisfaction born of truth has seen you to this welcome place among us.~
== Z#KOVAB ~I doubt it. If it were not for this niggling piece of good in me, I would probably be somewhere outside of Amn by now.~
= ~But no, I had to stay behind stupidly and see this through, to see if I can be vindicated and absolved. A foolish move that will probably cost me my life, I wager.~
== BVALYGA ~Such a choice is not an easy one to make. You have my respect, Kova.~
== Z#KOVAB ~Thank you. Though such respect is better received if it comes with a better guarantee of my eventual survival.~
== BVALYGA ~Then I hope you will find that I do make a difference in that matter.~
DO ~SetGlobal("BKovaValy","GLOBAL",2)~ EXIT

CHAIN
IF ~InParty("Valygar") InMyArea("Valygar")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaValy","GLOBAL",2)~ THEN Z#KOVAB Valy3
~Something seems to have been weighing on your mind lately, Valygar.~
== BVALYGA ~Indeed it has. The world seems somewhat different now, that I've seen more of it in such company as I've been keeping.~
== Z#KOVAB ~My recent travels have also been somewhat of an eye opener. It's too bad it will probably all end suddenly to a knife in the dark, or if I'm lucky, in an open trial and execution.~
== BVALYGA ~Your morbid courage, if I may call it such, reminds me of my own encounters.~
== Z#KOVAB ~What of them? I seem to recall you having a distinct dissatisfaction with magic, though I'm unsure if your ancestor Lavok was the sole cause of that complaint.~
== BVALYGA ~No, its more than that. The influence of magic on my family has cost us our entire estate, and put a premature end to my parents. By my hand.~
== Z#KOVAB ~That must have been difficult. I hear most people are touchy about their families.~
= ~Still, negative experiences do not make for the truth of matters. There is more good in magic that perhaps any one person might ever know. After all, any power may corrupt, not just magical.~
== BVALYGA ~Your words ring true. Perhaps I have been running from the shadows of my perception all along.~
= ~How unlike yourself, who holds to truth, even at the possible real cost to your life. Perhaps I'm less of a man than I once thought I was.~
== Z#KOVAB ~It is not just my own "courage", as you put it, that keeps me here, since even if we get all the evidence, there is probably no true court of justice to present it in. If not for Kiyone, I'd probably be long gone.~
= ~So, what shadows be there for you to run from? After all, Lavok is no more.~
== BVALYGA ~Yes, and I had intended to be the last of the Corthalas, that the curse of magic may not run rampant in those who would come after me. But now I am not so sure. Maybe, if there was a way to control it.~
= ~Perhaps I will learn of such, in the days ahead. There is more out there, waiting, to be seen.~
== Z#KOVAB ~It is good to hear that from you, Valygar, and I think it makes you a better man.~
DO ~SetGlobal("BKovaValy","GLOBAL",3)~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaValy","GLOBAL",2)
// Global("KKRomance", "GLOBAL", 0)
GlobalLT("KKRomance", "GLOBAL", 2)
GlobalLT("BKovaValy","GLOBAL",4)~ THEN BVALYGA Kova4
~You mentioned before, that if not for Kiyone, you might be long gone. Do you feel something for her, Kova?~
== Z#KOVAB ~Me, feel something for her? You must be joking, Valygar. She is one who is necessary to meet the ends of my purpose - no more and no less.~
== BVALYGA ~I see. Perhaps then, you are drawn to her righteousness? She is quite a fine woman after all.~
== Z#KOVAB ~More than fine. She is a ranger like yourself, and the light of truth shines in her. A bit argumentative and sharp of tongue, though. Say, do you think you might be interested in her?~
== BVALYGA ~What...?~
== Z#KOVAB ~Just a thought. After all, you are both rangers, and both very good people who genuinely have no real crimes to speak of.~
= ~Come to think of it, since your family fortune's spent and all, perhaps turning me in to the authorities should get you both a nice amount of coin to get started off as a happily married couple. If nothing else, it should put an end to all this anxious expectation of mine.~
== BVALYGA ~No, I would never do such a thing to you. In any case, I know it when someone is not mine for the taking.~
== Z#KOVAB ~What do you mean? Who would stand in the way of a dashing gentleman like yourself, Valygar?~
== BVALYGA ~I... just forget I asked about anything.~
== Z#KOVAB ~Well, if you say so then.~
DO ~SetGlobal("BKovaValy","GLOBAL",4)~ EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaValy","GLOBAL",2)
GlobalLT("BKovaValy","GLOBAL",5)
Global("KKRomance", "GLOBAL", 1)~ THEN BVALYGA Kova5
~You do feel something for Kiyone, after all.~
== Z#KOVAB ~Not previously, but maybe now I do, since she and I got a few talks between us, to get to know each other a little better.~
== BVALYGA ~Right. So what made you decide you do feel something for her?~
== Z#KOVAB ~You make it sound as if I like her in a certain definitive fashion. I'm only just starting to entertain the possibility of friendship.~
== BVALYGA ~I think it is more than that. She gives you hope, does she not, that it all can turn out well?~
== Z#KOVAB ~I wish. Confidence in her view of the law would be confidence in naivete.~
== BVALYGA ~I beg to differ, as I believe Magistrate Bylanna is one capable of wise and fair judgment.~
= ~Still, if you care neither for her view nor for her, what about her keeps you here?~
== Z#KOVAB ~I wish I knew.~
== BVALYGA ~I think you feel more and care more than you admit.~
== Z#KOVAB ~I sincerely doubt it.~
== BVALYGA ~If you say so.~
DO ~SetGlobal("BKovaValy","GLOBAL",5)~ EXIT

CHAIN
IF ~InParty("Valygar") InMyArea("Valygar") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKovaValy","GLOBAL",2)
GlobalLT("BKovaValy","GLOBAL",6)
Global("KKRomance", "GLOBAL", 2)~ THEN Z#KOVAB Valy6
~Have you given any thought to what you'll be doing once this is all over?~
== BVALYGA ~I'm afraid not. Probably return to my home in the wilds, and put to rest what evil that may come may way.~
= ~And what kind of a future do you look forward to?~
== Z#KOVAB ~I don't exactly have high expectations. The way I look at it, this case can only conclude with my demise.~
== BVALYGA ~I think things might turn out better than you expect. What if you survive?~
== Z#KOVAB ~I do not know. I've hardly given it much thought.~
== BVALYGA ~Now is a good time to consider.~
== Z#KOVAB ~Well... I think I'd probably continue adventuring. And maybe do my bit to see that there's a bit more good in the world, I suppose.~
== BVALYGA ~And if Kiyone chose to settle down?~
== Z#KOVAB ~Well, I doubt she would but... hey! What are you thinking?~ 
= ~No wait, what am I thinking? Bah, now you've done it, Valygar!~
== BVALYGA ~I do not see how I've done anything worthy of reprove. Getting you to admit the truth about yourself hardly seems that.~
== Z#KOVAB ~Look, we're just getting to know each other now. We're not...~
= ~No, besides, she couldn't possibly agree to like me in that fashion. She'd have to be out of her mind.~
== BVALYGA ~Is that so? I fail to see how that explains the visibly increased amount of time you've been spending with her lately.~
== Z#KOVAB ~Let me remind you of the facts. I'm wanted, I'm hunted, I'm in trouble, and best of all, I'm a messed up criminal with a track record that's real. How's that for a reality check?~
== BVALYGA ~That does not explain the recent behaviour of the two of you, though.~
== Z#KOVAB ~Right. Honestly, I'm trying hard not to be too bothered about it. She'll probably hate me once she knows me better. And then... I'd be free! Haha!~
== BVALYGA ~You mean, then you'd pack up and head out of Amn.~
== Z#KOVAB ~You're absolutely right! Don't you see, that by engaging in this activity, is my only hope of getting out of this whole affair that I've let myself been drawn into?~
== BVALYGA ~If that happens, and you do that, you'll regret it.~
== Z#KOVAB ~Maybe, but I'll be alive to regret it. That'll be the best outcome, you see, because all this sentimentality baggage is almost definitely going to get me killed.~
= ~Since I can't get rid of it myself, I'll simply have to get her to help me get rid of it. If anybody would understand, it would be her.~
== BVALYGA ~I don't know if she'd understand it, but if that happens I think she'll definitely hunt you down to the ends of the earth.~
== Z#KOVAB ~No, she'll be with someone else. Someone else she'll be happier with. Like you.~
== BVALYGA ~Well, we'll see how the matter turns out.~
DO ~SetGlobal("BKovaValy","GLOBAL",6)~ EXIT




// Anomen

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaAnom","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)~ THEN BANOMEN Kova1
~I cannot understand why one as righteous as lady Kiyone would deign to help one of your lawless nature.~
== Z#KOVAB ~And I cannot understand why your God has gifted one who cannot make civil conversation with a tongue.~
DO ~SetGlobal("BKovaAnom","GLOBAL",1)~
== BANOMEN ~Such words I might have expected from one whose place belongs at the headsman's block, and then in the pits of hell. What galls me is that you have turned her away from the path of true righteousness.~
== Z#KOVAB ~Perhaps she has not turned away, but you do not know enough to recognise such. But what is true righteousness?~ 
= ~Something beyond the comprehension of men like you, certainly, who know only to wallow unthinkingly in blood and call it right.~
== BANOMEN ~If it were not for my regard for lady Kiyone's wishes, I would surely strike you down where you stand.~
== Z#KOVAB ~I stand on the truth of my words, Anomen, though I cannot help it if you would reject the truth. And what do you stand on? On your pride, on your doubly infallible judgment?~
== BANOMEN ~I stand where the law is, the law that demands that I mete the strong hand of justice out to you.~
== Z#KOVAB ~Is that law infallible, Anomen? If it is, why do you people investigate things? Why not just execute whoever is at hand, whoever is apparent?~
== BANOMEN ~Dog! You dare speak with such brazenness when the evidence is stacked against you?! Bah, since I have decided not to strike you down, I will save my words for someone worthy of them.~
== Z#KOVAB ~Save them, then. They are not fit to be spoken, and my ears can ill tolerate such clamour.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaAnom","GLOBAL",1)
GlobalGT("JermClue", "GLOBAL", 0)
GlobalGT("LOAClue", "GLOBAL", 0)
!Global("AnomenIsKnight","GLOBAL",1)~ THEN BANOMEN Kova2
~The evidence is starting to show, and there is indeed more to this matter than meets the eye.~
== Z#KOVAB ~The law is not infallible, nor perfect. How guilty should a man be, to justify ending his life?~
DO ~SetGlobal("BKovaAnom","GLOBAL",2)~
== BANOMEN ~I should have expected such words from you, the counsel that the evil use to cover up the vileness of their deeds.~ 
= ~You might be innocent of the crimes you were accused of, but you are still a criminal through and through, and one does not need evidence even, to know that that is so.~
== Z#KOVAB ~It appears I now owe myself many apologies. I've gone and spoken too fast, wasting my breath on a mindless buffoon.~
= ~I desist now, and shall spend time retching from the foul breath that your God has breathed upon this party.~
== BANOMEN ~Hold your tongue, vile creature, or I shall strike you down in Helm's name for the wrongs you have done!~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive", "GLOBAL", 2)~ THEN BANOMEN KKAnom1
~It's a fine <DAYNIGHT>, lady Kiyone.~ 
== Z#KIYOB ~That it might be, Anomen. Though I wonder, what brings your attention this way?~
== BANOMEN ~I was just thinking that we haven't quite had a chance to get to know each other, despite the considerable time we've spent travelling together, and I hope to set matters aright.~
== Z#KIYOB ~Well, that's one way of putting things, I suppose. I can't say I know how I would take to such an approach.~
== BANOMEN ~It is no shame to not know how to react to such attention, my lady. How appropriate that a righteous lady of action should be so reserved and meek in the face of such affairs.~ 
= ~Since my lady is too overwhelmed to speak of herself, as the gentleman I would have the honor of making myself known. My name you already know as Anomen, but my deeds with this party, are but a mere shadow of the true strength of my arm.~
== Z#KIYOB ~I would hardly think that the case, Anomen. You have fought valiantly enough among us, and I am grateful for your presence.~
== BANOMEN ~Such minor skirmishes as we have had are hardly worth the time it takes for me to clean up after them, especially since my prowess extends well into the realms of slaying giants even after a long day upon the field of battle.~ 
= ~It does help greatly though, to know that I've been appreciated by you, for it would be a long journey to find one as courageous and upright as you are, my lady, and to be able to impress you is an honor, even if it is well deserved.~
== Z#KIYOB ~You flatter me, Anomen. Needlessly, from my point of view. No doubt though, from your view it is necessary.~
== BANOMEN ~Yes, it is necessary. Against the light of my glory there is no doubt that you might easily forget that you too, are a woman most lovely and worthy, and a prize far exceeding any that one might find about the field.~
= ~I hope to remind you of that truth, and to let you know that even in my eyes, you are most welcome by my side, that our combined strength and righteousness would drive away the deepest shadows that may come our way.~
= ~And that I may also protect you from what you fear would overcome you, as is befitting my duty to a lady of such obvious upstanding virtue.~
== Z#KIYOB ~I am speechless with the honor you bestow upon me, Anomen, and with my limited intellect I fear I need some time to gather my wits about me.~
= ~I will let you know, good sir, when enough of it has returned for me to step once again into the glory of your presence and yet be able to make meaningful conversation without being blinded by the sheer light.~
== BANOMEN ~My lady is too kind. Yet, if such is your wish, I cannot help but to wait on you. Anytime you wish to draw close to me, be we travelling or in camp, do feel free to join me regardless of where I am or what task I might be attending to.~
DO ~SetGlobal("BKKAnom", "GLOBAL", 1)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",1)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive", "GLOBAL", 2)~ THEN BANOMEN KKAnom2
~It amazes me, my lady, that you have not spoken to me after such a good while. If it were not for your obvious grasp of my worth, I would almost be tempted to think you did not wish to speak to me again.~
= ~More likely then, it is that my words have given you so much room for thought that you are still undecided on my sincerity in giving them.~
== Z#KIYOB ~Your care in this matter is most seemly, Anomen. I appreciate your concern but I haven't yet made up my mind what to really believe.~
== BANOMEN ~That is no trouble, my lady. Perchance, I can help you realise the sincerity of my earlier words by endeavouring to know you better. It would be most appropriate for two souls so alike in truth to be better acquainted with each other.~
= ~That eventually we may be one, together, as things should be, for it is right, and give of our strength to each other.~
== Z#KIYOB ~I don't think being as one has anything to do with this just yet, Anomen.~
== BANOMEN ~Forgive my hasty speech, my lady, I forget how you must uphold your reservations in spite of however appealing other thoughts might be.~
= ~Still, please do not deny me the honor of knowing more about your past deeds and valour.~
== Z#KIYOB ~Well, if you insist. What exactly do you wish to know?~
== BANOMEN ~The matter of your previous work, and whose service you might aspire one day into.~
== Z#KIYOB ~I aspire into no service of any God, Anomen. I serve only what is true and what is upright, for I serve the law, hunting down those who would hide from it and exposing the schemes of those who would pull a veil over the eyes of the court.~
= ~However, these past deeds of mine are generally of little account, since they usually just involve taking on the more challenging cases and elusive criminals. Though most prefer to be led by their blades, my main prerogative tends towards finding out the truth of the matter.~
== BANOMEN ~Indeed, truly you are a great person, my lady, to so eagerly seek out the truth, and be slow to condemn those who might otherwise be guiltless.~
== Z#KIYOB ~Is that so? I've heard you ask that the others be quicker and swifter to deal out justice to those apparently guilty.~
== BANOMEN ~Indeed, that is one of the faults of my hot blood and my zeal to serve, though I am rarely mistaken in such matters. My conduct would be well tempered by you and your counsel, my lady, your wisdom and experience giving me guidance, should you deign to bestow such upon me.~
= ~Imagine the perfection such a state would lead to. My strong arm and your wise guidance, we could together, penetrate the darkness and bathe in the light of truth.~
== Z#KIYOB ~A worthy thought, I suppose. I'll think on it, Anomen, as soon as I am able to collect my thoughts in a manner that would prove worthy of your ears.~
== BANOMEN ~Even though I be a man unlike any other, in prowess and in righteousness, any of your words would certainly be worthy and welcome to my ears.~ 
DO ~SetGlobal("BKKAnom", "GLOBAL", 2)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",2)
GlobalGT("KKRomance", "GLOBAL", 0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive", "GLOBAL", 2)~ THEN BANOMEN KKAnom3
~Lady Kiyone, does something weigh on your mind? I saw your face darken as I drew near.~
== Z#KIYOB ~What is it again, Anomen? Is there no other matter to attend to, that you would fuss over the thoughts of a mere woman unworthy of having a part in the glorious tale that grows with your every breath?~
== BANOMEN ~There might be, but it pales against the importance of taking what weight that might be upon your most lovely bosom off of it, that your beauty be not dimmed.~
= ~It must be something truly serious that keeps us from getting more familiar with each other, for surely you would otherwise be eager to be part of my life, a role that would lift you up even to outshine the stars.~
== Z#KIYOB ~You are certainly a most persistent man.~
== BANOMEN ~In the face of the prize before me, I would be a blind fool to desist at the least obstacle, and I will not rest till I have found out what vexes you. It comes to mind now, that you have been discussing much with that criminal scum that you have deigned to help. Surely it is he who has been giving you cause for worry and unhappiness.~
= ~Come then, let me gather up my blade and we shall go and confront him for what spiteful and cowardly words spoken in secret that he has hurled into the face of your kindness to assist him. Such an ungrateful dog should be taught better manners.~
== Z#KIYOB ~You will do no such thing. Stand aside and put away your weapon.~
== BANOMEN ~I fear he must be exerting some unhappy control over you in some way, as expected from one of such conniving ways as he. Otherwise, there is no way that your brow be so darkened and yet your righteous hand stayed.~
= ~More than likely he has refused to assist in his own case unless you agree to what demands of his that he has placed upon you. Bah, it should have been fairer that we had been rid of him by handing him over to the authorities.~
== Z#KIYOB ~It is clear now that all sarcasm is lost on you. I shall now rectify that oversight by spelling things out clearly.~
= ~My brow is darkened because of your words and your repugnant presence, and if anything has given me great cause for offence it is your unseemly and persistent advances towards my person.~
= ~If you are indeed a gentleman, you will interest yourself no more in any of my affairs. Especially in the case I am handling regarding Kova, and in what time I may spend with him to get what information I may out of him.~
== BANOMEN ~This is beyond all comprehension, my lady. Surely he has turned you against my very being, and is even now working his evil into your heart with his lies and threats to corrupt your pure soul.~
== Z#KIYOB ~Good <DAYNIGHT>, Anomen. I hope I shall not have to repeat what I have already said.~
DO ~SetGlobal("BKKAnom", "GLOBAL", 3)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kova") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",3)
GlobalGT("KKRomance", "GLOBAL", 0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive", "GLOBAL", 1)
!Global("AnomenRomanceActive", "GLOBAL", 2)~ THEN BANOMEN KKAnom4
~Hold there, villain!~
= ~I said stand! Stand and face me, craven one!~
= ~You will heed my words or I will tear your black heart out of your crooked frame!~
== Z#KOVAB ~Oh? Excuse me, but I'm certain you've got the wrong person. I am neither villainous nor craven, and I can stand up straight enough.~
== BANOMEN ~Nay! My quarrel is with you, and your vile scheming ways shall be exposed in the light! And once that is done I will punish you fittingly for your crimes against all that is good, before sending you to hell!~
== Z#KOVAB ~I am not surprised that you have a quarrel with me, for the only ones you have no quarrels with are those whose pants you are trying to get into.~
= ~Still, your enmity should best be directed elsewhere, for I have a habit of ignoring fools.~
== BANOMEN ~You shall confess what you have done to Kiyone to turn her away from me! Relinquish your devilish hold on her mind and perhaps I might yet show you the mercy you are unworthy of.~
== Z#KOVAB ~Even if you were an ordinary man, it would already be most unseemly to blame others for your total want of attractiveness. I am not here to babysit your ego by taking responsibility for your utter failure to impress.~
== BANOMEN ~You dare deny your manipulation of her? What accursed spells have you set over her, what diabolical machinations have you on her purity?~
== Z#KOVAB ~Well, that's a novel way of describing the procedure through which we were starting to consider each other as possible friends. What would that have to do with you, anyway?~
== BANOMEN ~You lie, and I know better than to fall for your nefarious deceit. You shall speak the truth or I will wring it from your serpent tongue by breaking every limb of your scrawny form a joint at a time!~
== Z#KOVAB ~Clearly you are deaf though you have ears, and so are to be pitied even more than those without them.~
= ~Speak to her if you must, to convince yourself that I lie not. For surely a woman such as her would not lie, especially to one as true as yourself, yes?~
= ~Now go, and spare me the abuse of your tongue as you gather up what meagre courage you have to face the truth of matters.~
DO ~SetGlobal("BKKAnom", "GLOBAL", 4)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKKAnom","GLOBAL",4)
GlobalGT("KKRomance", "GLOBAL", 0)
!Global("AnomenIsKnight","GLOBAL",1)
!Global("AnomenRomanceActive", "GLOBAL", 1)
!Global("AnomenRomanceActive", "GLOBAL", 2)~ THEN BANOMEN KKAnom5
~I'm afraid I must play the part of the lout, my lady, and depart from your earlier wishes. For truly as a man of honorable action, I cannot stand idly by and watch calamity overtake one as fine and lovely as yourself.~
== Z#KIYOB ~If ever my patience was sorely tested, it would be in your presence.~
== BANOMEN ~I cannot help but speak, for my concern for you fills the very core of my being. I fear you are under some spell of his, and his lies will bring to ruin all that you have stood for.~
== Z#KIYOB ~There is no such thing, and if there is any spell upon anyone, it would be that which your total inability to grasp rejection has laid upon your limited intellect.~
== BANOMEN ~My heart is stricken at the words you smite me with, and I can think of no way that you could be so different from when I first spoke to you, unless it be by some foul and evil craftings of that lawless wizard upon your mind.~
== Z#KIYOB ~For the last time, there is no such thing! My primary cause of distress is the revulsion I feel in seeing a man so cowardly as to be unable to accept that the sole cause for the no he received for an answer is due to himself.~
== BANOMEN ~I understand, my lady.~
= ~You are too far ensnared in his lies to see how things are. I shall free you from his web of darkness by putting an end to the loathsome spider itself.~
== Z#KIYOB ~Stop.~
= ~You are one of honor true, a man bound by your duties, are you not?~
== BANOMEN ~What brings this on? Certainly, I am, yes, a man of honor the likes of which the Realms has never...~
== Z#KIYOB ~You will hear me and hear me well. I charge you, Anomen Delryn, to swear on oath never to raise your hand against Kova, unless I give you leave to do so after my case is concluded, or one of higher authority within this group should require such of you.~
== BANOMEN ~I... you ask for much.~
== Z#KIYOB ~If you cannot do such a simple thing as keep discipline, then you are unworthy even of being a soldier in any army, much less to call upon the name of the Radiant Heart!~
== BANOMEN ~That is not so! I am more than worthy, I...~
= ~I, Anomen Delryn, swear so, on oath, according to what you have said. May Helm deal with me ever so seriously if I turn my back on this word.~
== Z#KIYOB ~Good. Now go, and do not speak to me again.~
DO ~SetGlobal("BKKAnom", "GLOBAL", 5)~ EXIT

APPEND ~BANOMEN~

	IF ~InMyArea(Player1) InMyArea(Player1) 
	InParty("Kova") InMyArea("Kova") 
	InParty("Kiyone") InMyArea("Kiyone") 
	Global("BKKAnom","GLOBAL",5)
	GlobalGT("KKRomance", "GLOBAL", 0)
	!Global("AnomenIsKnight","GLOBAL",1)
	!Global("AnomenRomanceActive", "GLOBAL", 1)
	!Global("AnomenRomanceActive", "GLOBAL", 2)~ THEN BEGIN KKAnom6-0
	SAY ~<CHARNAME>, I must have a word with you.~
	= ~My heart is heavy laden and filled with righteous wrath, in the certainty that lady Kiyone is under some vile influence of that accursed criminal mage, and I would long to put my blade through him to free her from his vile clutches.~
	= ~Yet I am bound by an oath, that I cannot turn on Kova, unless Kiyone or some higher authority gives me leave.~
	IF ~~ THEN REPLY ~What would you have me do about that?~ DO ~SetGlobal("BKKAnom", "GLOBAL", 6)~ GOTO KKAnom6-2
	IF ~~ THEN REPLY ~Leave me be, Anomen. That is a problem of your own, deal with it yourself.~ DO ~SetGlobal("BKKAnom", "GLOBAL", 6)~ GOTO KKAnom6-1
	END 

	IF ~~ THEN BEGIN KKAnom6-1
	SAY ~Since you cannot or will not aid me, then I am bound by my honor and despite the anger in me I can do little else save to stand down.~
	= ~When the time comes for his treachery to be revealed, I shall stand ready to strike him down. Till then, I shall stand guard as Helm would have me do.~
	IF ~~ THEN EXIT
	END

	IF ~~ THEN BEGIN KKAnom6-2 
	SAY ~For me to be able to strike at him, I need your permission to rid us of his unsavoury presence. If you but give the word, I should be able to strike him down without reneging my oath.~
	IF ~~ THEN REPLY ~You are right, I should not condone his presence in my party. Go and rectify the situation.~ GOTO KKAnom6-3
	IF ~~ THEN REPLY ~You may do with him as you wish. I wash my hands of this affair.~ GOTO KKAnom6-3
	IF ~~ THEN REPLY ~He is a man of worth, and I do not wish harm to come of him.~ GOTO KKAnom6-1
	END 

END

CHAIN
IF ~~ THEN BAnomen KKAnom6-3
~I thank you most deeply, my <LORDLADY>, for this favour. Now, to the necessary task of eradicating evil.~
DO ~SetCutSceneLite(TRUE)~
= ~Stand, villain! I give you one more chance - free lady Kiyone from the bondage and lies you have woven around her, or face my righteous wrath!~
== Z#KOVAB ~There is nothing I can do if in your pathetic attempts at pursuing her attentions, you have fallen flat on your over-inflated ego, and even less I can do for a cowardly dog who will not admit his own inadequacies.~
= ~And even if I could, I sincerely doubt I would.~
== BANOMEN ~That is the last insult I will suffer from you, creature! In the name of Helm I will put an end to such evil as you are!~
DO ~	ReallyForceSpell(Myself, CLERIC_HEAL) 
ReallyForceSpell(Myself, CLERIC_AID) 
ReallyForceSpell(Myself, CLERIC_DRAW_UPON_HOLY_MIGHT) 
ReallyForceSpell(Myself, CLERIC_ARMOR_OF_FAITH) 
ReallyForceSpell(Myself, CLERIC_CHAMPIONS_STRENGTH) 
	EquipMostDamagingMelee()
	Attack("Kova")
	SetCutSceneLite(TRUE)~
== Z#KOVAB ~If killing you is what it will take for me, and more importantly, lady Kiyone, to be left in peace, then I will do so, gladly.~
DO ~	SetGlobal("KvAnomFight", "GLOBAL", 2)
	ReallyForceSpell(Myself, WIZARD_STONE_SKIN) 
	ReallyForceSpell(Myself, WIZARD_TENSERS_TRANSFORMATION) 
	ReallyForceSpell(Myself, WIZARD_IMPROVED_HASTE ) 
	ReallyForceSpell(Myself, WIZARD_IMPROVED_INVISIBILITY ) 
//	ReallyForceSpell(Myself, WIZARD_PROTECTION_FROM_MAGIC_WEAPONS ) 
	EquipMostDamagingMelee()
	Attack("Anomen")
	SetCutSceneLite(TRUE)~ 
EXIT

CHAIN 
IF ~Global("KvAnomFight", "GLOBAL", 3)	
Dead("Anomen")~ THEN Z#KOVAJ ByeAnom
~There. Good riddance to bad rubbish.~
DO ~SetGlobal("KvAnomFight", "GLOBAL", 4)
ActionOverride("Anomen", LeaveParty() )~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~I suppose there was no help for it, though I wish it had not come to this.~
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
~He had it coming to him. I doubt others would miss him, and I doubt you would to.~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~He was obnoxious, to a degree, but he didn't deserve to die.~
== Z#KOVAJ IF ~InParty("Kiyone")~ THEN
~Well, I suppose you'd be happier I'm the one dead, yes?~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~It's at times like this, I wonder, yes indeed, why not be happier if you were the one dead?~
EXIT

CHAIN 
IF ~Global("KvAnomFight", "GLOBAL", 3)
Global("FindingKova", "GLOBAL", 250)
Dead("Kova")~ THEN ANOMENJ ByeKova
~The deed is done! Good has triumphed over evil, and the sword of justice has prevailed!~
DO ~SetGlobal("KvAnomFight", "GLOBAL", 4)~
== Z#KIYOJ IF ~InParty("Kiyone")~ THEN
~Anomen, <CHARNAME>, what is this!? What have you allowed to come to pass?~
= ~I... I will not allow this to slide. Anomen, I curse you and all that you are, for everything that you have done! If it weren't for <CHARNAME> here, I'd riddle your wretched hide with a thousand arrows.~
= ~But no, I will not stoop to your level. I go now, for your presence is a stench to me that I will not tolerate, and my time with this band is at an end.~ 
= ~As for both of you, be rest assured, your judgment will come. This act of evil will not remain unknown.~
DO ~DropInventory() LeaveParty() EscapeArea()
SetGlobal("KKJoin", "GLOBAL", 0)
ReputationInc(-2)
ActionOverride("Kova", DestroySelf() )~ EXIT

EXTEND_BOTTOM ANOMENJ 95
IF ~Global("KvAnomFight", "GLOBAL", 3)~ THEN EXTERN HPRELATE KvDead
END 

CHAIN 
IF ~~ THEN HPRELATE KvDead
~The judgment is clear.  You occasionally choose the righteous path, but have not satisfied our requirements. You are cast from this Order.~
== ANOMENJ
~You cannot do this! I am not an evil man! I struggle daily in the quest for goodness.~
== HPRELATE
~You have slain a man to satisfy your pride, committed an unforgivable sin in your misguided vanity. Consider yourself lucky to be able to leave with your life.~
EXTERN ANOMENJ 99

// Aerie

CHAIN
IF ~InParty("Aerie") InMyArea("Aerie") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoAerie","GLOBAL",0)~ THEN Z#KIYOB Aerie1
~Don't immerse yourself so much in your past, Aerie. It's over and done with.~	
DO ~SetGlobal("BKiyoAerie","GLOBAL",1)~
== BAERIE ~What? Oh... how did you know what I was thinking?~
== Z#KIYOB ~It's written all over your face, my dear. There's too much going on in the present to pass up for the past. Don't miss today.~
== BAERIE ~Why are you saying this to me? This isn't any of your business, Kiyone. You don't even know what it was like to fly!~
== Z#KIYOB ~I don't claim to. But it is my business.~
= ~Quite apart from the fact that if any one of us dies, all of us will be in that much more danger, I don't think watching you turn into a cold, dead corpse or chunks of flesh would be a very pleasant experience for me.~
== BAERIE ~But there is so little to find meaning in down here on the ground!~
== Z#KIYOB ~And I don't think having to bury <CHARNAME> would be very pleasant for me either.~
== BAERIE ~That... That's a mean thing to say. And you're not answering me!~
== Z#KIYOB ~I don't have to. Nor could I. Only you have the answers, Aerie.~
== BAERIE ~I... I don't know what you're talking about!~
== Z#KIYOB ~Suit yourself.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoAerie", "GLOBAL", 1)~ THEN BAERIE Kiyo2
~I've been thinking, Kiyone. About what you said earlier.~
== Z#KIYOB ~That's nice. What were your conclusions?~
DO ~SetGlobal("BKiyoAerie","GLOBAL",2)~
== BAERIE ~It, makes sense. That's the way it is, isn't it? But I so wish I had my wings, that I could fly again and I...~
== Z#KIYOB ~I doubt they'll be coming back. You'll have to live with the facts.~
== BAERIE ~But it's so difficult...~
== Z#KIYOB ~Who said it would be easy? Kova's case isn't an easy thing for me either. It doesn't make me happier to have to work with thieves and assassins.~ 
= ~Or to know that fellow agents of the law could be coming after me, and to have to deal with them if necessary.~
== BAERIE ~And you do it anyway.~
== Z#KIYOB ~Yes, I do it because it is the right thing to do. Why will you be strong, Aerie, strong enough to put up with life without wings?~ 
= ~For your friends, for Quayle, for us, for <CHARNAME>. Are those reasons enough to be strong?~
== BAERIE ~I don't know yet, I can't say.~
== Z#KIYOB ~You'll find out, I'm sure. We all will, eventually.~
== BAERIE ~Yes, that is true. Though I don't know if I'll make it through, I am grateful for your words, Kiyone. Thank you.~
== Z#KIYOB ~You're welcome, Aerie.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie", "GLOBAL", 1)
Global("BKiyoAerie", "GLOBAL", 2)
Global("KKRomance", "GLOBAL", 0)~ THEN BAERIE Kiyo3
~Kiyone, are you in love with Kova?~
== Z#KIYOB ~He's proven himself to be a handy person to have around. However, I'm not in love with him.~
DO ~SetGlobal("BKiyoAerie","GLOBAL",3)~
== BAERIE ~Oh, maybe he's in love with you?~
== Z#KIYOB ~That I don't know. In any case, that's his problem, not mine.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")  InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie", "GLOBAL", 1)
// Global("KKRomance", "GLOBAL", 0)
GlobalLT("KKRomance", "GLOBAL", 2)
Global("BKiyoAerie", "GLOBAL", 3)~ THEN BAERIE Kiyo4
~Have you been in love with someone before, Kiyone?~
== Z#KIYOB ~No, I haven't.~
DO ~SetGlobal("BKiyoAerie","GLOBAL",4)~
== BAERIE ~Then how would you know you are not in love?~
== Z#KIYOB ~I know myself well enough for that. Love isn't the healthiest emotion around. It is likely to interfere with my work, and may make me take unnecessary risks with my life, and possibly with those of others.~ 
= ~It might make me less able to perceive dangers that would otherwise be easily visible, and be needlessly fearful and anxious in other cases.~ 
= ~It may seem like I'm doing all that for Kova, but believe me, it's just about doing what is right, nothing more.~
== BAERIE ~Well, what you say about love makes sense, but feels so wrong. Uncle Quayle used to say it's okay to feel for other people.~
== Z#KIYOB ~I do feel something for others, Aerie, just not love.~
== BAERIE ~Love isn't something to be ashamed of, is it?~
== Z#KIYOB ~Of course it isn't, at least not for you. After all, you're somewhat taken by <CHARNAME>, aren't you?~
== BAERIE IF ~Global("AerieRomanceActive", "GLOBAL", 1) 
Global("AerieRomanceActive", "GLOBAL", 3)~ THEN
~No I am not! Don't you go saying things like that! What if <CHARNAME> hears you?~
== BAERIE IF ~Global("AerieRomanceActive", "GLOBAL", 2)~ THEN 
~Well erm... yes, but you don't have to say that so loudly, right?~
== BAERIE IF ~Global("AerieMatch", "GLOBAL", 0)~ THEN 
~What!? That's ridiculous, you have got to be joking! Why do you even imagine such a thing?~
== Z#KIYOB ~Then you don't have to be asking me so much about how I feel, either.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie", "GLOBAL", 1)
GlobalLT("BKiyoAerie", "GLOBAL", 5)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN BAERIE Kiyo5
~Well, I was right after all, Kiyone. You do love him, don't you?~
== Z#KIYOB ~No, I don't.~
DO ~SetGlobal("BKiyoAerie","GLOBAL",5)~
== BAERIE ~Oh really? Come now don't deny it, everyone knows the two of you have been talking more to each other, and it's not just about his case.~
== Z#KIYOB ~Yes, and that's exactly what I've been doing. I've been talking to him and getting to know him better.~
== BAERIE ~Isn't that because you love him?~
== Z#KIYOB ~No, it's because I'm deciding if I should even consider that. It is sheer foolishness to start growing fond of someone before knowing the person thoroughly, especially with romantic misconceptions. A potentially dangerous situation, especially for myself.~
== BAERIE ~Dangerous? Love is dangerous? Or Kova is dangerous?~
== Z#KIYOB ~Both, actually. You'll understand more in time to come.~
== BAERIE ~No, that can't be right.~
== Z#KIYOB ~Consider your love for the child you saved, Aerie. Were you not in danger as a result of saving him?~
== BAERIE ~Well, but how can Kova be dangerous?~
== Z#KIYOB ~He could be just putting an act on all along to get me to help him go scot-free. After he is done using me, he could simply disappear or decide to kill me before going off.~
== BAERIE ~Kiyone! You can't seriously mean that!?~
== Z#KIYOB ~I admit it seems a relatively remote possibility from our current viewpoint, it is still a possibility that bears consideration.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie", "GLOBAL", 1)
Global("BKiyoAerie", "GLOBAL", 5)
GlobalGT("KKRomance", "GLOBAL", 0)~ THEN BAERIE Kiyo6
~Kiyone, you are starting to grow fond of him, aren't you?~
== Z#KIYOB ~He appears to be a good friend and someone worthy of trust. But so are you, Aerie.~
DO ~SetGlobal("BKiyoAerie","GLOBAL",6)~
== BAERIE ~Ooh, so you do admit you love him.~
== Z#KIYOB ~I would use the word "love" a little more carefully. Currently I feel for him about the same as I feel for you.~
== BAERIE ~Really? I thought it would be different between the two of you.~
== Z#KIYOB ~Of course it is different, but not that much different. We're pretty good friends now, I think. It bears consideration.~
== BAERIE ~You mean falling in love bears consideration?~
== Z#KIYOB ~No, not at all, Aerie, I meant about my stand towards criminals and such. What if there are many more like him? Others with a heart, but compelled to crime?~
= ~And about the people I've dealt with, some of whom I've killed - was there a way out for them? So many reflections, about what I've almost taken for granted in my work.~
== BAERIE ~Urm.. then maybe I'd best leave you to your reflections.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie", "GLOBAL", 1)
GlobalLT("BKiyoAerie", "GLOBAL", 7)
Global("KKRomance", "GLOBAL", 2)~ THEN BAERIE Kiyo7
~I'd like to congratulate you, Kiyone. You're finally together with someone.~
== Z#KIYOB ~What makes you think that?~
DO ~SetGlobal("BKiyoAerie","GLOBAL",7)~
== BAERIE ~I'm not blind, I've seen how you both look at each other, how you spend time together doing things I never thought I'd see either of you doing.~
== Z#KIYOB ~That didn't come across entirely appropriately.~
== BAERIE ~Erm... no I don't mean those kind of things.~
== Z#KIYOB ~Good then. But no, I'm not really together with him yet.~
== BAERIE ~What?~
== Z#KIYOB ~We're trying to see if the way we approach and handle various matters is close enough to give reasonable prospects of tolerating each other in the long run.~
= ~In any case, it is hardly a matter that bears congratulations. I wouldn't congratulate a friend if she had fallen in love with someone of a criminal background, especially if he is wanted by many of the most powerful people about.~
== BAERIE ~How can you say that about him?~
== Z#KIYOB ~It's the truth. What's wrong with that?~
== BAERIE ~I... oh forget it.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoAerie", "GLOBAL", 1)
Global("BKiyoAerie", "GLOBAL", 7)
Global("KKRomance", "GLOBAL", 2)~ THEN BAERIE Kiyo8
~Have you decided that you're going to love him yet?~
DO ~SetGlobal("BKiyoAerie","GLOBAL",8)~
== Z#KIYOB ~Not yet. I don't like to rush things, Aerie.~
== BAERIE ~Doesn't he mind?~
== Z#KIYOB ~It might surprise you, but he doesn't seem to want to rush anything either.~
= ~He probably still wants to reserve a part of himself so that he would be able to kill me if the occasion calls for it.~
== BAERIE ~Kiyone! That's a terrible thing to say!~
== Z#KIYOB ~What will be has yet to be seen. Meantime, we are getting along just fine.~
== BAERIE ~Are you happy?~
== Z#KIYOB ~He does take my mind off the violence all around us.~
== BAERIE ~To thoughts of happier things and how the two of you could be in future?~
== Z#KIYOB ~Not exactly. I think more about analysing his personality. It's a rather intriguing exercise, and he's a rather layered person, so to speak.~ 
= ~And I wonder how many of those layers are false, how many true. Not the happiest of things to think of, but it helps.~
== BAERIE ~I think it makes you happy to think about him, even if its just analysing him.~
== Z#KIYOB ~Perhaps you're right.~
EXIT






// Mazzy

CHAIN
IF ~InParty("Mazzy") InMyArea("Mazzy") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy", "GLOBAL", 0)~ THEN Z#KIYOB Mazzy1
~Mazzy.. you are the Mazzy Fentan, aren't you?  Warrior of valour and servant of Arvoreen?  The one whose deeds ever so often drift up even to the North?~
== BMAZZY ~Yes, I am she. Is there any cause to doubt me?~
== Z#KIYOB ~I'm not doubting you, I just always thought that you'd be different, from all the rest.~ 
== BMAZZY ~You mean different from other halflings.~
== Z#KIYOB ~Certainly. More outstanding and special, I suppose.~
== BMAZZY ~Yes. And of greater height, stature, and build.~
== Z#KIYOB ~That was not what I said, Mazzy.~
== BMAZZY ~You all but said it. Whether I like it or not, that's the way the tall folk always seem to look at us.~
== Z#KIYOB ~I'm sorry, I did not mean to offend. It's just that I expected...~
== BMAZZY ~I know. Taller, bigger, stronger, someone who would look less like a halfling and more like a heroine. More like one of you.~
== Z#KIYOB ~Yes, in a sense.~
== BMAZZY ~To see someone different as someone noteworthy does seem difficult for most of you.~
= ~I know you to be a lady true, of sound mind and heart, yet to think you not in possession of your people's prejudices does seem a little too much to hope for.~
== Z#KIYOB ~How you look doesn't make you any less of heroine, Mazzy.~
== BMAZZY ~I know that, yet sometimes I wonder, what I've missed, simply by being a halfling.~
== Z#KIYOB ~If the tales of your deeds are anything to go by, not much, I think.~
== BMAZZY ~True, to an extent. I have seen the uglier side of people. How, after having aided them, they are embarrassed to be around you at times. Or to have it be known that they were saved by a halfling.~
= ~To have seen Mazzy Fentan, that is an honor for them. For them to continue to see her, though, and be reminded that they owe something to a halfling woman, is something they would rather do without.~
== Z#KIYOB ~Perhaps things aren't as bad as they appear.~
== BMAZZY ~I don't imagine things, and I knew that they were almost relieved when the celebrations were over and it was time for me to go.~
== Z#KIYOB ~I see. Still, that doesn't stop you from doing good, does it?~
== BMAZZY ~No, it doesn't. I do what I do, not for glory or fame, but because it is right and it pleases my lord Arvoreen.~
== Z#KIYOB ~My lady, I am honored to be travelling with one with such truth in her.~
== BMAZZY ~Thank you, Kiyone. It is good to know I do not disappoint in that area.~
DO ~SetGlobal("BKiyoMazzy","GLOBAL",1)~ EXIT

CHAIN
IF ~InParty("Mazzy") InMyArea("Mazzy") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy", "GLOBAL", 1)~ THEN Z#KIYOB Mazzy2
~What was Patrick like, Mazzy?~
== BMAZZY ~He was a good friend, very close and very dear to me. I miss him dreadfully.~
== Z#KIYOB ~Do you regret anything? Going on this last adventure with him?~
== BMAZZY ~I don't regret standing up against evil, though I sometimes wished that I had sold my life with them.~
= ~At least, I have fond memories to remember him by. Beyond his demise though, I don't really wish to remember.~
== Z#KIYOB ~Aren't you affected by it in the least? An emotional burden, or some such?~
== BMAZZY ~He knew that I'm stronger than that, and would not have it any other way.~ 
= ~Everyday, as I take my stand against evil, I remember him. And I know that if I fall, I can only go to where I will see him again.~
== Z#KIYOB ~You make love sound like such a strong and fair thing, with your noble spirit. I did not think that such an emotion could serve to strengthen anyone, but only to weaken them.~
== BMAZZY ~Have you never loved before?~
== Z#KIYOB ~Its a luxury I never could afford, a waste of time and an indulgence. If it weren't for their indulgence in such excessive feelings, I would have had considerably more difficulty ferreting out many a villain.~
= ~If it proved to be their undoing, it could well be my undoing as well. There is too much yet to be set right for me to risk being incapacitated by such a burdensome emotion.~
== BMAZZY ~For one so true of heart and clear of mind, you have a coolness about you that dismays me a little. Yet I do not think you so cold a person, save for now.~
== Z#KIYOB ~I do have feelings, Mazzy, just that I choose to keep them at an efficient minimal.~
== BMAZZY ~Then I hope you someday find that love and life are more important than mere deeds.~
DO ~SetGlobal("BKiyoMazzy","GLOBAL",2)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy", "GLOBAL", 2)~ THEN BMAZZY Kiyo3
~Have you ever thought of being a knight, Kiyone? It would be difficult to find one more suitable for it than yourself.~
== Z#KIYOB ~I had once thought I would like to, but now I know I have no interest in such. They are honorable, upstanding and good, but they can be a little brash at times, and tend to create many enemies for themselves.~
= ~We of the Sentinels prefer a more complete investigation before surgically removing the problem, if it hasn't already been resolved in the course of the investigation.~
== BMAZZY ~Each one has his or her own strengths, and should operate accordingly to them.~ 
= ~I also wonder if it would suit me to truly be a knight, especially among the humans.~ 
== Z#KIYOB ~Are you not a knight, Mazzy?~
== BMAZZY ~I've been called that by some of those I've served, but I've never had the honor of being actually knighted into an order.~
== Z#KIYOB ~So all this about you being a knight is just that, a dream that you hope for?~
== BMAZZY ~I am devoted to my lord Arvoreen, and my steel rings as true as that of any knight. Yet if being one means knighthood within part of an Order, then I am not one.~
== Z#KIYOB ~I see. I had not thought one such as you so driven by dreams and faith.~
== BMAZZY ~Are they not all that governs honor and truth, and guides our hands?~
== Z#KIYOB ~Far from it. Faith is a poor substitute for strength of character, and dreams are pointless distractions from what tasks are at hand.~ 
= ~And on the contrary, righteousness and truth are absolute, from person to person, regardless of their faith, dreams, or other factors.~
== BMAZZY ~I cannot agree with you, for faith is a beautiful thing and dreams are the light before us. But we can agree to disagree. Perhaps someday you will change your mind on the matter.~
== Z#KIYOB ~I don't see how that could happen, but if you wish to set aside the topic, I shall pursue it no further.~
DO ~SetGlobal("BKiyoMazzy","GLOBAL",3)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoMazzy", "GLOBAL", 3)~ THEN BMAZZY Kiyo4
~What do you hope for in life, Kiyone? What do you look forward to?~
== Z#KIYOB ~I serve truth and righteousness, Mazzy, and it is my business to attend to all that I may set right under the sun.~
== BMAZZY ~I had no doubt about that. But what I ask is, what do you look forward to, beyond what we see before us, beyond the immediate?~
== Z#KIYOB ~Though it is what I desire, it would be vain and foolish to think I could see the end of evil in the land. No, I just look forward to the simple goal of setting the next wrong right.~
== BMAZZY ~Is there nothing you may call your own, to hold dear and to cherish? A family, or a home?~
== Z#KIYOB ~There is nothing of my own left in this world, and it shall remain that way. I make no claim over anyone, except that they be dealt with according to their dues.~ 
= ~If any place could be called home for me, it would be with the Sentinels. There I serve, but I seek no profit or promotion, only that I may be in a position to ensure that as many false deeds are set right as possible.~
== BMAZZY ~Is there truly no love in your life?~
== Z#KIYOB ~Such emotions and dreams are fancies that distract a person, a luxury for those of lesser concerns. It is a sorry thing that many people who might otherwise have done more were misled by and perished for such ephemeral causes.~
== BMAZZY ~Great deeds have been done through great faith and great love.~
== Z#KIYOB ~The risks taken were needless, the odds overwhelming, and possibly accomplished through great fortune. While such are the stuff of legends, I do not seek to become one, to gamble with my life for the sake of renown.~
= ~I'd prefer a move wise and measured, and when executed in valour, providing a good measure of success. It may never enter posterity, but it serves its purpose, and may be an example that others should find easy to emulate.~
== BMAZZY ~You astound me with your words, yet something is still lacking. I do not know what it is, but I pray that Arvoreen guides you to it.~
== Z#KIYOB ~Thank you, Mazzy. Though I feel I have all that I need, and ask for little else, I am grateful for your goodwill.~
DO ~SetGlobal("BKiyoMazzy","GLOBAL",4)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoMazzy", "GLOBAL", 3)
GlobalLT("KKRomance", "GLOBAL", 2)~ THEN BMAZZY Kiyo5
~We've travelled long enough together to be honest with each other, Kiyone.~
== Z#KIYOB ~Indeed we have. And there is something you would ask me, so speak it plain.~
== BMAZZY ~In spite of your earlier words, it appears you feel something for a certain travelling companion of ours.~
== Z#KIYOB ~Strong emotions are meaningless, Mazzy, but I never claimed not to feel.~
== BMAZZY ~Given your recent conduct, that statement does not describe the extent of your emotions.~
== Z#KIYOB ~Mazzy, I'm not incapable of making friends, as you are well aware. So long as I need to work with him on the case, it would not be an unwise arrangement.~
== BMAZZY ~Yet it seems more than that.~
== Z#KIYOB ~Perhaps. In considering if one such as him were even worthy of my long term trust, it would be well to examine his mind and nature more closely.~
= ~Unlike between you and me, and indeed between most of us in this group, I see reason to be exceptionally careful in dealing with possible criminal types.~
== BMAZZY ~Regardless of what you say, it is plain from your deeds that you hope to know him as more than just a friend.~
== Z#KIYOB ~There is no such thing. As things stand, I'm not even sure if he is worthy of being counted among my friends, much less anything beyond that.~
== BMAZZY ~Do you truly believe that?~
== Z#KIYOB ~You know me well enough to know I speak with candour in all things.~
== BMAZZY ~Well, then maybe you simply have not realised it yet.~
= ~Such a development, though, might not be an ill thing. It would be good that for you to have someone to care for, and I look forward very much to seeing you a more vibrantly feeling person.~
== Z#KIYOB ~Don't be foolish, Mazzy. While he has shown himself trustworthy, helpful and a good friend thus far, there can be no doubt he is of a criminal background and inclination.~
= ~Also, we still don't know for sure that he is not the one who actually performed those deeds which he has been accused of, and he could be using all of us for his own ends. I would be placing myself in meaningless danger to trust him overmuch.~
== BMAZZY ~You think that, Kiyone, but you don't actually feel that. You certainly don't act that way.~
= ~I must admit, he has shown himself a good man, and if he truly did not perform those terrible crimes, I would be proud to call him friend.~
== Z#KIYOB ~You are not careful enough.~
== BMAZZY ~He would be a fair person for you to get to know better. I approve.~
== Z#KIYOB ~You don't know enough about him to approve. None of us do. Further investigation is required, and as such, I think we can agree to disagree on that point.~
== BMAZZY ~Very well. May you find pleasure in your investigation.~
DO ~SetGlobal("BKiyoMazzy","GLOBAL",5)~ EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") InParty("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("BKiyoMazzy", "GLOBAL", 3)
Global("KKRomance", "GLOBAL", 2)~ THEN BMAZZY Kiyo6
~Your investigation appears to have taken a happier twist, Kiyone.~
== Z#KIYOB ~Whatever gave you that idea?~
== BMAZZY ~You seem happier now, with a pleasant disposition about you and a bright spark in your eye. It pleases me very much to see you this way.~
== Z#KIYOB ~I suppose that might have happened, but I don't look at myself enough to be able to detect such changes.~
== BMAZZY ~You are in love, aren't you?~
== Z#KIYOB ~No I'm not. We're just considering now if there's anything for us beyond friendship.~
== BMAZZY ~Your radiant appearance seems to belie that statement.~
== Z#KIYOB ~You make it seem so pleasant and lighthearted, but it is a serious thing nonetheless. Even if he were not a criminal wanted by several large organisations who want him and probably all of us dead, the selection of a close friend is a process important enough to warrant careful study.~
= ~As things stand, caution is still most preferable. He could well be using me and waiting for a good time to twist my neck and get away.~
== BMAZZY ~If he wanted to get away he could have done so long ago, Kiyone.~
== Z#KIYOB ~I know. But one never knows enough about the intricacies of the criminal mind.~
== BMAZZY ~You don't even sound convinced of your own argument.~
== Z#KIYOB ~This development is most disturbing, actually. I feel almost crippled in my inability to see him objectively anymore. At least he understands, and he feels as I do about care in evaluating each other's suitability.~
== BMAZZY ~Small wonder that you care for him. He is very much like you, isn't he?~
== Z#KIYOB ~He is, or more correctly, he appears to be. Though if he truly is, I should be guilty of reducing the ability of another one like myself in facing the evils of the world.~
== BMAZZY ~Kiyone, much as I see the wisdom of your approach, don't be too cautious. You may regret it.~
== Z#KIYOB ~What do you mean?~
== BMAZZY ~No, it's just about me... and Patrick.~
== Z#KIYOB ~Oh.~
== BMAZZY ~We had known each other a long time, but we didn't confess our feelings to each other until fairly recently.~
= ~It was a wonderful time for both of us, but we only had a few months together before it all suddenly ended.~
= ~I still cherish his memory in my heart, but sometimes I wonder, what it would have been like if we had known each other's feelings sooner.~
= ~I wish we could have spent more time together. If only I had known we would be separated so soon, things would have been so different, so different...~
== Z#KIYOB ~I'm sorry, Mazzy.~
== BMAZZY ~It's all right. I still dream of meeting him, and sometimes I look forward so much to it that it almost hurts. And I know that when we finally do, we will stand before my lord Arvoreen, and be known as man and wife.~
= ~I know it may sound foolish to you, but it's important to me.~
== Z#KIYOB ~It doesn't, Mazzy, not in the least. I think Patrick is a very fortunate man, indeed, and I wish I could have known him.~
== BMAZZY ~Thank you, Kiyone.~
== Z#KIYOB ~I should be the one thanking you, Mazzy. You have given me much to think on.~
DO ~SetGlobal("BKiyoMazzy","GLOBAL",6)~ EXIT





// Minsc

// ~Friend Kova, why such a dark expression? Boo wonders if Kova is thinking on his future.~ 

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",0)~ THEN BMINSC KvMinsc1
~Boo wants to know, why does Kova always look so serious and gloomy?~ 
DO ~SetGlobal("BKovaMinsc","GLOBAL",1)~
== Z#KOVAB ~Well I'm sure that would certainly be of interest to Boo. Does my introspective face make his cheese curdle?~
== BMINSC ~Do not talk so, Kova! Boo does not mean any harm, he just says if Kova is thinking too much, maybe when he fighting evil he will not be able to butt-kick efficiently!~
= ~Assuredly, Minsc and Boo shall be careful not kick butt too far away, for what if friend Kova is needing of our help! We could not leave our friend unprotected from the advances of evil, right Boo?~
== Z#KOVAB ~Well, that is quite unexpectedly thoughtful of you, barbarian, but still, no thanks.~
= ~I can take good enough care of myself, and I don't need you or your hamster to lose sleep over the look on my face.~
= ~I'd rather be more careful if I were you, I sometimes look at you and that pet of yours and wonder how many more blows to the head you can take.~ 
== BMINSC  ~Minsc thinks you are being rude, but Boo says you are just concerned for Minsc's wellbeing, so Minsc will try not to take offence.~
== Z#KOVAB ~For someone subject to a rodent, you do have a rather interesting way with words.~
== BMINSC ~It is not about words, it is about the righteous butt kicking of evil! For Minsc than Boo together shall make evil quail in its booties, and wish it could avoid the inevitable fate brought upon it by the wrath of Minsc and Boo!~
== Z#KOVAB ~I for one, fail to see how Boo is even remotely helpful in any combat situation. Some enlightenment on that would be most appreciated.~
== BMINSC ~You do not understand because you are not Minsc, and you are not Boo! Boo and Minsc know what Boo is good at, and that is what matters. Boo is a miniature giant space hamster, regardless, and can kick the butts of evil most proficiently!~
== Z#KOVAB ~Really? How come he's so small?~
== BMINSC ~He is in disguise, so in miniature! Boo wants to help Minsc to teach evil good lesson, so he is in miniature so as to better aid Minsc in this endeavor.~
== Z#KOVAB ~Right. I will leave you to the care of your giant Boo, or maybe your giant Boo in your care. Whatever it is.~
== BMINSC ~Boo thinks that Kova has not yet said why he always looks so serious.~
== Z#KOVAB ~Tell Boo I'm sure he will be able to figure it out.~
EXIT

CHAIN
IF ~InParty("Minsc") InMyArea("Minsc") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",1)~ THEN Z#KOVAB KvMinsc2
~You're a fine warrior, Minsc, and no doubt a fearsome sight to our foes.~
DO ~SetGlobal("BKovaMinsc","GLOBAL",2)~
= ~Still, you're a tad too addle-headed for my own preference, to rely overmuch on.~
DO ~SetGlobal("BKovaMinsc","GLOBAL",2)~
== BMINSC ~So long as Minsc is good at bashing the heads of evil in, Boo does not care if he has too many heads.~
== Z#KOVAB ~Too many heads? That's an interesting and ironically appropriate way of interpreting addle-headed, I suppose.~
= ~Though it might not be a problem if it didn't so often seem at times that it's your other head in charge of the blade you wield.~
== BMINSC ~Minsc does not see the problem. One head is enough to imprint Minsc's boot into the butts of evil!~
== Z#KOVAB ~I don't even think you have an inkling of the risk <CHARNAME> takes by allowing you to travel with us.~
== BMINSC ~Oh, I understand now! You are saying Minsc should not listen so much to Boo, since in your opinion it makes Minsc more dangerous!~
== Z#KOVAB ~Well, that's pretty much what I said, yes.~
== BMINSC ~Boo thinks it is good that Minsc is more dangerous, for then evil can tremble on its pillows even more! <CHARNAME> and Kova need not be afraid, unless they are...~
= ~Kova is not evil, is he, Boo?~
== Z#KOVAB ~Of course I'm not evil!~ 
= ~At least, not in front of Minsc and Boo.~
== BMINSC ~I think that is a strange reply. So, is Kova good or evil? I do not know now. Boo say.~
== Z#KOVAB ~Boo say? Surely you're not going to let a rodent judge if I am...~
= ~Why are you pointing that hamster at me?~
== BMINSC ~Sniff, Boo! Boo's nose, Boo knows!~
== Z#KOVAB ~What are you doing? What does Boo know, anyway?~
== BMINSC ~Enough to know that Kova is not evil.~
== Z#KOVAB ~That's a relief, I'm sure. Oh and thank you for pointing your pet away from me, Minsc.~
== BMINSC ~Boo can sniff out evil, Boo is a smart one, oh yes.~
== Z#KOVAB ~Rubbish. As if he knows anything beyond what you and I know.~
= ~How about he tells us something you don't know.~
== BMINSC ~Wait, let me ask Boo.~
== Z#KOVAB ~Hah. This should be worth waiting for.~
== BMINSC ~Boo says, many think that you are evil, but he does not think so. He says you are in danger because many people want you dead, and that it is good for Minsc to help protect you from naughty people.~
== Z#KOVAB ~Well... that was a little unexpected.~
== BMINSC ~Kova does not need to be surprised, Boo is a very smart giant space hamster. If I didn't know who Boo really is, I would be very surprised for most of the time, and not be able to think straight.~
== Z#KOVAB ~I suppose you are possessed of greater acumen than I thought you had, Minsc. And I appreciate your vote of confidence and aid, though the form which it takes is a little strange.~
== BMINSC ~Boo is the one, he is a smart one.~
== Z#KOVAB ~I'm sure. How about next time, Boo says something neither you nor I know?~
== BMINSC ~Maybe. Depends on if Boo feels like talking. Now he wants to curl up on his bed and rest. Sometimes too much sniffing gets him tired.~
EXIT

CHAIN
IF ~InParty("Minsc") InMyArea("Minsc") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",2)~ THEN Z#KOVAB KvMinsc3
~Minsc, about Boo knowing things and all... I still don't quite believe it.~
DO ~SetGlobal("BKovaMinsc","GLOBAL",3)~
== BMINSC ~Really? But that does not change the fact, that Boo is smart one, knows much.~
== Z#KOVAB ~Right. I don't suppose your little hamster there can tell me what will happen if that injustice you spoke of should come upon me?~
== BMINSC ~That not need ask Boo, Minsc knows enough to answer.~
= ~When that evil injustice come for you, Minsc and Boo administer liberal butt-kicking, and then it won't come looking for you again.~
== Z#KOVAB ~Ah... not quite the answer I was looking for. Let me rephrase - what do you think the outcome of my case, the one that Kiyone is trying to help me with, will be?~
== BMINSC ~That? That's too complicated, I do not know much. Such things about law and judges, I think not needed. See evil, kick butt! Simpler.~
== Z#KOVAB ~I mean.. what does Boo think the outcome will be like?~
== BMINSC ~Hmm, yes, Boo might know. Let's hear hamster talk!~
== Z#KOVAB ~I can't believe I'm bothering to listen to this. It must be to break the monotony of the road.~
== BMINSC ~He says it depends on what things we find. If we find more, better for Kova. Find less, not so good. Find too little, Kova die.~
== Z#KOVAB ~Ah.~
== BMINSC ~But Boo does not think that will happen. Not with two smart ones like you and Kiyone around, but difficult to find everything. Then maybe need pay some to get good name, and still have some chasing.~
= ~Though if find all, then very good, no more people running after us.~
= ~But that also mean less evil butt to kick. So maybe not that good, at least for Minsc and Boo.~
== Z#KOVAB ~If I didn't know better, Minsc, I'd swear you are some sort of genius disguised as a barbarian, or some divine power is constantly watching over and speaking through you.~ 
== BMINSC ~Not I! I do not know anything, Boo is the brains, Minsc is the muscle. He talk, I punch!~
== Z#KOVAB ~You know, I don't suppose there might be any other Giant Space Hamsters around?~
== BMINSC ~That I have been asking Boo before, but Boo does not want to say. Minsc thinks Boo just wants to stay special.~
== Z#KOVAB ~Is that so? What a pity.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaMinsc","GLOBAL",3)~ THEN BMINSC KvMinsc4
~Oh, really?~ 
DO ~SetGlobal("BKovaMinsc","GLOBAL",4)~
= ~Kova, Boo wants to say something to you. Something that makes me very surprised, so I was just making sure I did not hear wrongly. Very surprising thing, very strange, to Minsc.~
= ~But Boo says to tell you anyway.~
== Z#KOVAB ~Really? I can't wait to hear words of discernment from your rodent, Minsc.~
== BMINSC ~That is good. It is always good to hear what Boo has to say.~
== Z#KOVAB ~And I see that sarcasm is lost on you. But I'm genuinely curious what insights Boo might have that would surprise me.~
== BMINSC ~Boo says, he wishes you and Kiyone much happiness and much nice times together.~
== Z#KOVAB ~What?~
== BMINSC ~That's puzzling also, it is. When Minsc does notice you and Kiyone together, always thought you were arguing, sometimes even upsetting each other.~
= ~I do not know why Boo would ask me to say such a strange thing, but he said to tell you that. So I told you.~
== Z#KOVAB ~Oh... really? How very... interesting.~
= ~But I'm sure Boo must be mistaken, we barely consider each other as friends, at the moment.~
== BMINSC ~Yes, but Boo is a smart one, Boo is never wrong.~
== Z#KOVAB ~Why don't you help me tell Boo that I'm sure he must be mistaken, and tell me his response?~
= ~Wait, where's he gone to?~
== BMINSC ~He was laughing just now, at you I think, and now he's gone. He's not in my pocket, so probably in my pack.~
= ~I think he just doesn't want to be found. Maybe he was worried you would be upset, though I don't know why you would be.~
== Z#KOVAB ~Right.~
= ~You know, Minsc, it's a good thing that I don't think you have a proper sense of humour, or I'd probably take offence.~
== BMINSC ~See, Boo was right after all.~
EXIT



// Edwin

CHAIN
IF ~InParty("Edwin") InMyArea("Edwin")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaEdwin", "GLOBAL", 0)~ THEN Z#KOVAB Edwin1
~What exactly were you doing in Mae'Var's guild, Edwin?~
== BEDWIN ~Minding my own business. Have you nothing better to do than to ask foolish questions? (Any simian would be able to see that it's not going to get you anywhere)~
DO ~SetGlobal("BKovaEdwin", "GLOBAL", 1)~
== Z#KOVAB ~How exactly did it serve your interests to get rid of Mae'Var? Apart from being on the winning side, as I understand you put it?~
== BEDWIN ~(Apparently this monkey doesn't even have the wit of one of its peers) Being on the winning side was the whole point of it, though I can't expect an idiot like you to understand that. How about you do what I do, and cease bothering me?~
= ~And since your limited mind won't get it unless I spell it out for you, that means to mind your own business.~
== Z#KOVAB ~There must be something you are hiding, I'm sure of it.~
== BEDWIN ~And saying that to me will serve some purpose? Your incredible stupidity in doing this is almost beyond my comprehension.~
= ~Think what you want. As if I would be bothered by an insect's suspicions, but your buzzing is getting irritating.~
= ~If it's a banana you are looking for, go bother <CHARNAME>, <PRO_HESHE> will probably have one.~
== Z#KOVAB ~I'll be watching you carefully, Thayvian blackguard. Make no mistake, this is not over yet.~
== BEDWIN ~Look as you like, just stop pestering me with your incessant chatter. (Even a monkey wouldn't be able to detect a thing if it had both its eyes on me all the time, how much less a sub-simian like you)~
EXIT

CHAIN
IF ~InMyArea("Edwin") InParty("Edwin")
LOS(Player1, 30)
Global("BKovaEdwin", "GLOBAL", 1)
StateCheck(Myself, STATE_INVISIBLE)
LOS("Edwin", 8)~ THEN Z#KOVAB Edwin2
~Sorry about that, please excuse me.~
DO ~SetGlobal("BKovaEdwin", "GLOBAL", 2)~ 
== BEDWIN ~You clumsy oafish primate! As if your previous incessant hounding were not enough, now you afflict my person with the proximity of your filthy flea-ridden form!~
== Z#KOVAB ~Now I regret not taking advantage of that proximity to gut you with my blade, Thayvian mongrel.~
DO ~SetInterrupt(FALSE)
MoveToObject(Player1)~
== BEDWIN ~Threats from monkeys who do not even know how to handle themselves do not disturb me. My greatest immediate concern is getting your fleas and filth off my robes.~
= ~Now cease your staring and get your worthless self away from my person before I decide shoving a few fire balls down your gullet would be a better way to teach you manners. (Not that it would really help, this simian is clearly incapable of learning anything)~
EXIT

CHAIN
IF ~Global("BKovaEdwin", "GLOBAL", 3)
InParty("Edwin")
!LOS("Edwin", 4)~ THEN Z#KOVAJ Edwin3
~<CHARNAME>, we have to talk.~
DO ~SetCutSceneLite(FALSE) SetInterrupt(TRUE)
NoAction() SetGlobal("BKovaEdwin", "GLOBAL", 4)~
= ~Here's something I picked off Edwin just a moment ago. It is a note with the reward from the Shadow Thieves regarding my person.~
= ~It does seem that he has some Shadow Thief contacts apart from Mae'Var, who would probably reward him well for getting rid of me when the time comes.~
END
IF ~~ THEN REPLY ~Don't be paranoid. If he was in the guild for some time, a hefty reward like this would certainly have caught his eye.~ GOTO Edwin3-1
IF ~~ THEN REPLY ~I don't trust him either, but we need him in the party. We'll just have to keep an eye out for any funny moves on his part.~ GOTO Edwin3-2
IF ~~ THEN REPLY ~Yes, this is quite disturbing. I think it might be best to get rid of him altogether.~ GOTO Edwin3-3
IF ~~ THEN REPLY ~If that's the case I certainly can't risk my companions fighting each other, so it might be best if you left altogether.~ GOTO Edwin3-4

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-4
~What? You can't seriously mean you'd prefer to keep this vile character in your company?~
END 
IF ~~ THEN REPLY ~Yes, I do mean it. He is more powerful than you are anyway. So just be on your way.~ GOTO Edwin3-4-1
IF ~~ THEN REPLY ~No, I was just kidding. I rather you stay in the party.~ GOTO Edwin3-4-2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-4-1
~Perhaps my assessment of you wasn't altogether correct, but it is your party and it is your choice. If you should seek me again, I'll be waiting for you in the Windspear hills.~
DO ~DropInventory() LeaveParty()
SetGlobal("KovaJoined","LOCALS",0) EscapeArea() Wait(1) 
MoveGlobal("AR1200",Myself, [440.1680]) Face(6) 
SetGlobal("KKJoin","GLOBAL",2)~ EXIT

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-4-2
~I see, and that puts to rest what I thought was a somewhat unpleasant surprise.~
= ~Still, what do you think would be the best to do about the situation?~
END
IF ~~ THEN REPLY ~I need him in the party, so we'll just have to risk it and keep an eye on him along the way.~ GOTO Edwin3-1-1
IF ~~ THEN REPLY ~Infighting is still a matter I rather not risk, so I think it might be best to get rid of him.~ GOTO Edwin3-3

CHAIN
IF ~~ THEN Z#KOVAJ Edwin3-1 
~That is a possibility, but I don't quite trust him still. I think it's more than just keeping a notice of a reward, yet it's true I tend to get paranoid now and then.~
END
IF ~~ THEN REPLY ~Don't worry about it. If something comes up we'll just have to try and handle it.~ GOTO Edwin3-1-1
IF ~~ THEN REPLY ~I'll go with your instincts. What do you suggest we do with him?~ GOTO Edwin3p2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-1-1
~Well, I owe you quite a bit already for bringing me along, and the least I can do is to stand by your decision.~
= ~I'll just have to put up with his rubbish and keep a sharp lookout for treachery. Meantime, I have to go return what I lifted so he doesn't miss it.~
DO ~Hide()
MoveToObject("Edwin")~ EXIT

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-2
~That might seem fine for now, but I'm concerned about treachery on his part. If he were to turn against us, I doubt it would just be against me, probably you and all the others as well.~
END
IF ~~ THEN REPLY ~I need him in the party, so we'll just have to risk it and keep an eye on him along the way.~ GOTO Edwin3-1-1
IF ~~ THEN REPLY ~There is considerable truth in what you say. What do you suggest we do with him?~ GOTO Edwin3p2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3-3
~Get rid of him? That could mean a fair number of different things, though at least I'm relieved to know I won't have to put up with him for long.~
END 
IF ~~ THEN GOTO Edwin3p2

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3p2
~The way I see it, getting rid of him would involve making him leave the party completely.~
= ~My concern is though, if he does leave we may have to fight him again some other time, and I'd rather not have an extra opponent to face, especially not one so skilled in wizardry.~
= ~Yet, a note of a reward is hardly sufficient to condemn anyone, and death is a pretty final thing, I suppose. I wouldn't feel comfortable killing him just for this, but it might be for the best... if my suspicions are indeed true.~
= ~But there is no way to ascertain that, even if we do kill him, and murder does not sit easy with me. And as always, it seems the final decision falls again to you, <CHARNAME>.~
END 
IF ~~ THEN REPLY ~It's best not to risk having to face him elsewhere when he is stronger, so I think it best that you kill him for all our sakes.~ GOTO Edwin3p2-1
IF ~~ THEN REPLY ~I'll just evict him from the party and hopefully that's the last we'll hear of this matter.~ GOTO Edwin3p2-2
IF ~~ THEN REPLY ~After reconsidering, I think it is best if we just leave things as they are, and keep an eye on Edwin in meantime.~ GOTO Edwin3-1-1

CHAIN 
IF ~~ THEN Z#KOVAJ Edwin3p2-2
~Very well, perhaps that is for the best. It would be disturbing to kill him just on the grounds of a single note.~
= ~I'll go return this note before he detects it is missing.~
DO ~Hide()
MoveToObject("Edwin")
ActionOverride("Edwin", DropInventory() ) 
ActionOverride("Edwin", LeaveParty() )~ EXIT

CHAIN
IF ~~ THEN Z#KOVAJ Edwin3p2-1
~If you say so, I guess. I am reluctant to do such a thing, but it might be for the best after all. Very well, let it be done.~
DO ~ActionOverride("Edwin", Enemy() )
StartCutSceneMode()
StartCutScene("Z#edwkv")~ EXIT

CHAIN
IF ~Dead("Edwin")
Global("KvEdwinKill", "GLOBAL", 1)~ THEN Z#KOVAJ EdwinDead
~He is dead, as you have instructed. Though he wasn't a pleasant character though, I am not proud to have done this deed.~
= ~I guess we may never know if he truly intended treachery. The sooner this event is forgotten and put out of my mind, the better.~
DO ~SetGlobal("KvEdwinKill", "GLOBAL", 2)~ EXIT


// Haerdalis

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoHaer", "GLOBAL", 0)~ THEN BHAERDA KyHaer1
~Ah, most lovely sparrow-hawk, your eyes scan the horizon as a eagle searches its range. Do you fear an attack?~
DO ~SetGlobal("BKiyoHaer", "GLOBAL", 1)~
== Z#KIYOB ~An attack is always to be watched out for, but fear is not necessary. Preparation is a better alternative.~
== BHAERDA ~Ah, but best avoided, especially as the place of battle is scarce the place for a lady like you.~
== Z#KIYOB ~Perhaps. I guess it probably suits a songbird like yourself, better.~
== BHAERDA ~That it certainly does, yet I am not a songbird, but a sparrow, ready to fly, into the wings of adventure, and what danger it might hold.~
== Z#KIYOB ~You could have fooled me, bard. Your song belongs upon the field, yet you call yourself a sparrow but not a songbird.~
= ~Besides, one would think a sparrow-hawk more suited to battle than a sparrow.~
== BHAERDA ~Nay, my lady, there are greater birds of prey that range over the field, and where a sparrow might slip through their claws, a sparrow-hawk might not.~
== Z#KIYOB ~Enough of this needless bird talk. In all things, wisdom with skill and valour begets the best result. We both know our places, and that is enough.~
== BHAERDA ~I can see you haven't much of a poet in you.~
== Z#KIYOB ~If being a poet could help me improve my aim or my swing by a single jot, I probably would be more of one than a certain person I could name.~
== BHAERDA ~A shame. Thus I am left to bemoan the loss of talent that never ever took flight.~
= ~At least though, I may keep company still, with this lovely sparrow-hawk, and admire, how curved her beak and bright her talons.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKiyoHaer", "GLOBAL", 1)~ THEN BHAERDA KyHaer2
~What prey do you hunt, sparrow-hawk? Your razor-sharp eyes always seem so far yet so close at hand.~
DO ~SetGlobal("BKiyoHaer", "GLOBAL", 2)~
== Z#KIYOB ~If I didn't know better, I'd almost be tempted to think you were making fun of me.~
= ~And there is always reason to be watchful, Haer`dalis. Sometimes danger comes from those closest to you, and the unseen knife is more dangerous than the drawn sword.~
== BHAERDA ~Ah, I can see the makings of a fine performer in you. Not quite a poet, perhaps a singer?~
== Z#KIYOB ~Even if I did know how to sing, I wouldn't deign to make it known to you.~
== BHAERDA ~Your talons do wound me, needlessly, I fear.~
= ~But as to an unseen knife, who among this group do you think you might have to watch out for? Surely not Kova, that most sweetly singing nightingale of yours, would it?~
== Z#KIYOB ~This nightingale, as you call him, is not mine. Far from it, in fact.~
= ~While he is undoubtedly not the only dangerous one in the group, he is most likely to be a personal threat to me. Not that there are no others to watch out for, of course.~
== BHAERDA ~Surely not, my lady? The two of you seem to be on such fair speaking terms.~
== Z#KIYOB ~Fair indeed, for am I not obliged to return courtesy where it is due?~
== BHAERDA ~Ah, an actress! Of no mean talent, indeed!~
== Z#KIYOB ~Perhaps. And it could well be he is a by far superior actor, of course. And that is why I am ever on my guard.~
== BHAERDA ~I think though, that his blade might not be the only thing about him you are on guard against.~
== Z#KIYOB ~Oh, is that so? What are you trying to say?~
== BHAERDA ~Well I've seen some actors and actresses who are afraid of getting off the stage, so to speak. They prefer living the lives of others, rather than their own.~
== Z#KIYOB ~That's an interesting piece of information. But if you are trying to imply that I am one of these people, I would have to disagree rather strongly.~
= ~My life is not my own, and indeed I do not live for myself, but for a truth and righteousness above all else. I am not afraid of the challenges that await me, and so am certainly not afraid of life itself.~
== BHAERDA ~It was but an idle thought, my lady, and I hope I haven't ruffled your feathers.~
== Z#KIYOB ~Very well, I shall give you the benefit of doubt.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaHaer", "GLOBAL", 0)~ THEN BHAERDA KvHaer1
~So my nightingale, how fare you in these lands?~
DO ~SetGlobal("BKovaHaer", "GLOBAL", 1)~
== Z#KOVAB ~Nightingale? I am hunted on all sides and have scarce the mood to make conversation, and now you call me one of those chirping irritants before asking the obvious of me?~
== BHAERDA ~Exactly, my fair nightingale. Who knows, it might yet be a sweet song you could sing were your circumstances better.~ 
== Z#KOVAB ~Bah, I have no cause to sing songs! I suppose you can afford to, anytime you're wanted you just flit your way to another plane of existence.~
= ~If anything, you should be the nightingale, and I an owl with its wings chopped off, left in the day, staring with those big eyes that are able to see everything come at me and be able to do absolutely nothing about it.~
== BHAERDA ~Your wings, chopped off? The unthinkable! Who would that dastardly villain be, to do so heinous a thing? Let this sparrow attend to this, and see how he may restore his friend.~
== Z#KOVAB ~That smile of yours is disturbing. Put it away.~
== BHAERDA ~But oh! There's an amazing thing. It seems that even as I look upon you, your wings are still there, finest feathers as any to have graced the stage.~
== Z#KOVAB ~What are you talking about, tiefling?~
== BHAERDA ~Could it be, that the villain who took your wings is yourself? Ach, it would make me ill if to restore you I should have to strike one friend for another, and twice as ill if they both be the same person.~
== Z#KOVAB ~Don't be foolish! I am not the author of this machination.~
== BHAERDA ~Perhaps not, my lovely nightingale, but maybe you chose to settle in a place where your wings would be clipped.~
== Z#KOVAB ~Think what you will, bard. I have better things to do than to contest your idle thoughts with you.~
= ~Let me to my thoughts, and you to your dreams, so long when we need to, we can deal with whatever comes our way.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKovaHaer", "GLOBAL", 1)~ THEN BHAERDA KvHaer2
~This sparrow hazards, that the reason why you are unable to fly, is starting to make itself apparent.~
DO ~SetGlobal("BKovaHaer", "GLOBAL", 2)~
== Z#KOVAB ~Is that so, Haer`dalis?~
== BHAERDA ~Now, it is no shame for a lovely nightingale to be unable to escape the clutches of a sparrow-hawk. And a most lovely sparrow-hawk she is, too.~
== Z#KOVAB ~And has it ever occurred to you that others might have a name for you to address them with? These bird names only seem to indicate the level of your brain activity.~
== BHAERDA ~I see you have not the poet in you. Very well, I shall explain.~
= ~Yon sparrow-hawk, with the curved beak and bright talons, is your good friend, Kiyone.~
== Z#KOVAB ~She is not my good friend. I am only just starting to consider if she might be ever be suitable to be considered more than an acquaintance.~
== BHAERDA ~You see, you don't need to be friends for her to have her talons around you. But look, though you are caught your wings are still as fine as ever, just that you have some difficulty in flying.~
== Z#KOVAB ~You have lost me, tiefling. Speak sense.~
== BHAERDA ~I could hardly be more direct about flying, without losing the poet in me.~
== Z#KOVAB ~It might be for the best to lose that poet. I can't think of a skill more useless in helping keep oneself alive.~
== BHAERDA ~The nightingale sings! And a song so close to that of the sparrow-hawk. No wonder she wouldn't ruffle a feather on your wing, your song is such beauty in her ears.~
== Z#KOVAB ~I don't know what you are talking about. But believe me, she's more than ruffled my feathers, and more than once, at that.~
== BHAERDA ~Oh, that is most lovely and interesting.~
= ~Now, I'm afraid I've said too much. I really should just sit back and watch this drama unfold. I think it can only get more interesting.~
== Z#KOVAB ~Is this some sort of joke at my expense?~
== BHAERDA ~I wouldn't dare, my nightingale! The place of a spectator is in the audience, and it wouldn't do to disrupt the play now, would it? It is such a fine performance, after all.~
EXIT



// Jaheira

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira", "GLOBAL", 0)~ THEN Z#KIYOB KyJah1
~I understand you're both a Harper and druid, Jaheira. Tell me, is it true that both your callings require you to strive for balance and neutrality?~
DO ~SetGlobal("BKiyoJaheira", "GLOBAL", 1)~
== BJAHEIR ~That is so, though often through differing means.~
== Z#KIYOB ~We of the Sentinels have a great respect for the Harpers, and as rangers, we know that only druids are closer to the wild places than we, hence we often also hold them in regard.~
= ~All this should make you doubly to be respected, by me.~
== BJAHEIR ~You don't seem to be one from whom respect is earned just like that, though. What are you getting at, Kiyone? Speak your mind.~
== Z#KIYOB ~I've always wondered, Jaheira, why your people, druids and Harpers alike, do not work towards truth and righteousness, but rather towards some nebulous, indefinite state of balance. If they did there would be so much less evil in this world.~
= ~I would respect both, greatly, if I had not to ask myself so often, time and again, what exactly their motivations are, and just how far I can trust them to be on my side.~
== BJAHEIR ~It is the way of balance. Because of the malevolence of evil, we serve good for most part, and indeed myself I seek justice against deeds of evil, but good must not be allowed undue dominance over evil. Such is the way things are meant to be, and we will have it no other way.~
== Z#KIYOB ~No. Evil should be stamped out along with all its influence, to be completely removed and finished. There is no other way for there to be lasting peace, and your balance only sees that in the long run, more blood is shed.~
== BJAHEIR ~You do not know enough. Too much good leads to evil, in the most insidious of ways. Even if it were kept pure, the ultimate effect of such imbalance to the world would be disastrous in terms of affecting powers beyond our world and our comprehension, with consequences better not known.~
== Z#KIYOB ~I think you do not know what these consequences are either. They may only involve the domination of our world by good powers to put an utter end to the influence of the dark Gods on our world.~
== BJAHEIR ~You do not know what you are talking about, child. You cannot imagine how that will change the surface of our world.~
== Z#KIYOB ~Perhaps I do not, but I see you have a righteous flame in you, yet you do not serve the truth. You may think you find harmony and peace in what you are doing, but really, you know the only way is in the walk of truth.~
== BJAHEIR ~You dare to judge me? You who are but a child, and almost a stranger, can even claim to know my heart? If you were older I'd take offence, but I only find you presumptuous.~
== Z#KIYOB ~No, I just think it a pity that I could not respect you more, and be more at ease when I am about you and your fellow Harpers and druids. If we were on the same side...~
== BJAHEIR ~We are on the same side.~
== Z#KIYOB ~Only for now. If we and those we stood with were on the same side always, what a world that would be.~
== BJAHEIR ~You need to grow up, and open your eyes, to see what things really are. Maybe then, perhaps you will be the one standing with us.~
EXIT

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira", "GLOBAL", 1)~ THEN Z#KIYOB KyJah2
~What was Khalid like?~
DO ~SetGlobal("BKiyoJaheira", "GLOBAL", 2)~
== BJAHEIR ~I don't wish to speak about him.~
== Z#KIYOB ~There is no shame in feeling pain for the loss of those dear to us.~
== BJAHEIR ~You cannot comprehend what I feel, and you never will. I don't even think you know what it is like to have someone dear to you.~
== Z#KIYOB ~Perhaps that is so. What I do know I draw from observations, and come to relevant conclusions from them.~
== BJAHEIR ~The matter of my feelings is not for your observation! And if you ever insinuate again that I should be ashamed for being grieved at his loss, Silvanus forbid I will...~
== Z#KIYOB IF ~!Global("JaheiraRomanceActive", "GLOBAL", 2)~ THEN
~You are not used to feeling this way, are you?~
== Z#KIYOB IF ~Global("JaheiraRomanceActive", "GLOBAL", 2)~ THEN
~It surprises you that you have got over him so quickly, doesn't it?~
== BJAHEIR ~I...~ 
= ~You will not speak of such things again! My affairs are none of your concern.~
== Z#KIYOB ~I was just wondering how special a man Khalid was, what he was like, to have had the privilege of drawing so close to one as strong and independant as you.~
== BJAHEIR ~You are very intelligent, child, almost dangerously so. Do not think that your intent in speaking those words are lost on me.~
== Z#KIYOB ~Even if I spoke with an intention, it doesn't make what I said any less true. As for my intent, it is to understand what he was like, so why should I have a problem with you knowing that?~
== BJAHEIR ~Then it is enough for you to know that he was a brave man, who was my husband, and I his wife, and we were dear to each other.~
= ~Beyond that, you do not need to know, nor need to seek to know.~
== Z#KIYOB ~I see. Thank you, Jaheira, for sharing with me about him.~
= ~If ever you feel his spirit worthy of more than one line of your breath, I would be glad to listen.~
== BJAHEIR ~Impudent child! How dare you...~
== Z#KIYOB ~Till then, I will leave you be.~
EXIT 

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira", "GLOBAL", 2)~ THEN BJAHEIR KyJah3
~Kiyone, you said you wanted to know more about Khalid, did you not?~
DO ~SetGlobal("BKiyoJaheira", "GLOBAL", 3)~
== Z#KIYOB ~That I did.~
== BJAHEIR ~He does indeed, deserve more than a passing mention. Though none may ever know what he and I shared between us, if others would wish to know it would not be wrong to speak more of him.~
== Z#KIYOB ~And I would be honored to listen and know.~
== BJAHEIR ~I still wonder why it interests you, but since you listen I will speak.~
= ~He was a brave and courageous man, and he overcame a lot of his own self, to become the man I loved much. He would have misgivings, often a time, but never would he fail to set aside his own concerns to do what was required.~
= ~And there was much to do, being part of the Harpers. He and I, we walked through many a difficult deed, and we saved each other many countless times over.~
== Z#KIYOB ~What made him special? Was it simply just that?~
== BJAHEIR ~There was more to it, but I am unused to saying out what such would be. Suffice to say that we drew close, and in time became inseparable.~ 
= ~Our eventual union was a thing of beauty, and I think, the best memories of my life came from that first time we finally knew each other as man and wife. Sometimes it seems that my own current reality pales in comparison to it, and it becomes as a distant, beautiful dream.~
= ~A dream that will never return.~
== Z#KIYOB ~I am sorry, Jaheira.~
== BJAHEIR ~You never knew him, and there is nothing for you to be sorry about. I never regretted what we shared together, and I know he didn't regret it either. I only wish that it hadn't come to such an end.~
= ~And it was my promise to Gorion that led us eventually into that accursed dungeon, though. My selfishness...~
== Z#KIYOB ~It wasn't your fault, Jaheira.~
== BJAHEIR ~Shut up! I am not a weeping, helpless woman, I know damned well who was responsible for doing this.. to him... and I will have his blood, I swear!~
= ~But no.. this is not the time for such. My energies can be saved for when we finally put an end to that vile creature.~
== Z#KIYOB ~And if you should need help, I shall be with you to see to it that justice is served.~
EXIT

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira", "GLOBAL", 3)~ THEN Z#KIYOB KyJah4
~How did Khalid feel about all the things going around? About the war you averted, the Iron Throne, and about getting involved with <CHARNAME>?~
DO ~SetGlobal("BKiyoJaheira", "GLOBAL", 4)~
== BJAHEIR ~He had many misgivings right from the beginning, but he knew what had to be done.~
== Z#KIYOB ~And what had to be done, he did. With you by his side.~
== BJAHEIR ~Yes, that was so.~
== Z#KIYOB ~You did it because it was required to maintain the balance, right, Jaheira?~
== BJAHEIR ~Certainly.The effects of the war that Sarevok sought to bring about would have been...~
== Z#KIYOB ~And he? Apart from doing so out of his love for you, did he also do so to maintain the balance?~
== BJAHEIR ~He did so because it was the right thing to do. Which was to prevent war from breaking out.~
== Z#KIYOB ~Is that so?~
== BJAHEIR ~You ask me about Khalid and now you question my understanding of my very own husband?~
== Z#KIYOB ~I wouldn't dare, Jaheira. I was just confirming if he was as a Harper who serves only balance, or whether he was a servant of good.~
== BJAHEIR ~Yes, you guess rightly. He was a good man, in every sense of the word. Not that there are no good men among us Harpers.~
= ~Though, I might have known you would try use his memory to try to move me away from being a servant of the balance and of nature.~
== Z#KIYOB ~Nature is not on our side, Jaheira. If you were born blind, would it be for your own good?~
== BJAHEIR ~Who are we to know? That <CHARNAME> has the taint of Bhaal in <PRO_HIMHER>, it might perhaps turn out to be well.~
== Z#KIYOB ~Yet if <CHARNAME> gave in to the taint, and became as "nature", it seems, would have <PRO_HIMHER> be, I don't think it would be at all acceptable.~
== BJAHEIR ~It was the schemings of a desperate God of Murder that did this, not nature.~
== Z#KIYOB ~So you say, Jaheira. If Khalid were not a good man, but just one who let things be, would you have loved him?~
== BJAHEIR ~That is none of your business.~
== Z#KIYOB ~Well, it just shows that righteousness and truth is what you really stand for, rather than some vague sense of...~
== BJAHEIR ~Enough! I do not need a lecture on myself, and certainly not from a stranger, child.~
== Z#KIYOB ~I didn't mean to offend, Jaheira, and I shall withdraw now, before I upset you further.~ 
EXIT

CHAIN
IF ~InParty("Jaheira") InMyArea("Jaheira")
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKiyoJaheira", "GLOBAL", 4)~ THEN Z#KIYOB KyJah5
~I hope you did not regret sharing about Khalid to me.~
DO ~SetGlobal("BKiyoJaheira", "GLOBAL", 5)~
== BJAHEIR ~I have more than regretted it already. You asked me to share with you about my husband, and I did not want to do so, but in the end I did because you asked.~
= ~You then used his memory to try and force me into the direction you wish me to go. That is not the act of a friend.~
== Z#KIYOB ~It is indeed wrong to force one's will upon another. But if one finds her friend going astray, I do not think it wrong to try to set her friend back on the right path.~
== BJAHEIR ~Hmph. You think to judge me, and all other things, when you yourself don't even have an inkling about anything else beyond your perception of what is good and evil.~
= ~No doubt you can't see what I mean, though. Or perhaps you do, just that you refuse to acknowledge it.~
== Z#KIYOB ~I acknowledge all evils, for that is required for me to recognise them and put an end to them. And even standing by and watching idly as evil is inflicted upon others is an ill deed in itself.~
== BJAHEIR ~You do not know me well, or you would know I do no such thing. I serve justice as well, but a justice beyond the corruption of man made laws. And do not think I miss your veiled attacks upon my beliefs.~
= ~As for you, why do you insist on travelling with this Kova? Why do you take up his case?~
== Z#KIYOB ~Because he has been wronged and is I have to redress that.~
== BJAHEIR ~That's what you say, but he is a thief, and he is a murderer, and no amount of your efforts will change that. He might be innocent of what deeds he is wanted for, but he is no less guilty of others.~ 
= ~That is how it is, by the law you claim to serve. Do you deny that?~
== Z#KIYOB ~No, I do not. Yet even if he is guilty of some crimes, it is right that what he is innocent of should not be set upon him.~
== BJAHEIR ~It does not make a difference. By your law, he is still deserving of execution.~
== Z#KIYOB ~But those who did those deeds will go unpunished. That I cannot allow.~
== BJAHEIR ~And yet we all know that your expressed interest was solely to show him innocent of the accused crimes before the courts of law, with relevant evidence.I wonder who you serve, child. I think you serve yourself, rather than the righteousness and truth you claim to cleave so closely to.~
= ~Even if he were wronged, he is a liability and brings much danger and peril not just to yourself but to our entire group. So you endanger all of us for your own interests. Is this what righteousness is about? It seems more like selfishness.~
== Z#KIYOB ~And yet you and I have both braved many dangers for the sake of others. Righteousness is above self, beyond my own safety, and beyond yours or any of those travelling with us, as well.~
= ~You may feel the regret at times, but I know that you know what you did was the right thing, even though it meant the loss of your loved one.~
== BJAHEIR ~Do not try to manipulate my emotions by mentioning my husband in your mind-games.~
= ~Unlike you, I know who I was to Khalid, for I was his wife, and he my husband.~
= ~You are no one to this Kova, and he is no one to you. Or so you convince yourself, but you aren't really a servant of truth in this matter - you are just pandering to those you favour.~
== Z#KIYOB ~I am impartial in my judgment, Jaheira. He is a criminal, and in all things I never forget for a moment that he is dangerous and could well be looking for a chance to plunge his blade into my back.~
== BJAHEIR ~Continue to believe that, if you want to. It is none of my business who you should have your heart set upon.~
== Z#KIYOB ~He is just someone I need to work with in order to get to the bottom of this case. Why can't you see that?~
== BJAHEIR ~And why can't you see that you have left the path you claimed to walk? Everyone has, at one point or another, and I accept it as part of life. You however, do not, and you will have to face that truth someday, child.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone")
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoJaheira", "GLOBAL", 5)
Global("KKRomance", "GLOBAL", 2)~ THEN BJAHEIR KyJah6
~Has it ever occurred to you, Kiyone, what might be the consequences of your pursuit of this course? The odds are stacked rather against you, even with all of us on your side, I suspect.~
DO ~SetGlobal("BKiyoJaheira", "GLOBAL", 6)~
= ~You know very well the Shadow Thieves and Cowled Wizards will certainly not abide by the court's decision, and there will be long term repercussions to your actions.~
== Z#KIYOB ~I do what is right, Jaheira. You know I can do no less.~
== BJAHEIR ~Then continue on this course, just be prepared to lose what is dear to you.~
== Z#KIYOB ~There is nothing truly dear to me, not even my own life, Jaheira.~
== BJAHEIR ~So you say. Are you prepared to lose him, child? Not because you had to, but because you continued in your own stubborn purpose.~
== Z#KIYOB ~Lose who? Who or what are you talking about, Jaheira?~
== BJAHEIR ~Kova, of course. The very reason for this crusade of yours, for which you have enlisted us.~
== Z#KIYOB ~Well, losing him would hardly be acceptable. It would almost defeat the whole point of proving him innocent of the charges levelled against him.~
== BJAHEIR ~I ask you again, are you ready to lose him, child, completely and utterly? And never have him back, just like I will never have Khalid back.~
== Z#KIYOB ~What are you talking about, that you compare him to me as your husband was to you? No, Kova is just a fugitive, just someone I am helping only because his cause is true. How can you not see that?~
== BJAHEIR ~I see what I see, child.~
== Z#KIYOB ~You don't want me to go through the pain that you went through, isn't it?~
== BJAHEIR ~We did fall into Irenicus' hands because I promised Gorion to take care of <CHARNAME>.~
== Z#KIYOB ~And whatever might happen could well be because I wanted to prove him innocent in the court of law.~
== BJAHEIR ~For every action, there is a consequence, and that is the decree of nature. I have weathered the consequences of my actions, though it has not been easy.~
== Z#KIYOB ~Thank you, Jaheira, and I will weather those of mine, as long as I still draw breath. I do not rely on others for strength, or for support, and this Kova, while he has recently become my friend, is not my crutch nor my bastion of truth.~
== BJAHEIR ~So you say. Sometimes I feel that if you have not him, you have nothing. I am sorry for you child, that you have never known what it means to feel.~
== Z#KIYOB ~I do feel, I just keep it at an efficient minimal. No feelings of mine have ever hampered my work needlessly, and no feelings of mine ever will.~
EXIT


// Jan Jansen

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKvJan","GLOBAL",0)~ THEN BJAN JanKova1
~You know, Kova, you remind me of a relative of mine...~
DO ~SetGlobal("BKvJan","GLOBAL",1)~
== Z#KOVAB ~Really, Jan? And which one of your innumerable relatives is that?~
== BJAN ~Two hundred and thirty-seven.~
== Z#KOVAB ~Excuse me?~
== BJAN ~I have two hundred and thirty-seven relatives. Of course not all of these are immediate relations, but that’s besides the point.~
== Z#KOVAB ~And it's about time you say something that makes sense.~
== BJAN ~Anyway, as I was saying before you so rudely interrupted me; you remind me of a relative of mine - ol’ Robin Hood Jansen. He was an Outlaw, kind of like you are... and even had the turnip-hating Sheriff of Baldur’s Gate on his back. Now you have a law enforcer on your back, too, only the Sheriff of Baldur’s Gate wasn’t as attractive as Kiyone. Rrrrrow!~
== Z#KOVAB ~What is the point to you are trying to make, gnome?~
== BJAN ~My point, oh-hasty-one, was that you and Robin Hood Jansen are very much alike! He was wanted by the Shadow Thieves and the Flaming Fist for crimes that he says he didn’t commit.~
== Z#KOVAB ~And what happened to this relative of yours?~
== BJAN ~Oh, he died. He tried to steal candy from a baby. Nasty business that. Little did he know that the baby actually belonged to a family of griffins.~
== Z#KOVAB ~Wonderfully depressing. I suppose I might end up like that, though probably not from that same activity. If it weren't so upsetting I'd actually find that story incredulous.~
== BJAN ~You know, you saying that reminds me of that time, waaaay back...~
== Z#KOVAB ~Here we go again...~
EXIT

CHAIN 
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKyJan","GLOBAL",0)~ THEN BJAN JanKiyo1
~And so that was how Pinocchio Jansen came to be eaten by woodlice.~
DO ~SetGlobal("BKyJan","GLOBAL",1)~
== Z#KIYOB ~Well, you certainly do love the sound of your own voice, don’t you?~
== BJAN ~Not so much as my Cousin Adolph Jansen liked his. Why, he thought himself so important that he even used Vocalise spells to make sure that every living creature within a five-mile radius would hear what he had to say every time he opened his mouth.~
= ~Of course, his plan backfired one day when he burped. The following shock wave was so powerful that it ruptured the eardrums of every creature that lived within ten-miles of him. From then on he had to sign everything that he wanted to say, until he had his hands cut off, that is.~
== Z#KIYOB ~I suppose the sounds of your family's voices probably has something to do with their ability to run into unfortunate circumstances.~
== BJAN ~Ah, hmm.. no, I don't think so. At least, I thought it might be because...~
= ~Wait! There was Lucky Jansen.~
== Z#KIYOB ~If you're going to say how "Lucky" he was, just get it over with, the sooner the better.~
== BJAN ~Well, Lucky Jansen won the Athkatlan Lottery several years ago and became Amn’s first Gnome millionaire.~
== Z#KIYOB ~Really? And didn't someone try to cut off his tongue or some such?~
== BJAN ~No, at least not because of his voice. Lucky Jansen died in suspicious circumstances when he married Anna-Nichole Ogreman. See, she was a gold-digging Ogress if ever there was one, and brutally smothered Lucky with his own Turnips. Tragic, really. I never knew that the turnips had it in them.~
== Z#KIYOB ~Did Lucky's closer relations ever consider taking the ogress to the courts of law, instead of the turnips?~
== BJAN ~His mum thought of that actually, but the ogress was probably going to bribe the whole court anyway, so there wasn't much point to it. As for the turnips...~
== Z#KIYOB ~Let me guess. They were tried and pronounced guilty.~
== BJAN ~Sort of. But she thought it a pity to let them get executed and so she dropped the charges. Took them home for lunch, she did, and I just happened to be over there at that time. They certainly tasted good, that's for sure.~
== Z#KIYOB ~I can't believe I've actually listened to all that drivel.~
== BJAN ~Well, you can't say justice wasn't done. In a satisfying sort of way, and tasty, too.~
EXIT

CHAIN 
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKyJan","GLOBAL",1)~ THEN BJAN JanKiyo2
~You know, you and the lad over there, that chap of yours, make me think of the wedding of my grand nephew Kavo.~
DO ~SetGlobal("BKyJan","GLOBAL",2)~
== Z#KIYOB ~Kova has nothing to do with me except help me with the case. And you can keep that story to yourself, thank you very much.~
== BJAN ~Oh but you might be able to learn something from it, and it wouldn't be right to waste a chance to make someone the wiser, would it?~
= ~So as I was saying, Kavo married a beautiful female girl called Yoneki. The funny thing was, they both went around telling each other how much they hated each other on the wedding day. I was invited and they were standing on opposite sides of the big door. They did everything separately, to show how much they hated each other.~
== Z#KIYOB ~If they hated each other so much, why did they get married?~
== BJAN ~Kavo told all of us it had something do with too many overdue turnip taxes, so they wanted to combine accounts or something. I thought they had a pretty way of consolidating the tax accounts, then the courts wouldn't be able to pin nothing on them. I understand Yoneki said the same.~
== Z#KIYOB ~Jan, you are really starting to get on my nerves.~
== BJAN ~All through the wedding, Yoneki's family and friends weren't allowed to talk to Kavo's family and friends, and nor were his family and friends allowed to talk to hers. Meantime, both of them refused to look at each other, and when they took the vow they had the priest stand between them so that they wouldn't have to see each other. Never heard them say a word through the whole thing, probably bribed the priest to pretend he had heard a yes from both parties to get things moving. And as soon as the ceremony was over they both hurried away to attend to each their own business without so much as noticing each other. But you know what I found really interesting?~
== Z#KIYOB ~This is not funny, Jan.~
== BJAN ~Yes, it is really a very very tragic tale. You see they were so terribly terribly in love, head over heels in fact. So, why would they say they hated each other, and not even stay in the same house, or speak a word to each other?~
= ~You see, it was because of the turnips! They both wanted the best turnips! All that competition, so they couldn't bear to even eat around each other, or stay with each other, though they loved each other so much! Isn't that tragic?~
== Z#KIYOB ~Yes yes. And what in the world was the lesson of that story?~
== BJAN ~Oh, I thought you'd have gotten it? Well here let me see, Kavo and Yoneki, Kavo and Yoneki, what was that lesson again? Ah, now I remember...~
= ~Never, ever ever let anything, not even the one you love the very very most, stand between you and the true wonderful cause of tasting the best turnips. Nothing can compare, to the pursuit of that noblest of causes! Compromising on the best turnip ingredients just because you love someone is a most tragic ending for a true Jansen, really.~
== Z#KIYOB ~That does it! No more, Jan, no more! Not a word more will I hear from you!~
EXIT

CHAIN 
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
GlobalGT("KKRomance", "GLOBAL", 0)
Global("BKyJan","GLOBAL",2)
Global("BKvJan","GLOBAL",1)~ THEN BJAN JanKova2
~I was telling a story to your girl over there not so long ago, but she wouldn't...~
DO ~SetGlobal("BKvJan","GLOBAL",2)~
== Z#KOVAB ~For the last time, Jan, she is NOT my girl! We were talking about what to do next.~
== BJAN ~Yes, what to do next? I didn't manage to finish the story of my grand nephew Kavo and his wife Yoneki to her, so it's a good story to tell next. The lesson to be learnt is very important too.~
== Z#KOVAB ~Jan, I do not find this amusing.~
== BJAN ~Yes, it's a really tragic tale. Didn't she tell you? But anyway, so they had to both go out for lunch together one day, finally, but they both refused to bring out their best turnips, yet both of them would not eat any turnips which were not the best turnips around.~
== Z#KOVAB ~Oh yes. I suppose they're all turnip merchants, yes. What a delightful occupation.~
== BJAN ~I'm glad you approve. Unfortunately they weren't happy about that, and so they decided, rather than quarrel with each other, since they really, deep down inside, if not for the turnips, loved each other so dreadfully dreadfully much...~
== Z#KOVAB ~Jan...~
== BJAN ~Hmm, you need a recap? Well, as I told your girl, but I guess she didn't tell you, Kavo and Yoneki were so dreadfully terribly absolutely in love with each other, except for the turnips, that they really didn't want to fight with each other, so they decided to have a competition to see who was better. They would both sit down facing each other, and the first person to talk or whose stomach asked for turnips would be the one who would have to provide the turnips for the meal.~
= ~So they sat and waited, and waited for so long, that what do you know, turnip thieves would come! And Kavo, he saw some thieves going for her turnips behind her back, so he got up quietly and went to protect her turnips. And Yoneki, she saw some other thieves going for his turnips behind his back, so she got up quietly and went to protect his turnips. Because all their turnips were among the best, and they both did it for the love of each other and for the love of the finest, truest turnips.~
== Z#KOVAB ~I don't see what's so tragic about that.~
== BJAN ~Oh, but they were both found dead the next morning and all their turnips were gone. Isn't it a tremendous tragedy? If only it were just a story, I would not have wanted to give such an upsetting ending. I think together they could have beaten off one band of thieves, then the other, but because they each tried to defend turnips separately, they were overpowered.~
== Z#KOVAB ~I know I really shouldn't be asking this, so what's the lesson?~
== BJAN ~Never ever stay silent when protecting turnips. It may cost you a turnip or two more, but at least you won't lose all your turnips.~
== Z#KOVAB ~I might have guessed. Very well done, Jan. Now if you'll excuse me, I have less important things to do than to listen to your life changing, insightful stories into the nature of gnomekind.~
EXIT




// Nalia

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaNalia","GLOBAL",0)~ THEN BNALIA kova1
~You're that wanted fellow, right, the one everyone is looking for? I've heard about you...~
DO ~SetGlobal("BKovaNalia","GLOBAL",1)~
== Z#KOVAB ~Well, in case you haven't heard, I'm supposed to have murdered three of you snooty, good-for-nothing, spoilt, juvenile noble brats. So why don't you go find yourself a safe place to hide in or something?~
== BNALIA ~What's wrong with you? I was just commenting, anyway you don't seem like the kind of person who'd do such a thing. You wouldn't, would you?~
== Z#KOVAB ~I might. How well do you know me?~
== BNALIA ~Not very well, but I've observed you. You are rather moody but other than that it seems that...~
== Z#KOVAB ~Very well, I'll try to let you know me better. Did it ever occur to you that even if I did not murder those pampered puppies, I might still detest all you dressed-up peacocks and peahens?~
== BNALIA ~They do get a little gaudy at times, but that's still no way to address those above your station.~
== Z#KOVAB ~It's at times like this I really wish I was just half as foul as my former comrades, to be able to enjoy putting an end to the parasitic "superior" existence of people like you.~
== BNALIA ~What? How can you say that, I've been helping all those of your kind, how can you even think that way about me?~
== Z#KOVAB ~My kind? You do not even know the half of it, we are little more than needy begging ants to you, aren't we? And we wouldn't be able to survive without you, would we?~
== BNALIA ~Of course! If something were to happen to my family, our servants, they wouldn't be able to...~
== Z#KOVAB ~That does it! I warn you, girl, if you say a word more I will tear you from limb to limb, with much pleasure and much relish.~
== BNALIA ~Fine, be that way then! I may have to help you if I need to, but I'll not associate with ingrates who are incapable of acknowledging help from their betters!~
EXIT

CHAIN
IF ~InParty("Nalia") InMyArea("Nalia") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoNalia","GLOBAL",0)~ THEN Z#KIYOB KyNalia1
~Nalia, has it ever occurred to you that while those you help are indeed less privileged and fortunate than yourself, they might not be inferior to you?~
DO ~SetGlobal("BKiyoNalia","GLOBAL",1)~
== BNALIA ~No, I can't say it has. Why do you suggest such a strange thing?~
== Z#KIYOB ~You're an intelligent girl, Nalia. Is it difficult to see that those who need help and assistance do not need them because they are less than you are, but because they have less than you have?~
== BNALIA ~I understand I cannot help what they are born into, but I can assist in providing what they do not have.~
== Z#KIYOB ~They are not beneath you, Nalia. Helping them is the humane and right thing to do.~
== BNALIA ~Of course helping them is humane. But they are beneath me, otherwise why it is right that I should try to help them?~
== Z#KIYOB ~Let me put it this way. If I were not a noble, would it be impossible for me to have say, five thousand gold pieces to my name?~
== BNALIA ~It'd be difficult, very difficult, I imagine.~
== Z#KIYOB ~But not impossible. And if I were a noble, would it be possible for me to become impoverished or lose everything? Such as if, say, an army of trolls attacked my family estate.~
== BNALIA ~That's not a very nice thing to say.~
== Z#KIYOB ~It makes a point, so I'll say it. At the end of the day, what can nobles do that ordinary people cannot, if they had the means and the connections?~
= ~Besides, you are a noble because your father is. He is one because his father was. And so on and so forth. Yet there arises the question - where did your noble lineage begin?~
== BNALIA ~I think it goes back to be about a two or three centuries, I'm not sure. I never really liked those history lessons, I always thought helping the needy was...~
== Z#KIYOB ~And before that? There must have been a time when your ancestor of yours who was not a noble. Just a commoner... who became a noble.~
== BNALIA ~You aren't a noble, Kiyone, and I'm very certain you do not know what you're talking about.~
== Z#KIYOB ~But you know what I'm talking about. That is enough for me.~
EXIT

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoNalia","GLOBAL",1)~ THEN BNALIA KyNalia2
~Having considered what you said, Kiyone, I still know my place. Even if I am on the road and away from home right now, it doesn't make me any less of a noble.~
DO ~SetGlobal("BKiyoNalia","GLOBAL",2)~
== Z#KIYOB ~And being a noble doesn't place you any distance above or below anybody else.~
== BNALIA ~I am obliged to help others because I am a noble, and I have the means.~
== Z#KIYOB ~And the heart. If you had never been a noble, would you still help others? If you were not a noble, but had the coin, would you still help others?~
== BNALIA ~But others don't, especially not the commoners. Even though some of them might have the means they just step on the poor and pretend they can't see them.~
== Z#KIYOB ~And so do other nobles. You help others because you have the heart, not because you are a noble. Being a noble means nothing, and just because others lack doesn't make them less than you who have.~
= ~And it is not your blood, or your birth, that makes you more than them, but rather, having a heart for others.~
== BNALIA ~That doesn't really seem right. If I had the heart but didn't have the means, what good would I do? I'd just be miserable, and probably sick.~
== Z#KIYOB ~You might have had the means even if you were not a noble, Nalia. I'm sure someone as smart as you are can find some way to get some means of helping others.~
= ~You see, you are just like the rest of us. Noble or not, it doesn't make you any better. You are smart and helpful not because you are a noble, but because of who you are.~
== BNALIA ~So what you are trying to say is that being a noble has very little to do with anything, and I should try to help others without thinking that they are lower than me.~
== Z#KIYOB ~Indeed.~
== BNALIA ~Well if I can help someone the person has to be lesser than me for me to be able to help him.~
== Z#KIYOB ~<CHARNAME> could have helped you, but that didn't make <PRO_HIMHER> any more or less than you.~
== BNALIA ~I think I see what you are trying to say now. I can't say I agree, but at least for once, somebody has said something on this matter that makes some sense.~
EXIT


// Imoen

CHAIN
IF ~InParty("Imoen2") InMyArea("Imoen2") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoImoen","GLOBAL",0)~ THEN Z#KIYOB KyImoen1
~I admire your strength, Imoen.~
DO ~SetGlobal("BKiyoImoen","GLOBAL",1)~
== IMOEN2J ~My strength? What are you talking about?~
== Z#KIYOB ~It seems rather impressive to me that someone could have been through what you have, both incarceration in the asylum and losing your soul, and yet be so... yourself.~
== IMOEN2J ~Meh, you didn't even know what I was like before this. Who are you to say?~
== Z#KIYOB ~It certainly is a vast improvement from what we saw earlier.~
== IMOEN2J ~Oh? What was that?~
== Z#KIYOB ~You were feeling empty, and lifeless, and talking about death being all around.~
== IMOEN2J ~That? Oh...was that me? I can't really remember.~
== Z#KIYOB ~Regardless, you certainly are much better now, and you have my respect for that. I was rather delighted to hear you greet us in the maze, not with concern for yourself, but rather for <CHARNAME>.~
= ~I was a little worried that we had been through all that just to rescue a psychopath, but...~
== IMOEN2J ~Hey, that's not nice!~
== Z#KIYOB ~Now now, hear me out.~
= ~But, I am glad that wasn't true, and that you are travelling with us now. You are certainly well worthy of being <CHARNAME>'s sister, what with possessing <PRO_HISHER> strength of character and determination, beneath that outward childlikeness.~
= ~I must admit, you almost make me feel young again, just by seeing how you handle so well the loss of your soul, that many others might well have collapsed under.~
== IMOEN2J ~But you are young, aren't you?~
== Z#KIYOB ~I turned twenty-two two months ago. Not that age means much to the work I do.~
== IMOEN2J ~That's not old. You're only a bit older than me, I think.~
== Z#KIYOB ~Maybe I just never felt young before.~
== IMOEN2J ~You need to loosen up, you know.~
== Z#KIYOB ~Yes, I suppose I should, Imoen. Like I said, I am glad for your company.~
== IMOEN2J ~Thanks, I guess. Though you're making it almost sound like everyone else isn't so happy to see me with you guys.~
== Z#KIYOB ~Maybe. I can say I know of at least one person who definitely was a little apprehensive, but I think he's better now.~
EXIT

CHAIN
IF ~InParty("Imoen2") InMyArea("Imoen2") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaImoen","GLOBAL",0)~ THEN Z#KOVAB KvImoen1
~Why are you looking at me like that?~
DO ~SetGlobal("BKovaImoen","GLOBAL",1)~ 
== IMOEN2J IF ~GlobalGT("BKiyoImoen","GLOBAL",0)~ THEN
~Heh, was I that obvious? So you must be the one Kiyone was talking about.~
== IMOEN2J IF ~Global("BKiyoImoen","GLOBAL",0)~ THEN
~Heh, was I that obvious? You do keep an eye out for things, don't you?~
== IMOEN2J ~I was just wondering what is it with you and being so watchful all the time. Don't you ever relax? Take a break or something?~
== Z#KOVAB ~What is it that you want, Imoen?~
== IMOEN2J ~Nothing, I just thought you could learn to unwind a little, loosen up.~
== Z#KOVAB ~There isn't very much about my situation to give me reason to relax.~
== IMOEN2J ~Yeah, I'm sure your case must be worse than mine. I've only been through, let's see...~
== IMOEN2J IF ~!Dead("c6bodhi")~ THEN
~Lost a couple of friends, some torture, short but peaceful imprisonment, more torture, having my soul ripped out of me and feeling empty as death and all that. And if I don't get it back I'll probably just drop dead while walking or something like that.~
== IMOEN2J IF ~Dead("c6bodhi")~ THEN 
~Lost a couple of friends, some torture, short but peaceful imprisonment, more torture, having my soul ripped out of me and feeling empty as death and all that. But at least I got my soul back, so now I guess I should be more cheerful.~
== Z#KOVAB ~You've made your point, but I don't see why my disposition would concern you.~
== IMOEN2J ~You are in my little <PRO_BROTHERSISTER>'s party, you know. Is some talking between friends forbidden or something?~
= ~You and Kiyone are so stiff at times, don't you guys ever like loosen up?~
== Z#KOVAB ~I fail to see any connection between this matter and Kiyone.~
== IMOEN2J ~Don't you ever want to just relax, be yourself in front of someone? Not me, maybe, but there's...~
== Z#KOVAB ~I am myself - this is me. What is not myself is to relax, especially in the company of the person sent to keep me on the law's leash.~
== IMOEN2J ~Hmm, I don't remember suggesting anything about you relaxing in front of Kiyone.~
== Z#KOVAB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
~As long as I'm in this party, I am in front of her, and though she is my friend, I still have to watch out for unfavourable developments.~
== Z#KOVAB IF ~GlobalLT("KKRomance","GLOBAL",2)~ THEN
~As long as I'm in this party, I am in front of her, and I do have to watch out for unfavourable developments.~
== IMOEN2J ~Heh, then I'll be looking out for interesting developments. It should be fun to watch and see what happens!~
== Z#KOVAB ~What sort of things, exactly, are you expecting?~
== IMOEN2J ~Oh, nothing much, just the usual. Maybe she sneaks up on you one day, ties you up and throws you into the deepest darkest dungeon forever, or maybe you sneak up on her one day, stab her in the back and then bury her somewhere where the sun don't shine.~
= ~Nothing amazing, just the usual thing you would expect when a wanted man and the one sent to nab him  are in the same party.~
EXIT

CHAIN
IF ~InParty("Imoen2") InMyArea("Imoen2") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoImoen","GLOBAL",1)~ THEN Z#KIYOB KyImoen2
~You and <CHARNAME> talk about someone called Gorion, and growing up together in Candlekeep. What was life like back then?~
DO ~SetGlobal("BKiyoImoen","GLOBAL",2)~ 
== IMOEN2J ~You know, after all that the two of us have been through, it does seem really far away. I sometimes feel as if I've forgotten, but then I remember things and they're like a breath of fresh air.~
== Z#KIYOB ~That must be helpful, a relief even, especially when things start to get difficult.~
== IMOEN2J ~Yeah, it sure does help, a lot. Old Winthrop, stuffy Gorion, heh, they were real nice too. You wouldn't think Gorion was anyone when you look at him, though I think he was a very powerful and all that.~
= ~He sure didn't push us around, and I think he was a good dad, yeah. Between he and <CHARNAME>, family wasn't so bad. Though <CHARNAME> did get so stiff at times...~
== Z#KIYOB ~I see. That must be very distant, and it is good you remember it.~
== IMOEN2J ~You like being alone?~
== Z#KIYOB ~Sorry?~
== IMOEN2J ~It was just, you know, a thought. You don't seem like the sort who would travel in a group like this unless you had to. Were you pretty lonely when you were a kid?~
== Z#KIYOB ~Half-correct, Imoen. I do prefer to travel alone, though I think I'm slowly getting used to being in a group.~
= ~But no, I wasn't alone as a child. I had my parents, I had their friends around me, and I grew up as a Sentinel, becoming part of the organisation they created.~
== IMOEN2J ~Meh, if that were me in your shoes I'd probably have been bored stiff.Speaking of being a Sentinel, do you guys ever take a break, a vacation, a day off or something?~
== Z#KIYOB ~Some have need of taking a break from their duties, and some do not. Regardless, inside we are always Sentinels, and there is a need to do the right thing, whether or not we are having a break, so to speak.~
== IMOEN2J ~I'll take that as a no. But what I really meant was that, don't you relax? You know, just chill out with a few friends or something.~
== Z#KIYOB ~I've never had that many friends, and in any case, being alone is more relaxing for me.~
== IMOEN2J ~Well, you should give it a try. Is Kova your friend? Maybe you two could try to unwind more.~
== Z#KIYOB IF ~GlobalGT("KKRomance","GLOBAL",1)~ THEN
~He is a friend, for now, in this season. Things will change. Friends are impermanent, whether due to emotional reasons or to external reasons such as death.~
== Z#KIYOB IF ~GlobalLT("KKRomance","GLOBAL",2)~ THEN
~He might become a friend, but no, he isn't one yet. In any case, things change, and friends are impermanent, whether due to emotional reasons or to external reasons such as death.~
== IMOEN2J ~Gee, that's a really gloomy way of looking at things.~
== Z#KIYOB ~These are just facts. I have my own ways of unwinding though, as you so call it, and yes I appreciate them very much and am grateful for your concern as well.~
== IMOEN2J ~If you say so, sure. You're welcome.~
EXIT

// Korgan

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKorgan","GLOBAL",0)~ THEN BKORGAN KorganKova1
~Bad enough that ye be as ugly and long as ye are already, and being as lily livered as ye are keeps me wondering what use <CHARNAME> has for hauling your weight along.~
DO ~SetGlobal("BKovaKorgan","GLOBAL",1)~
== Z#KOVAB ~Well, I can't say I disagree. I'm just a helpless half-elf hoping for some protection and help.~
== BKORGAN ~Hah, <PRO_HESHE> be too much of a softie to not be offering charity to the likes of ye. Least ye bring some meat to keep my axe busy and the road interesting.~
== Z#KOVAB ~People aren't exactly there to be slaughtered, you know.~
== BKORGAN ~Ye be telling me that, when they all want a knife or two in ye? That's what having too little air up there and no beard does for ye head.~
= ~They all bleed red same as the pigs, and when their guts come spilling out they be looking same as pig's too.~
== Z#KOVAB ~Your blood is red as well, and your guts probably also look like theirs.~
== BKORGAN ~I've me trusty axe to see that they ain't going nowhere, whereas just like ye, most people ain't got nothin' to keep the stuffing in them.~
== Z#KOVAB ~Last I checked, I've got Korgan's trusty axe for that, but I could be mistaken. The main thing that separates me from being mincemeat is that I'm on your side, and I am grateful~
== BKORGAN ~Never be hearing a longleg being thankful for nothin' before. I know ye sort, ye be up to something.~
== Z#KOVAB ~I was just hoping to keep you on my side. There's enough people wanting me dead already.~
EXIT

CHAIN
IF ~InParty("Kova") InMyArea("Kova") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaKorgan","GLOBAL",1)~ THEN BKORGAN KorganKova2
~Ye know, Kova, with all the world drawing steel and out looking for ye guts, doing all this looking for whether ye did it or nay is a right big fat waste of time.~
= ~If I were ye, I'd either run for it or find the right ones to gut, but probably ye too yellow for that.~
DO ~SetGlobal("BKovaKorgan","GLOBAL",2)~
== Z#KOVAB ~I can't say the thought has never crossed my mind before. I really should be getting out of here rather than sticking around.~
== BKORGAN ~Like ye said before, good thing for ye my axe is with ye rather than against ye. If not for <CHARNAME>, it'd not be long before I be trading ye head for all that gold they want to give for it.~
== Z#KOVAB ~Your honesty is refreshing, Korgan, if unexpected.~
== BKORGAN ~That so? Most people be getting worked up over me wanting a piece or two of them.~
== Z#KOVAB ~I'm just so used to having people trying to knife me in the back that I appreciate frankness.~
== BKORGAN ~Doesn't mean I ain't going try and take it off sometime, somewhere private like.~
== Z#KOVAB ~That's all right, so long as it doesn't involve trying to chop my head off while I'm asleep or putting your blade in while my back's turned, I think I'll still prefer your company by and large.~
== BKORGAN ~Oh? Was thinking ye be too yellow to want to face the likes of me axe.~
== Z#KOVAB ~Not that I want to, it's just that if you really wanted to cut me to bits, what can I do? Best thing would be if you let me know when you want to, that way I don't have to keep looking down to check if my legs have been hewn out from under me.~ 
= ~Unless of course, there's a way to make you change your mind. Then again, I'm not too bright and not too good with dwarves, but I sure would like to know what would set your beard right after a long day.~
== BKORGAN ~Well, a good amount of gold or a few rounds of drinks doesn't sound too bad, though nothin' like a good fight to get the blood going.~
== Z#KOVAB ~Ah, I see. I haven't too much gold at the moment, but I think when we next stop at an inn I can afford to pay for a round or two here for master Korgan and his axe.~
= ~After all, if not for him, I'd probably be dead in the gutter and missing my head by now.~
== BKORGAN ~Hah! Ye got a quick tongue for a longleg - well wait till ye've got a few pints of ale in ye, then let's be seeing how quick it be then.~
== Z#KOVAB ~Well, I've never drank before, but if you wish it, I'll probably have to try just a bit then. No doubt though that I'll be out cold under the table in the blink of an eye.~
EXIT

// Cernd

CHAIN
IF ~InParty("Kiyone") InMyArea("Kiyone") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKiyoCernd","GLOBAL",0)~ THEN BCERND KyCernd1
~The embrace of nature again refreshes my spirit, and her beauty and fragrance brings comfort to the soul. Though I may walk the forests a thousand years, there would not be less cause to marvel.~
DO ~SetGlobal("BKiyoCernd","GLOBAL",1)~
== Z#KIYOB ~Indeed, there is much joy in you as you walk the forest, and the pleasure you find in nature almost makes me jealous that I have not your measure of it.~
== BCERND ~You have your own measure of appreciation, and it indeed is a generous portion. It would be unnatural to have much more when you do not follow her steps more closely.~
== Z#KIYOB ~You mean following the balance of things, the cycle of life and such, I suppose. We of the Sentinels admire your brethren much, though we cannot agree on condoning evil.~
== BCERND ~Men often seek to unbalance and tip the scales, to aggravate the cycle and the natural order of things. If spring were overly full of life, it could mean a sweltering summer or a harsh winter, and that would be upsetting for many.~
== Z#KIYOB ~That is so, and the ends of good must seem a short term goal to you. Still, we both seek the same cause of good for all, just through different ends. Yours by maintaining balance, ours by eradicating evil.~
== BCERND ~An insightful thought, and one that promotes harmony. Though where would nature be without the contention between the wolf and the sheep, between the hawk and hare?~
== Z#KIYOB ~It does not take a druid to hear the song of the leaves in the wind, and there is beauty in watching the swoop of the falcon, the pounce of the tiger.~
== BCERND ~That is so in the nature of the forest, but what of the nature of the city? What of the swing of the thug's fist, the dip of the pickpocket's fingers?~
= ~But I do not know much, for I am of the forest, after all.~ 
== Z#KIYOB ~Well spoken, Cernd. People are not animals, however, and the tiger cannot live on grass, but has to hunt for its food, whereas the thug and pickpocket may both do honest work for a living.~
== BCERND ~It may seem that way, yes. I am very much a stranger to the city, after all.~
EXIT

CHAIN
IF ~InParty("Cernd") InMyArea("Cernd") 
Global("Z#TrialClear","GLOBAL",0)
Global("BKovaCernd","GLOBAL",0)~ THEN Z#KOVAB KvCernd1
~Some see the forest as a place of tranquility, others as a sanctuary, and others a place of danger or adventure. But I think it would be interesting to know the view of one who knows it best, Cernd.~
DO ~SetGlobal("BKovaCernd","GLOBAL",1)~
== BCERND ~That is interesting to hear from you. You come across as someone usually less forthcoming with most people. I might almost guess that you find the embrace of nature rather more agreeable than otherwise.~
== Z#KOVAB ~That is so, and for that I respect you. I have dwelled in the city for almost all of my life, and it would not be amiss to try to catch up by learning from one who knows better.~
== BCERND ~Nature isn't understood just by hearing a man speak of her. What words can capture her in all her fullness? Nothing is better than drawing near to her and standing in awe of her splendour and beauty.~
= ~It is my understanding that for you she is a place of refuge, one of peace and tranquility, of being far from the troubles that you face elsewhere.~
= ~Those of her being however, see her as of life, of activity, of strength and of change, though at once she is calm and serene, gentle and unchanging.~
== Z#KOVAB ~So the peace that I imagined was born more out of my inability to see the flurry of activity within her?~
== BCERND ~Maybe you simply feel the harmony of all her children, living together in cycles of her design, and that stability it brings is peace to you.~
== Z#KOVAB ~Perhaps so, but harmony is not peace, as instruments in harmony are not silent. Calmness and serenity are not peace - just distractions from what is inside.~
== BCERND ~Peace has to come from within, not without. Peace may be given to many, but many would turn it away. To accept peace is not easy, as I have learnt, and am still learning.~
== Z#KOVAB ~I see. Thank you for your wisdom, Cernd.~
EXIT
