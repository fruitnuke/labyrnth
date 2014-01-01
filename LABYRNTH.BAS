 ' This is a very good program by Daniel Boswell


TYPE info1
   start1 AS INTEGER
   start2 AS INTEGER
END TYPE
TYPE info2
   level AS INTEGER
   time AS INTEGER
END TYPE
TYPE info3
   password AS STRING * 4
END TYPE

TYPE levdata
   number1 AS INTEGER
   number2 AS INTEGER
END TYPE

DIM leveldata AS levdata
DIM levelinfo1 AS info1
DIM levelinfo2 AS info2
DIM levelinfo3 AS info3

switch = 1
restart:

CONST position1 = 160
CONST position2 = 225
CONST mmin = 130
CONST nmin = 195

DEFINT A-Z

RESTORE

SCREEN 12

OPTION BASE 1

CLS

DIM map(31, 31)
DIM editmap(31, 31)
DIM block(900)
DIM door1(900)
DIM door2(900)
DIM door3(900)
DIM door4(900)
DIM door5(900)
DIM door6(900)
DIM keys1(900)
DIM keys2(900)
DIM keys3(900)
DIM keys4(900)
DIM keys5(900)
DIM keys6(900)
DIM water(900)
DIM horibridge(900)
DIM vertibridge(900)
DIM planks(900)
DIM trap(900)
DIM trapdoor(900)
DIM onswitch(900)
DIM offswitch(900)
DIM teleport(900)
DIM sprite(900)
DIM clearsquare(900)
DIM portcullis(900)
DIM hammer(900)
DIM stathammer(900)
DIM statlevitate(900)
DIM larrow(900)
DIM rarrow(900)
DIM darrow(900)
DIM uarrow(900)
DIM levitate(900)
DIM sign(900)
DIM mapblock(25)
DIM mapdoor1(25)
DIM mapdoor2(25)
DIM mapdoor3(25)
DIM mapdoor4(25)
DIM mapdoor5(25)
DIM mapdoor6(25)
DIM mapkeys1(25)
DIM mapkeys2(25)
DIM mapkeys3(25)
DIM mapkeys4(25)
DIM mapkeys5(25)
DIM mapkeys6(25)
DIM mapwater(25)
DIM mapbridgehoriz(25)
DIM mapbridgeverti(25)
DIM mapplanks(25)
DIM maptrap(25)
DIM maptrapclosed(25)
DIM mapswitch(25)
DIM mapteleport(25)
DIM mapclearsquare(25)
DIM mapportcullis(25)
DIM mapsprite(25)
DIM maphammer(25)
DIM maprarrow(25)
DIM maplarrow(25)
DIM mapdarrow(25)
DIM mapuarrow(25)
DIM maplevitate(25)
DIM mapexit(25)

chance = 3

CIRCLE (15, 15), 2
PAINT (15, 15)
GET (0, 0)-(30, 30), sprite

LINE (m, n)-(m + 30, 30), 0, BF

LINE (1, 1)-(29, 29), 7, BF
LINE (1, 29)-(1, 1), 15
LINE (1, 1)-(29, 1), 15
LINE (m + 29, 1)-(29, 29), 8
LINE (29, 29)-(1, 29), 8
LINE (m, n)-(30, 30), 0, B
GET (0, 0)-(30, 30), block

LINE (m, n)-(m + 30, 30), 0, BF

FOR a1 = 1 TO 7
SELECT CASE a1
   CASE 1
      colr = 9
   CASE 2
      colr = 2
      GET (0, 0)-(30, 30), door1
   CASE 3
      colr = 4
      GET (0, 0)-(30, 30), door2
   CASE 4
      GET (0, 0)-(30, 30), door3
      colr = 6
   CASE 5
      colr = 8
      GET (0, 0)-(30, 30), door4
   CASE 6
      colr = 14
      GET (0, 0)-(30, 30), door5
   CASE 7
      GET (0, 0)-(30, 30), door6
END SELECT
LINE (1, 1)-(29, 29), 6, BF
CIRCLE (15, 10), 5, 0
PAINT (15, 10), 0
LINE (12, 15)-(9, 24), 0
LINE (9, 24)-(21, 24), 0
LINE (21, 24)-(18, 15), 0
PAINT (17, 21), 0
PSET (20, 18), 6
CIRCLE (15, 10), 1, colr
NEXT a1

LINE (m, n)-(m + 30, 30), 0, BF

FOR a2 = 1 TO 7
SELECT CASE a2
   CASE 1
      colr = 9
   CASE 2
      colr = 2
      GET (0, 0)-(30, 30), keys1
   CASE 3
      colr = 4
      GET (0, 0)-(30, 30), keys2
   CASE 4
      GET (0, 0)-(30, 30), keys3
      colr = 6
   CASE 5
      colr = 8
      GET (0, 0)-(30, 30), keys4
   CASE 6
      colr = 14
      GET (0, 0)-(30, 30), keys5
   CASE 7
      GET (0, 0)-(30, 30), keys6
END SELECT
CIRCLE (15, 11), 5, 7
LINE (15, 15)-(15, 26), 7
LINE (11, 21)-(15, 21), 7
LINE (11, 26)-(15, 26), 7
CIRCLE (15, 11), 1, colr
NEXT a2

LINE (m, n)-(m + 30, 30), 0, BF

LINE (1, 1)-(29, 29), 6, BF
FOR plnks = 0 TO 30 STEP 5
LINE (plnks, 1)-(plnks, 29), 0
NEXT plnks
GET (0, 0)-(30, 30), horibridge

LINE (m, n)-(m + 30, 30), 0, BF

LINE (0, 0)-(30, 30), 9, BF
GET (0, 0)-(30, 30), water

LINE (m, n)-(m + 30, 30), 0, BF

LINE (1, 1)-(29, 29), 6, BF
FOR plnks = 0 TO 30 STEP 5
LINE (1, plnks)-(29, plnks), 0
NEXT plnks
LINE (m, 1)-(m, 30), 0
GET (0, 0)-(30, 30), vertibridge

LINE (m, n)-(m + 30, 30), 0, BF

LINE (5, 20)-(11, 4), 6
LINE (11, 4)-(16, 6), 6
LINE (16, 6)-(12, 17), 6
LINE (12, 17)-(5, 20), 6
PAINT (11, 9), 6
LINE (4, 23)-(26, 13), 6
LINE (26, 13)-(28, 18), 6
LINE (28, 18)-(6, 28), 6
LINE (6, 28)-(4, 23), 6
PAINT (23, 16), 6
LINE (3, 26)-(3, 25), 6
GET (0, 0)-(30, 30), planks

LINE (m, n)-(m + 30, 30), 0, BF

C = 7
q = 14
FOR x = 1 TO 5
CIRCLE (15, 15), q, C
q = q / 2
IF x = 3 THEN C = 8
NEXT x
GET (0, 0)-(30, 30), trap

LINE (m, n)-(m + 30, 30), 0, BF

CIRCLE (15, 15), 14, 6
PAINT (15, 15), 6
FOR plnks = 0 TO 30 STEP 5
LINE (plnks, 1)-(plnks, 29), 0
NEXT plnks
CIRCLE (6, 15), 4, 7
GET (0, 0)-(30, 30), trapdoor

LINE (m, n)-(m + 30, 30), 0, BF

LINE (12, 8)-(18, 22), 15, B
LINE (13, 14)-(17, 20), 7, BF
CIRCLE (15, 20), 4, 4
PAINT (15, 20), 4
GET (0, 0)-(30, 30), onswitch

LINE (m, n)-(m + 30, 30), 0, BF

LINE (12, 8)-(18, 22), 15, B
LINE (13, 17)-(17, 10), 7, BF
CIRCLE (15, 10), 4, 4
PAINT (15, 10), 4
GET (0, 0)-(30, 30), offswitch

LINE (m, n)-(m + 30, 30), 0, BF

CIRCLE (15, 15), 13, 4
PAINT (15, 15), 4
LINE (15, 6)-(23, 22), 0
LINE (23, 22)-(5, 11), 0
LINE (5, 11)-(25, 11), 0
LINE (25, 11)-(7, 22), 0
LINE (7, 22)-(15, 6), 0
GET (0, 0)-(30, 30), teleport

LINE (0, 0)-(30, 30), 0, BF

FOR a3 = 1 TO 2
SELECT CASE a3
   CASE 1
      clr1 = 8
      clr2 = 8
      clr3 = 8
   CASE 2
      GET (0, 0)-(30, 30), stathammer
      clr1 = 6
      clr2 = 7
      clr3 = 15
END SELECT
LINE (14, 2)-(15, 26), clr1, B
LINE (8, 4)-(21, 7), clr2, BF
LINE (8, 3)-(21, 3), clr3
LINE (8, 8)-(21, 8), 8
PSET (8, 4), clr3
PSET (21, 7), 8
NEXT a3
GET (0, 0)-(30, 30), hammer

LINE (0, 0)-(30, 30), 0, BF

LINE (1, 14)-(11, 4), 4
LINE (11, 4)-(11, 10), 4
LINE (11, 10)-(27, 10), 4
LINE (27, 10)-(27, 18), 4
LINE (27, 18)-(11, 18), 4
LINE (11, 18)-(11, 24), 4
LINE (11, 24)-(1, 14), 4
GET (0, 0)-(30, 30), larrow

LINE (0, 0)-(30, 30), 0, BF

LINE (3, 10)-(18, 18), 4, B
LINE (18, 19)-(18, 11), 0
LINE (18, 10)-(18, 4), 4
LINE (18, 4)-(28, 14), 4
LINE (28, 14)-(18, 24), 4
LINE (18, 24)-(18, 18), 4
GET (0, 0)-(30, 30), rarrow

LINE (0, 0)-(30, 30), 0, BF

LINE (10, 2)-(19, 18), 4, B
LINE (11, 18)-(18, 18), 0
LINE (19, 18)-(25, 18), 4
LINE (25, 18)-(15, 28), 4
LINE (14, 28)-(4, 18), 4
LINE (4, 18)-(10, 18), 4
GET (0, 0)-(30, 30), darrow

LINE (0, 0)-(30, 30), 0, BF

LINE (10, 27)-(18, 12), 4, B
LINE (11, 12)-(17, 12), 0
LINE (10, 12)-(4, 12), 4
LINE (4, 12)-(14, 2), 4
LINE (14, 2)-(24, 12), 4
LINE (24, 12)-(18, 12), 4
GET (0, 0)-(30, 30), uarrow

LINE (0, 0)-(30, 30), 0, BF

LINE (9, 2)-(3, 21), 1
LINE (3, 21)-(3, 25), 1
LINE (3, 25)-(19, 25), 1
LINE (3, 21)-(19, 21), 1
LINE (19, 21)-(25, 2), 1
LINE (25, 2)-(9, 2), 1
LINE (19, 25)-(25, 6), 1
LINE (4, 22)-(18, 24), 15, BF
PAINT (16, 5), 1
PSET (13, 4), 14
PSET (12, 4), 14
PSET (11, 5), 14
PSET (11, 6), 14
PSET (12, 7), 14
PSET (11, 8), 14
PSET (10, 8), 14
PSET (13, 8), 14
PSET (14, 8), 14
PSET (14, 9), 14
PSET (13, 9), 14
PSET (12, 9), 14
PSET (12, 10), 14
PSET (11, 11), 14
LINE (13, 11)-(15, 11), 14
LINE (13, 11)-(13, 14), 14
PSET (14, 12), 14
PSET (14, 14), 14
LINE (16, 13)-(14, 19), 14
LINE (18, 15)-(16, 20), 14
LINE (19, 23)-(25, 4)
GET (0, 0)-(30, 30), levitate

LINE (0, 0)-(30, 30), 0, BF

LINE (9, 2)-(3, 21), 8
LINE (3, 21)-(3, 25), 8
LINE (3, 25)-(19, 25), 8
LINE (19, 25)-(25, 6), 8
LINE (25, 6)-(25, 2), 8
LINE (25, 2)-(9, 2), 8
PAINT (15, 15), 8
GET (0, 0)-(30, 30), statlevitate

COLOR 13
PRINT " E X "
PRINT " I T "
GET (4, 0)-(34, 30), sign
LINE (4, 0)-(34, 30), 15, BF
PUT (4, 0), sign, PRESET
LINE (4, 0)-(34, 30), 2, B
GET (4, 0)-(34, 30), sign
COLOR 15

LINE (0, 0)-(35, 35), 0, BF

GET (0, 0)-(29, 29), clearsquare

GET (1, 1)-(5, 5), mapclearsquare

LINE (1, 1)-(5, 5), 7, BF
LINE (1, 5)-(1, 1), 15
LINE (1, 1)-(5, 1), 15
LINE (5, 1)-(5, 5), 8
LINE (5, 5)-(1, 5), 8
GET (1, 1)-(5, 5), mapblock

PUT (1, 1), mapclearsquare, PSET

FOR a3 = 1 TO 7
SELECT CASE a3
   CASE 1
      colr = 9
   CASE 2
      colr = 2
      GET (1, 1)-(5, 5), mapdoor1
   CASE 3
      colr = 4
      GET (1, 1)-(5, 5), mapdoor2
   CASE 4
      GET (1, 1)-(5, 5), mapdoor3
      colr = 6
   CASE 5
      colr = 8
      GET (1, 1)-(5, 5), mapdoor4
   CASE 6
      colr = 14
      GET (1, 1)-(5, 5), mapdoor5
   CASE 7
      GET (1, 1)-(5, 5), mapdoor6
END SELECT
LINE (1, 1)-(4, 4), colr, B
NEXT a3

PUT (1, 1), mapclearsquare, PSET

FOR a4 = 1 TO 7
SELECT CASE a4
   CASE 1
      colr = 9
   CASE 2
      colr = 2
      GET (1, 1)-(5, 5), mapkeys1
   CASE 3
      colr = 4
      GET (1, 1)-(5, 5), mapkeys2
   CASE 4
      GET (1, 1)-(5, 5), mapkeys3
      colr = 6
   CASE 5
      colr = 8
      GET (1, 1)-(5, 5), mapkeys4
   CASE 6
      colr = 14
      GET (1, 1)-(5, 5), mapkeys5
   CASE 7
      GET (1, 1)-(5, 5), mapkeys6
END SELECT
LINE (2, 1)-(2, 5), colr
LINE (3, 3)-(5, 1), colr
LINE (3, 3)-(5, 5), colr
NEXT a4

PUT (1, 1), mapclearsquare, PSET

LINE (1, 1)-(5, 5), 9, BF
GET (1, 1)-(5, 5), mapwater

LINE (1, 1)-(5, 5), 6, BF
LINE (2, 1)-(2, 5), 0
LINE (4, 1)-(4, 5), 0
GET (1, 1)-(5, 5), mapbridgehoriz

LINE (1, 1)-(5, 5), 6, BF
LINE (1, 2)-(5, 2), 0
LINE (1, 4)-(5, 4), 0
GET (1, 1)-(5, 5), mapbridgeverti

PUT (1, 1), mapclearsquare, PSET

LINE (2, 1)-(4, 3), 6, B
LINE (2, 4)-(2, 5), 6
GET (1, 1)-(5, 5), mapplanks

PUT (1, 1), mapclearsquare, PSET

CIRCLE (3, 3), 2
PSET (3, 3)
GET (1, 1)-(5, 5), maptrap

PUT (1, 1), mapclearsquare, PSET

CIRCLE (3, 3), 2
LINE (2, 2)-(4, 4), 6, BF
GET (1, 1)-(5, 5), maptrapclosed

PUT (1, 1), mapclearsquare, PSET

LINE (2, 2)-(4, 4), , B
PSET (3, 3), 4
GET (1, 1)-(5, 5), mapswitch

PUT (1, 1), mapclearsquare, PSET

LINE (2, 1)-(3, 1), 4
LINE (4, 2)-(4, 3), 4
LINE (2, 4)-(3, 4), 4
LINE (1, 2)-(1, 3), 4
LINE (2, 2)-(3, 3), 4
GET (1, 1)-(5, 5), mapteleport

PUT (1, 1), mapclearsquare, PSET

LINE (1, 1)-(5, 5), , B
LINE (3, 1)-(3, 5)
LINE (1, 3)-(5, 3)
GET (1, 1)-(5, 5), mapportcullis

PUT (1, 1), mapclearsquare, PSET
CIRCLE (3, 3), 1
PSET (3, 3)
GET (1, 1)-(5, 5), mapsprite

PUT (1, 1), mapclearsquare, PSET

LINE (1, 1)-(5, 1), 7
LINE (3, 2)-(3, 5), 6
GET (1, 1)-(5, 5), maphammer

PUT (1, 1), mapclearsquare, PSET

LINE (1, 3)-(5, 3), 4
LINE (5, 3)-(3, 1), 4
LINE (5, 3)-(3, 5), 4
GET (1, 1)-(5, 5), maprarrow

PUT (1, 1), mapclearsquare, PSET

LINE (1, 3)-(5, 3), 4
LINE (1, 3)-(3, 1), 4
LINE (1, 3)-(3, 5), 4
GET (1, 1)-(5, 5), maplarrow

PUT (1, 1), mapclearsquare, PSET

LINE (3, 1)-(3, 5), 4
LINE (3, 5)-(5, 3), 4
LINE (3, 5)-(1, 3), 4
GET (1, 1)-(5, 5), mapdarrow

PUT (1, 1), mapclearsquare, PSET

LINE (3, 1)-(3, 5), 4
LINE (3, 1)-(1, 3), 4
LINE (3, 1)-(5, 3), 4
GET (1, 1)-(5, 5), mapuarrow

LINE (1, 1)-(5, 5), 9, BF
LINE (2, 1)-(4, 1), 14
LINE (2, 3)-(4, 3), 14
LINE (2, 5)-(4, 5), 14
PSET (1, 2), 14
PSET (5, 4), 14
GET (1, 1)-(5, 5), maplevitate

LINE (1, 1)-(5, 5), , BF
LINE (2, 2)-(4, 4), 2, BF
GET (1, 1)-(5, 5), mapexit

LINE (1, 1)-(5, 5), 0, BF

num = 1
e = 1

OPEN "lablevel.dat" FOR RANDOM AS #1 LEN = 4

reseat:
SCREEN 12
CLS
PRINT "AT THE PROMPT TYPE IN:"
PRINT "    'START' TO START THE GAME AT LEVEL 1"
PRINT "    'PASSWORD' TO ENTER IN A LEVEL PASSWORD"
PRINT "    'QUIT' TO QUIT"
PRINT "    'EDIT' TO START THE LEVEL EDITOR"
INPUT ""; pass$
IF UCASE$(pass$) = "START" THEN GOTO nextlevel
IF UCASE$(pass$) = "QUIT" THEN END
IF UCASE$(pass$) = "EDIT" THEN GOTO editor
IF UCASE$(pass$) <> "PASSWORD" THEN GOTO reseat

password:
CLS
INPUT "password"; upassword$
nums = 3
endfile = LOF(1) / 2
DO
GET #1, nums, levelinfo3
IF levelinfo3.password = upassword$ THEN
   num = nums - 2
   yes = 1
   levnum = nums
   cont = 1
END IF
nums = nums + 454
IF cont = 0 THEN
   levelnum = levelnum + 1
END IF
IF nums > endfile THEN EXIT DO
LOOP
plevel = levnum / 454 + 1
IF yes <> 1 THEN
   PRINT "access denied"
   SLEEP 1
   GOTO reseat
   levelnum = 0
ELSEIF yes = 1 THEN
   PRINT "password accepted:"; plevel
END IF
cont = 0

nextlevel:
num = levelnum * 454 + 1
blks1 = 1
blks2 = 1
GET #1, num, levelinfo1
cord1 = levelinfo1.start1
cord2 = levelinfo1.start2
num = num + 1
GET #1, num, levelinfo2
level = levelinfo2.level
ltime = levelinfo2.time
num = num + 1
GET #1, num, levelinfo3
password$ = levelinfo3.password
FOR x = 1 TO 30
FOR y = 1 TO 15
num = num + 1
GET #1, num, leveldata
map(x, e) = leveldata.number1
e = e + 1
map(x, e) = leveldata.number2
e = e + 1
IF e > 30 THEN e = 1
NEXT y
NEXT x

startgame:
max1 = 30
max2 = 30
CLS
LOCATE 25, 44
PRINT "CHANCES:"
LOCATE 27, 47
PRINT chance
LINE (127, 192)-(222, 287), , B
'frame
LINE (0, 0)-(1, 460), 15, B
LINE (0, 0)-(640, 1), 15, B
LINE (2, 2)-(637, 458), 7, B
LINE (3, 3)-(636, 457), 7, B
LINE (638, 2)-(640, 460), 8, BF
LINE (2, 459)-(640, 460), 8, B
LINE (4, 374)-(636, 375), 7, B
LINE (6, 376)-(634, 377), 8, B
LINE (4, 455)-(635, 456), 15, B
LINE (150, 376)-(151, 457), 7, B
LINE (300, 376)-(301, 457), 7, B
LINE (450, 376)-(451, 457), 7, B
LINE (4, 376)-(5, 454), 8, B
LINE (152, 378)-(153, 454), 8, B
LINE (302, 378)-(303, 454), 8, B
LINE (452, 376)-(453, 454), 8, B
LINE (148, 376)-(149, 454), 15, B
LINE (298, 376)-(299, 454), 15, B
LINE (634, 376)-(635, 454), 15, B
LINE (448, 376)-(449, 454), 15, B
LINE (4, 4)-(5, 371), 8, B
LINE (4, 4)-(633, 5), 8, B
LINE (634, 4)-(635, 373), 15, B
LINE (4, 372)-(633, 373), 15, B
PSET (4, 372), 8
PSET (634, 4), 8
PSET (1, 460), 8
PSET (639, 1), 8
PSET (4, 455), 8
PSET (148, 376), 8
PSET (152, 455), 8
PSET (298, 376), 8
PSET (302, 455), 8
PSET (634, 376), 8
PSET (448, 376), 8
PSET (452, 455), 8
PUT (480, 400), stathammer, PSET
PUT (560, 400), statlevitate, PSET
blks1 = cord1
blks2 = cord2
mp1 = 405 + (blks2 * 5)
mp2 = 165 + (blks1 * 5)
GOSUB showobject
min = 10
starttime! = TIMER
LOCATE 25, 27
PRINT "TIME:"
GOTO scrolling

'**********start time loop here ************
DO

playgame:
IF useham = 1 THEN golt = golt + 1
tloop:
nee = 0
repeat:
FOR k = 1 TO 1
NEXT k
changer = 0



user$ = INKEY$
  

SELECT CASE user$
   CASE CHR$(0) + "H"
      GOTO scrollup
   CASE CHR$(0) + "P"
      GOTO scrolldown
   CASE CHR$(0) + "K"
      GOTO scrollleft
   CASE CHR$(0) + "M"
      GOTO scrollright
   CASE "d"
      GOSUB dropkey
   CASE "q"
      GOTO quit
   CASE "f"
      GOSUB hammer
      GOTO playgame
   CASE "s"
      GOTO spell
   CASE "g"
      GOSUB keys
      GOTO scrolling
   CASE "p"
      GOSUB pause
   CASE ELSE
      nee = 1
END SELECT
GOTO scrolling
scrollup:
a = blks1 - 3
B = blks2 - 2
IF map(a, B) = 1 AND useham <> 1 THEN GOTO playgame
IF (map(a, B) >= 2 AND map(a, B) <= 7) AND useham <> 1 THEN GOSUB door
IF map(a, B) = 43 THEN pn = 1
blks1 = blks1 - 4
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 20
GOTO scrolling

scrolldown:
a = blks1 - 1
B = blks2 - 2
IF map(a, B) = 1 AND useham <> 1 THEN GOTO playgame
IF (map(a, B) >= 2 AND map(a, B) <= 7) AND useham <> 1 THEN GOSUB door
IF map(a, B) = 43 THEN pn = 2
blks1 = blks1 - 2
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 10
GOTO scrolling

scrollleft:
a = blks1 - 2
B = blks2 - 3
IF map(a, B) = 1 AND useham <> 1 THEN GOTO playgame
IF (map(a, B) >= 2 AND map(a, B) <= 7) AND useham <> 1 THEN GOSUB door
IF map(a, B) = 43 THEN pn = 3
blks1 = blks1 - 3
blks2 = blks2 - 4
mp1 = mp1 - 20
mp2 = mp2 - 15
GOTO scrolling

scrollright:
a = blks1 - 2
B = blks2 - 1
IF map(a, B) = 1 AND useham <> 1 THEN GOTO playgame
IF (map(a, B) >= 2 AND map(a, B) <= 7) AND useham <> 1 THEN GOSUB door
IF map(a, B) = 43 THEN pn = 4
blks1 = blks1 - 3
blks2 = blks2 - 2
mp1 = mp1 - 10
mp2 = mp2 - 15
GOTO scrolling

scrolling:
realtime! = TIMER
calctime! = realtime! - starttime!
fintime! = ltime - calctime!
LOCATE 27, 28
PRINT USING "### "; fintime!
IF fintime! <= 0 THEN END
IF nee = 1 THEN GOTO tloop

m = mmin
n = nmin
FOR blks3 = blks1 TO blks1 + 2
   FOR blks4 = blks2 TO blks2 + 2
      SELECT CASE map(blks3, blks4)
         CASE 0
            PUT (m, n), clearsquare, PSET
            PUT (mp1, mp2), mapclearsquare, PSET
         CASE 1
            PUT (m, n), block, PSET
            PUT (mp1, mp2), mapblock, PSET
         CASE 2 TO 7
            SELECT CASE map(blks3, blks4)
               CASE 2
                  PUT (m, n), door1, PSET
                  PUT (mp1, mp2), mapdoor1, PSET
               CASE 3
                  PUT (m, n), door2, PSET
                  PUT (mp1, mp2), mapdoor2, PSET
               CASE 4
                  PUT (m, n), door3, PSET
                  PUT (mp1, mp2), mapdoor3, PSET
               CASE 5
                  PUT (m, n), door4, PSET
                  PUT (mp1, mp2), mapdoor4, PSET
               CASE 6
                  PUT (m, n), door5, PSET
                  PUT (mp1, mp2), mapdoor5, PSET
               CASE 7
                  PUT (m, n), door6, PSET
                  PUT (mp1, mp2), mapdoor6, PSET
            END SELECT
         CASE 8 TO 13
            SELECT CASE map(blks3, blks4)
               CASE 8
                  PUT (m, n), keys1, PSET
                  PUT (mp1, mp2), mapkeys1, PSET
               CASE 9
                  PUT (m, n), keys2, PSET
                  PUT (mp1, mp2), mapkeys2, PSET
               CASE 10
                  PUT (m, n), keys3, PSET
                  PUT (mp1, mp2), mapkeys3, PSET
               CASE 11
                  PUT (m, n), keys4, PSET
                  PUT (mp1, mp2), mapkeys4, PSET
               CASE 12
                  PUT (m, n), keys5, PSET
                  PUT (mp1, mp2), mapkeys5, PSET
               CASE 13
                  PUT (m, n), keys6, PSET
                  PUT (mp1, mp2), mapkeys6, PSET
            END SELECT
         CASE 14
            PUT (m, n), horibridge, PSET
            PUT (mp1, mp2), mapbridgehoriz, PSET
         CASE 15
            PUT (m, n), water, PSET
            PUT (mp1, mp2), mapwater, PSET
         CASE 16
            PUT (m, n), vertibridge, PSET
            PUT (mp1, mp2), mapbridgeverti, PSET
         CASE 17
            PUT (m, n), planks, PSET
            PUT (mp1, mp2), mapplanks, PSET
         CASE 18
            PUT (m, n), trap, PSET
            PUT (mp1, mp2), maptrap, PSET
         CASE 19
            PUT (m, n), trapdoor, PSET
            PUT (mp1, mp2), maptrap, PSET
         CASE 20
            PUT (m, n), onswitch, PSET
            PUT (mp1, mp2), mapswitch, PSET
         CASE 21
            PUT (m, n), offswitch, PSET
            PUT (mp1, mp2), mapswitch, PSET
         CASE 22 TO 42
            PUT (m, n), teleport, PSET
            PUT (mp1, mp2), mapteleport, PSET
         CASE 43
            PUT (m, n), sign, PSET
            PUT (mp1, mp2), mapexit, PSET
         CASE 44
            PUT (m, n), hammer, PSET
            PUT (mp1, mp2), maphammer, PSET
         CASE 45
            PUT (m, n), larrow, PSET
            PUT (mp1, mp2), mapclearsquare, PSET
         CASE 46
            PUT (m, n), rarrow, PSET
            PUT (mp1, mp2), mapclearsquare, PSET
         CASE 47
            PUT (m, n), darrow, PSET
            PUT (mp1, mp2), mapclearsquare, PSET
         CASE 48
            PUT (m, n), uarrow, PSET
            PUT (mp1, mp2), mapclearsquare, PSET
         CASE 49 TO 56
            PUT (mp1, mp2), mapclearsquare, PSET
            PUT (m, n), clearsquare, PSET
         CASE 57
            PUT (m, n), levitate, PSET
            PUT (mp1, mp2), maplevitate, PSET
      END SELECT
      m = m + 30
      mp1 = mp1 + 5
   cnt = cnt + 1
   IF cnt = 5 THEN PUT (position1, position2), sprite, OR
   IF cnt = 5 THEN PUT (mp1 - 5, mp2), mapsprite, PSET
   NEXT blks4
   n = n + 30
   mp2 = mp2 + 5
   mp1 = mp1 - 15
   m = mmin
NEXT blks3
cnt = 0
blks1 = blks1 + 3
blks2 = blks2 + 3
PUT (mp1 + 5, mp2 - 10), mapsprite, PSET
mp1 = mp1 + 15
IF changer = 1 THEN GOTO playgame
'check
C = blks1 - 2
d = blks2 - 2
IF golt > 0 AND golt < 6 THEN GOTO delblocks
IF map(C, d) = 15 AND object = 17 THEN GOSUB makebridge
SELECT CASE map(C, d)
        CASE 15
           IF fly <> 1 THEN GOTO quit
        CASE 18
           IF fly <> 1 THEN GOTO quit
        CASE 21, 20
           IF fly = 1 THEN GOTO playgame
           GOSUB changetrap
        CASE 22 TO 42
           telno = map(C, d)
           GOSUB teleport
        CASE 49 TO 56
           GOSUB dropport
        CASE 43
           GOTO congratulations
END SELECT

LOOP

keys:
C = blks1 - 2
d = blks2 - 2
blks1 = blks1 - 3
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 15
IF map(C, d) >= 8 AND map(C, d) <= 13 THEN GOTO continue
IF map(C, d) = 17 OR map(C, d) = 44 OR map(C, d) = 57 THEN GOTO continue
RETURN
continue:
IF object <> 0 THEN GOTO playgame
object = map(C, d)
map(C, d) = 0
m = 160
n = 225
PUT (m, n), clearsquare, PSET
GOSUB showobject
PUT (position1, position2), sprite, OR
RETURN

dropkey:
C = blks1 - 2
d = blks2 - 2
blks1 = blks1 - 3
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 15
IF map(C, d) < 0 OR (map(C, d) > 0 AND map(C, d) < 49) OR map(C, d) > 56 THEN RETURN
IF object = 0 THEN RETURN
IF object = 57 AND fly = 1 THEN GOSUB endfly
map(C, d) = object
m = 160
n = 225
SELECT CASE object
   CASE 8
      PUT (m, n), keys1, PSET
   CASE 9
      PUT (m, n), keys2, PSET
   CASE 10
      PUT (m, n), keys3, PSET
   CASE 11
      PUT (m, n), keys4, PSET
   CASE 12
      PUT (m, n), keys5, PSET
   CASE 13
      PUT (m, n), keys6, PSET
   CASE 17
      PUT (m, n), planks, PSET
   CASE 44
      PUT (m, n), hammer, PSET
   CASE 57
      PUT (m, n), levitate, PSET
END SELECT
object = 0
GOSUB showobject
 PUT (position1, position2), sprite, OR
RETURN

door:
IF object < 8 AND object > 13 THEN GOTO playgame
IF map(a, B) <> object - 6 THEN GOTO playgame
map(a, B) = 0
object = 0
GOSUB showobject
RETURN

makebridge:
object = 0
m = 160
n = 225
mp1 = mp1 - 10
mp2 = mp2 - 10
SELECT CASE user$
   CASE CHR$(0) + "H", CHR$(0) + "P"
      PUT (m, n), vertibridge, PSET
      PUT (mp1, mp2), mapbridgeverti, PSET
      map(C, d) = 16
   CASE CHR$(0) + "M", CHR$(0) + "K"
      PUT (m, n), horibridge, PSET
      PUT (mp1, mp2), mapbridgehoriz, PSET
      map(C, d) = 14
END SELECT
 PUT (position1, position2), sprite, OR
mp1 = mp1 + 10
mp2 = mp2 + 10
GOSUB showobject
RETURN


changetrap:
SELECT CASE map(C, d)
   CASE 20
      map(C, d) = 21
   CASE 21
      map(C, d) = 20
END SELECT
FOR cs1 = 1 TO max1
   FOR cs2 = 1 TO max2
      SELECT CASE map(cs1, cs2)
         CASE 18
            map(cs1, cs2) = 19
         CASE 19
            map(cs1, cs2) = 18
      END SELECT
   NEXT cs2
NEXT cs1
blks1 = blks1 - 3
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 15
changer = 1
PUT (position1, position2), sprite, OR
GOTO scrolling
RETURN

teleport:
FOR ft1 = 1 TO max1
   FOR ft2 = 1 TO max2
      IF map(ft1, ft2) = telno + 10 AND (map(ft1, ft2) >= 32 AND map(ft1, ft2) <= 42) THEN
      GOSUB teleffects
      blks1 = ft1 - 1
      blks2 = ft2 - 1
      mp1 = 405 + (blks2 * 5)
      mp2 = 165 + (blks1 * 5)
      changer = 1
      GOTO scrolling
      ELSEIF map(ft1, ft2) = telno - 10 AND (map(ft1, ft2) >= 22 AND map(ft1, ft2) <= 31) THEN
      GOSUB teleffects
      blks1 = ft1 - 1
      blks2 = ft2 - 1
      mp1 = 405 + (blks2 * 5)
      mp2 = 165 + (blks1 * 5)
      changer = 1
      GOTO scrolling
      END IF
   NEXT ft2
NEXT ft1
RETURN

dropport:
blks1 = blks1 - 3
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 15
SELECT CASE map(C, d)
CASE 49
map(C - 1, d - 1) = 1
CASE 50
map(C - 1, d) = 1
CASE 51
map(C - 1, d + 1) = 1
CASE 52
map(C, d + 1) = 1
CASE 53
map(C + 1, d + 1) = 1
CASE 54
map(C + 1, d) = 1
CASE 55
map(C + 1, d - 1) = 1
CASE 56
map(C, d - 1) = 1
END SELECT
changer = 1
GOTO scrolling
RETURN

hammer:
IF object <> 44 THEN RETURN
useham = 1
PUT (480, 400), hammer, PSET
LOCATE 26, 64
PRINT ":"; 5
RETURN

endham:
useham = 0
golt = 0
object = 0
PUT (480, 400), stathammer, PSET
LOCATE 26, 64
PRINT "   "
GOSUB showobject
RETURN

delblocks:
IF map(C, d) < 14 OR map(C, d) = 17 THEN map(C, d) = 0
IF map(C, d) = 15 OR map(C, d) = 18 THEN END
changer = 1
blks1 = blks1 - 3
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 15
LOCATE 26, 64
PRINT ":"; 5 - golt
IF useham = 1 AND golt = 5 THEN GOSUB endham
GOTO scrolling

spell:
IF object <> 57 THEN GOTO playgame
fly = 1
PUT (560, 400), levitate, PSET
GOTO playgame

endfly:
fly = 0
object = 0
PUT (560, 400), statlevitate, PSET
GOSUB showobject
RETURN


quit:
chance = chance - 1
IF chance = 0 THEN
   LOCATE 27, 47
   PRINT chance
   chance = 3
   GOTO reseat
END IF
num = num - 452
GOTO nextlevel

teleffects:
PUT (mp1 - 10, mp2 - 10), mapteleport, PSET
FOR at = 1 TO 60
   CIRCLE (175, 240), at, 0
NEXT at
LINE (127, 192)-(222, 287), , B
RETURN

congratulations:
levelnum = levelnum + 1
GOTO nextlevel

showobject:
LOCATE 25, 7
PRINT "OBJECT="
SELECT CASE object
   CASE 0
      PUT (60, 410), clearsquare, PSET
   CASE 8
      PUT (60, 410), keys1, PSET
   CASE 9
      PUT (60, 410), keys2, PSET
   CASE 10
      PUT (60, 410), keys3, PSET
   CASE 11
      PUT (60, 410), keys4, PSET
   CASE 12
      PUT (60, 410), keys5, PSET
   CASE 13
      PUT (60, 410), keys6, PSET
   CASE 17
      PUT (60, 410), planks, PSET
   CASE 44
      PUT (60, 410), hammer, PSET
   CASE 57
      PUT (60, 410), levitate, PSET
END SELECT
RETURN

pause:
blks1 = blks1 - 3
blks2 = blks2 - 3
mp1 = mp1 - 15
mp2 = mp2 - 15
pausetime! = TIMER
DO
pause$ = INKEY$
pauseing! = TIMER
makenew! = pausetime! + pauseing!
LOOP UNTIL pause$ <> ""
starttime! = starttime! + makenew!
LOCATE 27, 28
PRINT USING "### "; fintime!
RETURN


editor:
SCREEN 9
CLS
ed1 = 1
ed2 = 1
v = 100
xpos = 100
xdel = 100
cpos1 = xpos
cpos2 = ypos
FOR bdown = 1 TO 30
FOR bacross = 1 TO 30
LINE (v, w)-(v + 6, w + 6), , B
v = v + 6
NEXT bacross
v = 100
w = w + 6
NEXT bdown
startedit:
IF xpos < cpos1 THEN xpos = cpos1
IF ypos < cpos2 THEN ypos = cpos2
IF xpos > cpos1 + (6 * 29) THEN xpos = cpos1 + (6 * 29)
IF ypos > cpos2 + (6 * 29) THEN ypos = cpos2 + (6 * 29)
LINE (xdel, ydel)-(xdel + 6, ydel + 6), , B
LINE (xpos, ypos)-(xpos + 6, ypos + 6), 4, B
IF ed1 < 1 THEN ed1 = 1
IF ed2 < 1 THEN ed2 = 1
IF ed1 > 30 THEN ed1 = 30
IF ed2 > 30 THEN ed2 = 30
DO
eduser$ = INKEY$
LOOP UNTIL eduser$ <> ""
SELECT CASE UCASE$(eduser$)
   CASE CHR$(0) + "H"
      ydel = ypos
      xdel = xpos
      ypos = ypos - 6
      ed1 = ed1 - 1
      GOTO startedit
   CASE CHR$(0) + "P"
      ydel = ypos
      xdel = xpos
      ypos = ypos + 6
      ed1 = ed1 + 1
      GOTO startedit
   CASE CHR$(0) + "K"
      ydel = ypos
      xdel = xpos
      xpos = xpos - 6
      ed2 = ed2 - 1
      GOTO startedit
   CASE CHR$(0) + "M"
      ydel = ypos
      xdel = xpos
      xpos = xpos + 6
      ed2 = ed2 + 1
      GOTO startedit
   CASE "B"
      PUT (xpos + 1, ypos + 1), mapblock, PSET
      editmap(ed1, ed2) = 1
      GOTO startedit
   CASE "G"
      PUT (xpos + 1, ypos + 1), mapclearsquare, PSET
      editmap(ed1, ed2) = 0
      GOTO startedit
   CASE "U"
      PUT (xpos + 1, ypos + 1), mapbridgehoriz, PSET
      editmap(ed1, ed2) = 14
      GOTO startedit
   CASE "V"
      PUT (xpos + 1, ypos + 1), mapbridgeverti, PSET
      editmap(ed1, ed2) = 16
      GOTO startedit
   CASE "W"
      PUT (xpos + 1, ypos + 1), mapwater, PSET
      editmap(ed1, ed2) = 15
      GOTO startedit
   CASE "E"
      PUT (xpos + 1, ypos + 1), mapplanks, PSET
      editmap(ed1, ed2) = 17
      GOTO startedit
   CASE "C"
      PUT (xpos + 1, ypos + 1), maptrap, PSET
      editmap(ed1, ed2) = 18
      GOTO startedit
   CASE "D"
      PUT (xpos + 1, ypos + 1), maptrapclosed, PSET
      editmap(ed1, ed2) = 19
      GOTO startedit
   CASE "I"
      PUT (xpos + 1, ypos + 1), mapswitch, PSET
      editmap(ed1, ed2) = 20
      GOTO startedit
   CASE "H"
      PUT (xpos + 1, ypos + 1), maphammer, PSET
      editmap(ed1, ed2) = 44
      GOTO startedit
   CASE "L"
      PUT (xpos + 1, ypos + 1), maplevitate, PSET
      editmap(ed1, ed2) = 57
      GOTO startedit
   CASE "J"
      PUT (xpos + 1, ypos + 1), mapexit, PSET
      editmap(ed1, ed2) = 43
      GOTO startedit
   CASE "Q"
      GOTO reseat
   CASE "A"
      LOCATE 18, 1
      PRINT "L:left arrow"
      PRINT "R:right arrow"
      PRINT "U:up arrow"
      PRINT "D:down arrow"
arrowredo: INPUT "select a direction"; arrow$
         SELECT CASE UCASE$(arrow$)
            CASE "L"
               PUT (xpos + 1, ypos + 1), maplarrow, PSET
               editmap(ed1, ed2) = 45
            CASE "R"
               PUT (xpos + 1, ypos + 1), maprarrow, PSET
               editmap(ed1, ed2) = 46
            CASE "D"
               PUT (xpos + 1, ypos + 1), mapdarrow, PSET
               editmap(ed1, ed2) = 47
            CASE "U"
               PUT (xpos + 1, ypos + 1), mapuarrow, PSET
               editmap(ed1, ed2) = 48
            CASE ELSE
               GOTO arrowredo
         END SELECT
         LINE (1, 200)-(400, 350), 0, BF
         GOTO startedit
   CASE "F"
      LOCATE 16, 1
      PRINT "1:blue door"
      PRINT "2:green door"
      PRINT "3:red door"
      PRINT "4:brown door"
      PRINT "5:grey door"
      PRINT "6:yellow door"
doorredo: INPUT "select a colour door(1-6)"; door
         SELECT CASE door
            CASE 1
               PUT (xpos + 1, ypos + 1), mapdoor1, PSET
               editmap(ed1, ed2) = 2
            CASE 2
               PUT (xpos + 1, ypos + 1), mapdoor2, PSET
               editmap(ed1, ed2) = 3
            CASE 3
               PUT (xpos + 1, ypos + 1), mapdoor3, PSET
               editmap(ed1, ed2) = 4
            CASE 4
               PUT (xpos + 1, ypos + 1), mapdoor4, PSET
               editmap(ed1, ed2) = 5
            CASE 5
               PUT (xpos + 1, ypos + 1), mapdoor5, PSET
               editmap(ed1, ed2) = 6
            CASE 6
               PUT (xpos + 1, ypos + 1), mapdoor6, PSET
               editmap(ed1, ed2) = 7
            CASE ELSE
               GOTO doorredo
         END SELECT
         LINE (1, 200)-(400, 350), 0, BF
         GOTO startedit
   CASE "K"
      LOCATE 16, 1
      PRINT "1:blue key"
      PRINT "2:green key"
      PRINT "3:red key"
      PRINT "4:brown key"
      PRINT "5:grey key"
      PRINT "6:yellow key"
keyredo: INPUT "select a colour key(1-6)"; keys
         SELECT CASE keys
            CASE 1
               PUT (xpos + 1, ypos + 1), mapkeys1, PSET
               editmap(ed1, ed2) = 8
            CASE 2
               PUT (xpos + 1, ypos + 1), mapkeys2, PSET
               editmap(ed1, ed2) = 9
            CASE 3
               PUT (xpos + 1, ypos + 1), mapkeys3, PSET
               editmap(ed1, ed2) = 10
            CASE 4
               PUT (xpos + 1, ypos + 1), mapkeys4, PSET
               editmap(ed1, ed2) = 11
            CASE 5
               PUT (xpos + 1, ypos + 1), mapkeys5, PSET
               editmap(ed1, ed2) = 12
            CASE 6
               PUT (xpos + 1, ypos + 1), mapkeys6, PSET
               editmap(ed1, ed2) = 13
            CASE ELSE
               GOTO keyredo
         END SELECT
         LINE (1, 200)-(400, 350), 0, BF
         GOTO startedit
   CASE "T"
repeattele3: LOCATE 18, 1
      INPUT "sending or recieving(s/r)"; teleport$
         IF UCASE$(teleport$) = "S" THEN
            LOCATE 18, 1
repeattele: INPUT "Type in the number of the sending teleport(1-10)"; steleport
               SELECT CASE steleport
                  CASE 1
                     editmap(ed1, ed2) = 22
                  CASE 2
                     editmap(ed1, ed2) = 23
                  CASE 3
                     editmap(ed1, ed2) = 24
                  CASE 4
                     editmap(ed1, ed2) = 25
                  CASE 5
                     editmap(ed1, ed2) = 26
                  CASE 6
                     editmap(ed1, ed2) = 27
                  CASE 7
                     editmap(ed1, ed2) = 28
                  CASE 8
                     editmap(ed1, ed2) = 29
                  CASE 9
                     editmap(ed1, ed2) = 30
                  CASE 10
                     editmap(ed1, ed2) = 31
                  CASE ELSE
                     GOTO repeattele
               END SELECT
         ELSEIF UCASE$(teleport$) = "R" THEN
            LOCATE 18, 1
repeattele2: INPUT "Type in the number of the recieving teleport"; rteleport
               SELECT CASE rteleport
                  CASE 1
                     editmap(ed1, ed2) = 32
                  CASE 2
                     editmap(ed1, ed2) = 33
                  CASE 3
                     editmap(ed1, ed2) = 34
                  CASE 4
                     editmap(ed1, ed2) = 35
                  CASE 5
                     editmap(ed1, ed2) = 36
                  CASE 6
                     editmap(ed1, ed2) = 37
                  CASE 7
                     editmap(ed1, ed2) = 38
                  CASE 8
                     editmap(ed1, ed2) = 39
                  CASE 9
                     editmap(ed1, ed2) = 40
                  CASE 10
                     editmap(ed1, ed2) = 41
                  CASE ELSE
                     GOTO repeattele2
               END SELECT
           ELSE
             GOTO repeattele3
           END IF
            PUT (xpos + 1, ypos + 1), mapteleport, PSET
            LINE (1, 200)-(500, 350), 0, BF
            GOTO startedit
   CASE "P"
      LOCATE 18, 1
      INPUT "Type in the number of the square you want the wall to fall in (1-8)"; port
      SELECT CASE port
         CASE 1
            editmap(ed1, ed2) = 49
         CASE 2
            editmap(ed1, ed2) = 50
         CASE 3
            editmap(ed1, ed2) = 51
         CASE 4
            editmap(ed1, ed2) = 52
         CASE 5
            editmap(ed1, ed2) = 53
         CASE 6
            editmap(ed1, ed2) = 54
         CASE 7
            editmap(ed1, ed2) = 55
         CASE 8
            editmap(ed1, ed2) = 56
      END SELECT
      PUT (xpos + 1, ypos + 1), mapportcullis, PSET
      LINE (1, 200)-(640, 350), 0, BF
      GOTO startedit
   CASE "S"
      LOCATE 16, 1
      INPUT "starting positions-x"; levelinfo1.start1
      IF levelinfo1.start1 = 0 THEN GOTO startedit
      INPUT "starting positions-y"; levelinfo1.start2
      INPUT "level"; levelers
      INPUT "time"; levelinfo2.time
      INPUT "password"; levelinfo3.password
      num = ((levelers - 1) * 454) + 1
      PUT #1, num, levelinfo1
      num = num + 1
      levelinfo2.level = levelers
      PUT #1, num, levelinfo2
      num = num + 1
      PUT #1, num, levelinfo3
      ed2 = 0
      FOR ed1 = 1 TO 30
      FOR put2 = 1 TO 15
      ed2 = ed2 + 1
      IF ed2 > 30 THEN ed2 = 1
      leveldata.number1 = editmap(ed1, ed2)
      ed2 = ed2 + 1
      leveldata.number2 = editmap(ed1, ed2)
      num = num + 1
      PUT #1, num, leveldata
      NEXT put2
      NEXT ed1
      LINE (1, 200)-(400, 350), 0, BF
      GOTO startedit
   CASE "O"
      LINE (xpos, ypos)-(xpos + 6, ypos + 6), , B
      LOCATE 16, 1
      INPUT "level"; leveler
      IF leveler = 0 THEN GOTO startedit
      num = ((leveler - 1) * 454) + 4
      ed2 = 0
      FOR ed1 = 1 TO 30
      FOR get2 = 1 TO 15
      GET #1, num, leveldata
      ed2 = ed2 + 1
      IF ed2 > 30 THEN ed2 = 1
      editmap(ed1, ed2) = leveldata.number1
      ed2 = ed2 + 1
      editmap(ed1, ed2) = leveldata.number2
      num = num + 1
      NEXT get2
      NEXT ed1
      xpos = 101
      ypos = 1
      FOR ed1 = 1 TO 30
      FOR ed2 = 1 TO 30
         SELECT CASE editmap(ed1, ed2)
            CASE 0
               PUT (xpos, ypos), mapclearsquare, PSET
            CASE 1
               PUT (xpos, ypos), mapblock, PSET
            CASE 2
               PUT (xpos, ypos), mapdoor1, PSET
            CASE 3
               PUT (xpos, ypos), mapdoor2, PSET
            CASE 4
               PUT (xpos, ypos), mapdoor3, PSET
            CASE 5
               PUT (xpos, ypos), mapdoor4, PSET
            CASE 6
               PUT (xpos, ypos), mapdoor5, PSET
            CASE 7
               PUT (xpos, ypos), mapdoor6, PSET
            CASE 8
               PUT (xpos, ypos), mapkeys1, PSET
            CASE 9
               PUT (xpos, ypos), mapkeys2, PSET
            CASE 10
               PUT (xpos, ypos), mapkeys3, PSET
            CASE 11
               PUT (xpos, ypos), mapkeys4, PSET
            CASE 12
               PUT (xpos, ypos), mapkeys5, PSET
            CASE 13
               PUT (xpos, ypos), mapkeys6, PSET
            CASE 14
               PUT (xpos, ypos), mapbridgehoriz, PSET
            CASE 15
               PUT (xpos, ypos), mapwater, PSET
            CASE 16
               PUT (xpos, ypos), mapbridgeverti, PSET
            CASE 17
               PUT (xpos, ypos), mapplanks, PSET
            CASE 18
               PUT (xpos, ypos), maptrap, PSET
            CASE 19
               PUT (xpos, ypos), maptrapclosed, PSET
            CASE 20, 21
               PUT (xpos, ypos), mapswitch, PSET
            CASE 22 TO 42
               PUT (xpos, ypos), mapteleport, PSET
            CASE 43
               PUT (xpos, ypos), mapexit, PSET
            CASE 44
               PUT (xpos, ypos), maphammer, PSET
            CASE 45
               PUT (xpos, ypos), maplarrow, PSET
            CASE 46
               PUT (xpos, ypos), maprarrow, PSET
            CASE 47
               PUT (xpos, ypos), mapdarrow, PSET
            CASE 48
               PUT (xpos, ypos), mapuarrow, PSET
            CASE 49 TO 56
               PUT (xpos, ypos), mapportcullis, PSET
            CASE 57
               PUT (xpos, ypos), maplevitate, PSET
         END SELECT
         xpos = xpos + 6
         NEXT ed2
         xpos = 101
         ypos = ypos + 6
         NEXT ed1
         xpos = 100
         ypos = 0
         ed1 = 1
         ed2 = 1
         LINE (1, 200)-(400, 350), 0, BF
         GOTO startedit
   CASE "N"
         LINE (xpos, ypos)-(xpos + 6, ypos + 6), , B
         xpos = cpos1
         ypos = cpos2
         FOR ed1 = 1 TO 30
         FOR ed2 = 1 TO 30
            PUT (xpos + 1, ypos + 1), mapclearsquare, PSET
            editmap(ed1, ed2) = 0
            xpos = xpos + 6
         NEXT ed2
            xpos = cpos1
            ypos = ypos + 6
         NEXT ed1
         xpos = cpos1
         ypos = cpos2
         ed1 = 1
         ed2 = 2
         GOTO startedit
   CASE ELSE
      GOTO startedit
END SELECT


