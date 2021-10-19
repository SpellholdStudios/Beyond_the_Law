// Statue of Riddles

EXTEND_BOTTOM PPSTAT01 4
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceOne","AR1512",0)~ THEN 
DO ~SetGlobal("FaceOne","AR1512",1)~ GOTO 1
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceTwo","AR1512",0)~ THEN 
DO ~SetGlobal("FaceTwo","AR1512",1)~ GOTO 6
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceThree","AR1512",0)~ THEN 
DO ~SetGlobal("FaceThree","AR1512",1)~ GOTO 9
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceFour","AR1512",0)~ THEN 
DO ~SetGlobal("FaceFour","AR1512",1)~ GOTO 12
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceFive","AR1512",0)~ THEN 
DO ~SetGlobal("FaceFive","AR1512",1)~ GOTO 15
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceSix","AR1512",0)~ THEN 
DO ~SetGlobal("FaceSix","AR1512",1)~ GOTO 18
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceSeven","AR1512",0)~ THEN 
DO ~SetGlobal("FaceSeven","AR1512",1)~ GOTO 21
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceEight","AR1512",0)~ THEN 
DO ~SetGlobal("FaceEight","AR1512",1)~ GOTO 24
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceNine","AR1512",0)~ THEN 
DO ~SetGlobal("FaceNine","AR1512",1)~ GOTO 27
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceTen","AR1512",0)~ THEN 
DO ~SetGlobal("FaceTen","AR1512",1)~ GOTO 30
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceEleven","AR1512",0)~ THEN 
DO ~SetGlobal("FaceEleven","AR1512",1)~ GOTO 33
IF ~GlobalLT("AllTwelve","AR1512",12) Global("FaceTwelve","AR1512",0)~ THEN 
DO ~SetGlobal("FaceTwelve","AR1512",1)~ GOTO 36
END
