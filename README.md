
![Latest Release](https://img.shields.io/github/v/release/GwendolyneFreddy/Beyond_the_Law?include_prereleases&color=darkred)<a name="top" id="top"> </a>
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/GwendolyneFreddy/Beyond_the_Law?color=gold)
![Platform](https://img.shields.io/static/v1?label=platform&message=windows%20%7C%20macOS%20%7C%20linux%20%7C%20Project%20Infinity&color=informational)
![Language](https://img.shields.io/static/v1?label=language&message=English&color=limegreen)

![Supported games](https://img.shields.io/static/v1?label=supported%20games&message=BGII%20%7C%20BGT%20%7C%20BG2%3AEE%20%7C%20EET&color=dodgerblue)


<div align="center"><h1></a>Beyond the Law (WIP)</h1>

<h3>A Spellhold Studios mod for Baldur's Gate II: SoA and ToB (classical and EE games),<br>
Baldur's Gate Trilogy and EET<h3>

</div><br>


## 

[![Created Badge](https://badges.pufler.dev/created/GwendolyneFreddy/Beyond_the_Law?style=plastic)](https://badges.pufler.dev)
![GitHub repo size](https://img.shields.io/github/repo-size/GwendolyneFreddy/Beyond_the_Law?style=plastic)
[![Visits Badge](https://badges.pufler.dev/visits/GwendolyneFreddy/Beyond_the_Law?color=cyan&style=plastic)](https://badges.pufler.dev) 
![Maintenance](https://img.shields.io/static/v1?label=maintained%3F&message=yes&color=greenlight&style=plastic)
![GitHub contributors](https://img.shields.io/github/contributors/GwendolyneFreddy/Beyond_the_Law?color=blueviolet&style=plastic) [![Contributors Display](https://badges.pufler.dev/contributors/GwendolyneFreddy/Beyond_the_Law?size=30&padding=5&bots=true)](https://badges.pufler.dev)

## 


## 

<div align="center">
<a href="#intro">Overview</a> &#8226; <a href="#compat">Compatibility</a> &#8226; <a href="#installation">Installation</a> &#8226; <a href="#details">Details</a> &#8226; <a href="#components">Components</a> <a href="#credits">Credits and Acknowledgements</a> &#8226; <a href="#versions">Version History</a></br>
</div>

<hr>


Beyond the Law v1.35

Kova, a mage/thief with an unsavoury background and good heart (or so he claims), and a law-enforcing, impartial (or so she claims) archer called Kiyone, comes together to join the party in this intriguing Mod about proving one man's innocence against the odds, and about the unlikely yet strong bond formed between the two people, so different yet so much alike.

The Quest is slated to run from chapter 2 to 6, and involves 7 separate parts, each with its own rewards, but interlinked nonetheless into a case that only goes to show more about the power play between the Shadow Thieves and the Cowled Wizards, the pliable nature of the law-enforcers in Athkatla and further insights into why certain things happened to certain NPCs, such as -
How did Renal come to be informed of Mae'Var's designs?
Why did Edwin want Rayic dead, and why was he in Mae'var's Guild?
Why was Rayic protecting himself so extremely?
Was Jermien building a golem simply to protect his daughter?

BTL also examines many of our concepts of good & evil, right & wrong, justice & forgiveness, courage & despair, means & ends, and most importantly, perhaps, what it means to really live, and to find a purpose in that, amidst this journey of self-discovery between these two NPCs.


Hello! I traified and added EE-EET compatibility to another mod, "Beyond the Law". At the same time, I put things in order in the mod files and put all the files in separate folders depending on the file type.
https://www.dropbox....w 1.40.rar?dl=0

P.S. In the mod there is a file Inter25.tra, in which dialogues with Volo and interjections of the ToB part are added, except for the call through the Fate Spirit, but this file is not compiled in a tp2 file - perhaps it is worth including it there?
At the same time, without strings for the Fate Spirit the EET_TRANSITION function will not be needed, so I did not add it.
 
Also, the TP2 file does not compile the riddles.d file (as it has been included under Zyraen's Miscellaneous Mods - https://www.pocketpl...ens-miscellany/), and files from the Extras folder (for what reason, I don’t know)

https://www.pocketplane.net/zyraens-miscellany/

<hr>


## <a name="compat" id="compat"></a>Compatibility


<hr>


## <a name="installation" id="installation"></a>Installation

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="details" id="details"></a>Details


<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="components" id="components"></a>Components

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="faq" id="faq"></a>Frequently Asked Questions

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="credits" id="credits"></a>Credits and Acknowledgements

<div align="right"><a href="#top">Back to top</a></div>


<hr>


## <a name="versions" id="versions"></a>Version History


##### Version 2.0.0 (October nn, 2021)

- Added *luvnalia.ini* metadata file (including dynamic install order syntax and global `LABELS`) to support AL|EN's "Project Infinity".
- Renamed *setup-BTL.tp2* -> *btl.tp2* and moved it to mod top folder to support AL|EN's "Project Infinity".
- Replaced `AUTHOR` keyword with `SUPPORT`.
- Added `VERSION` flag.
- Replaced `AT_INTERACTIVE_EXIT` deprecated command with `README`.
- Added Immutability concept:
- Added `HANDLE_CHARSETS` function to convert string entries for EE games.
- Added `REQUIRE_PREDICATE` conditions to avoid installing the mod in inaccurate games.
- Added component `DESIGNATED` number and global `LABELS`.
- Externalized tp2 code into *main_component.tpa* library for more comfortable readability and maintenance.
- Commented code as much as possible.
- Added native BG2:EE and EET compatibility:
    - ...
    - ...
    - ...
    - ...
    - Provided accurate sized NPC portraits for EE games and renamed large portraits in epilogue files.
- Included all BWP Fixpack fixes:
    - *start.baf*: <a href="http://www.shsforums.net/topic/33192-btl-with-bgt/">Hoppy's BGT compatibility fix start</a> preventing Kiyone from showing up in the BG1 part meeting the alignment, rep requirements and chapter 2.
    - *z#1002.baf*: <a href="http://www.shsforums.net/topic/47635-notes-oddities-and-possible-bugs-in-my-bwp-game-spoilers/page-14#entry566555">Lollorian's methodical `OnCreation()` removal from blocks that have a LOCALS/GLOBAL associated with them</a>.
    - *z#2801.baf*: <a href="https://www.gibberlings3.net/forums/topic/27712-bg2ee-parse-error-compiling-g3mrsgtubaf">agb1's `Face()` -> `FaceObject()` conversion</a>.
    - "*items.d*": <a href="http://www.shsforums.net/topic/45266-small-typo/">Lollorian's small typo fixes</a>.
 - ...
- Added missing journal entries.
- Fixed typos.
- Split setup.tra files into separate thematic files for more comfortable readability.
- Completed mod traification.
- TODO Updated and renamed readme file to *luvnalia-readme-english.txt*, then moved it into new "*readme*" folder.
- Removed useless files and "*backup*" folder.
- Reorganized mod architecture tree: created or renamed folders to sort files according to their types.
- Lower cased files.
- TODO Included Linux and Mac OS versions in the same package (thanks AL|EN's Infinity Auto Packager tool!).
- Added archive libiconv-1.9.2-1-src.7z with iconv licence info.
- Updated WeiDU installer to v247.
- TODO Uploaded mod to official Spellhold Studios GitHub mirror account.

## 

##### Version 1.35 (January 16, 2008)

- Fixed typo of `~=InParty` in "*InterJ.d*".
- Removed useless files and "*backup*" folder.
- Banter Intervals between Kova and Kiyone reduced to slightly under 1/3 of previous interval.
- Minimum Banter Intervals shortened to negligible.
- Final Banter between the two of them being friends should not repeat anymore.
- Loading area for the Finale of BTL has been resolved.
- Updated WeiDU installer to v203.

## 

##### Version 1.0 &nbsp;(April 25, 2007)

- Initial release.
<div align="right"><a href="#top">Back to top</a></div>
