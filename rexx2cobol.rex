$/* REXX */
say "***********************************************************************"
say "**    This script provides quick workarounds to get starter COBOL      **"
say "**    code to get you one step ahead in your development tasks.        **"
say "**    Typing the following provides you the specified COBOL code..:    **"
say "**    Type '1' if you want to generate plain starter cobol skeleton.   **"
say "**    '2' TO SOLVE Y2K PROBLEM WITHOUT USING ANY INTRINSIC FUNCTION    **"
say "**    '3' TO DISPLAY FOUR DIGIT SYSTEM  YEAR IN OLD COMPILERS          **"
say "**    '4' FIND WHAT DAY (SUN/MON) 4 ANY INPUT FRM 01/01/0001 TO 31/12  **"
say "**    '5' SORTING A COBOL TABLE (NOT FILE) WITHIN THE COBOL PROGRAM    **"
say "**    '6' GENERATE RANDOM NUMBERS UP TO A GIVEN LIMIT                  **"
say "**    '7' CREATE & PROCESS A PS/QSAM/SEQUENTIAL FILE IN COBOL          **"
say "**    'Q' if you want to quit the program                              **"
say "***********************************************************************"

quit = "Q"
do while (command \= quit )
    pull command
    if command = "Q" then exit
    if \datatype(command, 'N') then
        do
            say "Please enter a number!!"
        end
    if command = 1 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if  rc = 0 THEN
            row = 0
            hline = '      *-----------------------'
            mline.0 = '       IDENTIFICATION DIVISION.'
            mline.1 = '      *'
            mline.2 = '       PROGRAM-ID. '
            mline.3 = '      *'
            mline.4 = '      *'
            mline.5 = '      * Description :'
            mline.6 = '      *'
            mline.7 = '      * Created on : 'date()
            mline.8 = '      * Created by : '
            mline.9 = '      *            : Userid('')'
            mline.10 = '      *            : Using' '()'
            mline.11 = '      *'
            mline.12 = '      * Called by :'
            mline.13 = '      *'
            mline.14 = '      * Calls :'
            mline.15 = '      * Change Activity :'
            mline.16 = '      *             Copyright of farai.'
            mline.17 = '       ENVIRONMENT DIVISION.'
            mline.18 = '       INPUT-OUTPUT SECTION.'
            mline.19 = '       DATA DIVISION.'
            mline.20 = '       WORKING-STORAGE SECTION.'
            mline.21 = '       LINKAGE SECTION.'
            mline.22 = '       PROCEDURE DIVISION.'
            mline.23 = '       A-MAIN SECTION.'
            mline.24 = '           STOP RUN.'
            mline.25 = '      *           End of '
            QUEUE hline
            QUEUE mline.0
            QUEUE hline
            QUEUE mline.2
            QUEUE hline
            do i = 4 to 16
                QUEUE mline.i
            end
            QUEUE hline
            do i=17 to 24
                QUEUE mline.i
                QUEUE hline
            end
            QUEUE mline.25
            "Execio "Queued()" DISKW outdd (FINIS"
            "FREE FI(outdd)"
            "DELSTACK"
        exit
        end



    else
    if command = 2 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if rc = 0 THEN
        row = 0
        hline =  '      *-----------------------'
        mline.0 = '       IDENTIFICATION DIVISION.'
        mline.1 = '       PROGRAM-ID. MAA.'
        mline.2 = '       DATA DIVISION.'
        mline.3 = '       WORKING-STORAGE SECTION.'
        mline.4 = '       01 YY PIC 99.'
        mline.5 = '       01 YYYY.'
        mline.6 = '           05 Y1 PIC 99 VALUE 19.'
        mline.7 = '           05 Y2 PIC 99 VALUE 00.'
        mline.8 = '       PROCEDURE DIVISION.'
        mline.9 = '       0001.'
        mline.10 = '         ACCEPT YY.'
        mline.11 = '         MOVE YY TO Y2.'
        mline.12 = '         IF YY < 03'
        mline.13 = '              MOVE 20 TO Y1.'
        mline.14 = '         DISPLAY YYYY.'
        mline.15 = '         STOP RUN.'

        QUEUE hline
        do i=0 to 15
            QUEUE mline.i
        end

        "Execio "Queued()" DISKW outdd (FINIS"
        "FREE FI(outdd)"
        "DELSTACK"
    exit
    end


    else
    if command = 3 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if rc = 0 THEN
        row = 0
        hline   = '       *-----------------------'
        mline.0 = 'IDENTIFICATION DIVISION.'
        mline.1 =  '      *TO DISPLAY FOUR DIGIT SYSTEM  YEAR IN OLD COMPILERS*'
        mline.2 =  '      ************ Top of Data ***********************'
        mline.3 =  '       IDENTIFICATION DIVISION.'
        mline.4 =  '       PROGRAM-ID. MAC.'
        mline.5 =  '       DATA DIVISION.'
        mline.6 =  '       WORKING-STORAGE SECTION.'
        mline.7 =  '       01 A.'
        mline.8 =  '          05 A1 PIC 99.'
        mline.9 =  '          05 A2 PIC 99.'
        mline.10 =  '          05 A3 PIC 99.'
        mline.11 = '       01 B.'
        mline.12 = '          05 A1 PIC 9(4).'
        mline.13 = '          05 FILLER PIC X VALUE "/".'
        mline.14 = '          05 A2 PIC 9(2).'
        mline.15 = '          05 FILLER PIC X VALUE "/"".'
        mline.16 = '          05 A3 PIC 9(2).'
        mline.17 = '      PROCEDURE DIVISION.'
        mline.18 = '      MAAC.'
        mline.19 = '        ACCEPT A FROM DATE.'
        mline.20 = '        MOVE CORR A TO B.'
        mline.21 = '        IF NOT (A1 OF A < 10 )'
        mline.22 = '               INSPECT A1 OF B REPLACING FIRST "00" BY "19"'
        mline.23 = '        ELSE'
        mline.24 = '              INSPECT A1 OF B REPLACING FIRST "00" BY "20".'
        mline.25 = '        DISPLAY "CURRENT DATE IS (ISO) :" B.'
        mline.26 = '        STOP RUN.'

        QUEUE hline
        do i=0 to 26
            QUEUE mline.i

        end

        "Execio "Queued()" DISKW outdd (FINIS"
        "FREE FI(outdd)"
        "DELSTACK"
    exit
    end

    else
    if command = 4 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if rc = 0 THEN
        row = 0
        hline =    '      *-----------------------'
        htitle =   ' FIND WHAT DAY IT IS 4 ANY INPUT FRM 01/01/0001 TO 31/12'
        mline.0 =  '       IDENTIFICATION DIVISION.'
        mline.1  = '       PROGRAM-ID. DAYFIND.'
        mline.2  = '       DATA DIVISION.'
        mline.4  = '       WORKING-STORAGE SECTION.'
        mline.5  = '       01 Y PIC 9(4).'
        mline.6  = '       01 M PIC 9(2).'
        mline.7  = '       01 D PIC 9(2).'
        mline.8  = '       01 A PIC 99 VALUE ZERO.'
        mline.9  = '       01 B PIC 9 VALUE ZERO.'
        mline.10 = '       01 C PIC 99 VALUE ZERO.'
        mline.11 = '       01 F VALUE "12060708091011".'
        mline.12 = '          05 FF PIC 99 OCCURS 7.'
        mline.13 = '       01 E PIC 9999 VALUE 0012.'
        mline.14 = '       01 T PIC 9999 VALUE ZERO.'
        mline.15 = '       01 I PIC 9 VALUE 1.'
        mline.16 = '      *****A MCMILLAN PRODUCT. PLEASE DO NOT MISUSE!'
        mline.17 = '       PROCEDURE DIVISION.'
        mline.18 = '       0001A.'
        mline.19 = '           DISPLAY "ENTER 4 DIGIT YEAR >=0001 & <=9999".'
        mline.20 = '           ACCEPT Y.'
        mline.21 = '       0002A.'
        mline.22 = '           DISPLAY "ENTER MONTH(INTEGER)".'
        mline.23 = '           ACCEPT M.'
        mline.24 = '           IF M<1 OR > 12 DISPLAY "INVALID MONTH" GO 0002A.'
        mline.25 = '       0003A.'
        mline.26 = '           DISPLAY "ENTER DATE(INTEGER)".'
        mline.27 = '           ACCEPT D.'
        mline.28 = '           IF D<1 OR > 31 DISPLAY "INVALID DATE" GO 0003A.'
        mline.29 = '           MOVE D TO C.'
        mline.30 = '       0000X.'
        mline.31 = '           COMPUTE A = FF ( I ).'
        mline.32 = '           IF E = Y GO 0000Y.'
        mline.33 = '           ADD 1 TO I.'
        mline.34 = '           IF I > 7 COMPUTE I = 1.'
        mline.35 = '           DIVIDE E BY 4 GIVING T REMAINDER B.'
        mline.36 = '           IF E < Y AND B = 0 ADD 1 TO I.'
        mline.37 = '           IF I > 7 COMPUTE I = 1.'
        mline.38 = '           ADD 1 TO E.'
        mline.39 = '           GO 0000X.'
        mline.40 = '       0000Y.'
        mline.41 = '           IF B = 0 AND M > 2 ADD 1 TO A.'
        mline.42 = '           IF M = 1'
        mline.43 = '             ADD A TO D'
        mline.44 = '             DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.45 = '           ELSE IF M = 2'
        mline.46 = '             ADD A 3 TO D'
        mline.47 = '             DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.48 = '           ELSE IF M = 3'
        mline.49 = '            ADD A 3 TO D'
        mline.50 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.51 = '           ELSE IF M = 4'
        mline.52 = '            SUBTRACT 1 FROM A'
        mline.53 = '            ADD A TO D'
        mline.54 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.55 = '           ELSE IF M = 5'
        mline.56 = '             ADD A 1 TO D'
        mline.57 = '             DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.58 = '           ELSE IF M = 6'
        mline.59 = '             ADD A 4 TO D'
        mline.60 = '             DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.61 = '           ELSE IF M = 7'
        mline.62 = '             SUBTRACT 1 FROM A'
        mline.63 = '             ADD A TO D'
        mline.64 = '             DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.65 = '           ELSE IF M = 8'
        mline.66 = '            ADD A 2 TO D'
        mline.67 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.68 = '           ELSE IF M = 9'
        mline.69 = '            SUBTRACT 2 FROM A'
        mline.70 = '            ADD A TO D'
        mline.71 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.72 = '           ELSE IF M = 10'
        mline.73 = '            ADD A TO D'
        mline.74 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.75 = '           ELSE IF M = 11'
        mline.76 = '            ADD A 3 TO D'
        mline.77 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.78 = '           ELSE IF M = 12'
        mline.79 = '            SUBTRACT 2 FROM A'
        mline.80 = '            ADD A TO D'
        mline.81 = '            DIVIDE D BY 7 GIVING A REMAINDER B'
        mline.82 = '           ELSE DISPLAY "COBOL FAILED".'
        mline.83 = '            DISPLAY Y "/" M "/" C " IS:".'
        mline.84 = '            IF B = 0 DISPLAY "SUNDAY"'
        mline.85 = '           ELSE IF B = 1 DISPLAY "MONDAY"'
        mline.86 = '           ELSE IF B = 2 DISPLAY "TUESDAY"'
        mline.87 = '           ELSE IF B = 3 DISPLAY "WEDNESDAY"'
        mline.88 = '           ELSE IF B = 4 DISPLAY "THURSDAY"'
        mline.89 = '           ELSE IF B = 5 DISPLAY "FRIDAY"'
        mline.90 = '           ELSE IF B = 6 DISPLAY "SATURDAY"'
        mline.91 = '           ELSE DISPLAY "COBOL RUNTIME ERROR".'
        mline.92 = '           STOP RUN.'


        QUEUE hline
        QUEUE htitle
        do i=0 to 92
            QUEUE mline.i

        end
        "Execio "Queued()" DISKW outdd (FINIS"
        "FREE FI(outdd)"
        "DELSTACK"
    exit
    end


    else
    if command = 5 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if rc = 0 THEN
            row = 0
            hline  =   '      *---------------------------------------------'
            htitle  =  '      SORTING A COBOL TABLE  WITHIN THE COBOL PROGRAM*'
            mline.0 =  '      *---------------------------------------------'
            mline.1  = '       IDENTIFICATION DIVISION.'
            mline.2  = '       PROGRAM-ID. SORTTAB.'
            mline.3  = '       DATA DIVISION.'
            mline.4  = '       WORKING-STORAGE SECTION.'
            mline.5  = '       01 A VALUE ZEROES.'
            mline.6  = '               05 AA PIC 99 OCCURS 1 TO 99 DEPENDING N.'
            mline.7  = '       01 N PIC 99.'
            mline.8  = '       01 I PIC 99 VALUE 1.'
            mline.9  = '       01 J PIC 99.'
            mline.10 = '       01 K PIC 99.'
            mline.11 = '       01 T PIC XX.'
            mline.12 = '       PROCEDURE DIVISION.'
            mline.13 = '       001.'
            mline.14 = '              DISPLAY "ENTER NO OF ELEMENTS IN TABLE:".'
            mline.15 = '              ACCEPT N.'
            mline.16 = '              DISPLAY "ENTER ELEMENTS:".'
            mline.17 = '             PERFORM 0002 N TIMES.'
            mline.18 = '        PERFORM 0001 VARYING I FROM 1 BY 1 UNTIL I > N.'
            mline.19 = '              MOVE 1 TO I.'
            mline.20 = '              DISPLAY "THE SORTED TABLE IS:".'
            mline.21 = '              PERFORM 0003 N TIMES.'
            mline.22 = '              STOP RUN.'
            mline.23 = '       0001.'
            mline.24 = '             COMPUTE K = I + 1.'
            mline.25 = '       PERFORM 00001 VARYING J FROM K BY 1 UNTIL J > N.'
            mline.26 = '       00001.'
            mline.27 = '             IF AA ( I ) > AA ( J )'
            mline.28 = '             MOVE AA ( I ) TO T'
            mline.29 = '             MOVE AA ( J ) TO AA ( I )'
            mline.30 = '             MOVE T TO AA ( J ).'
            mline.31 = '       0002.'
            mline.32 = '             ACCEPT AA(I).'
            mline.33 = '             ADD 1 TO I.'
            mline.34 = '       0003.'
            mline.35 = '             DISPLAY AA(I).'
            mline.36 = '             ADD 1 TO I.'

            QUEUE hline
            QUEUE htitle

            do i=0 to 36
                QUEUE mline.i

            end

            "Execio "Queued()" DISKW outdd (FINIS"
            "FREE FI(outdd)"
            "DELSTACK"
        exit
    end


    else
    if command = 6 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if rc = 0 THEN
        row = 0
        hline   =  '      *--------------------------------------------------'
        htitle  =  '      GENERATE RANDOM NUMBERS UP TO A GIVEN LIMIT*'
        mline.0 =  '      *---------------------------------------------------'
        mline.1 =   '       IDENTIFICATION DIVISION.'
        mline.2 =   '       PROGRAM-ID. MAC.'
        mline.3 =   '       DATA DIVISION.'
        mline.4 =   '       WORKING-STORAGE SECTION.'
        mline.5 =   '       01 X PIC 9(4) VALUE 8048.'
        mline.6 =   '       01 Y PIC 9(4) VALUE 21.'
        mline.7 =   '       01 Z PIC 9(4) VALUE 31.'
        mline.8 =   '       01 I PIC 9(5) VALUE 0.'
        mline.9 =   '       01 A PIC 9(4).'
        mline.10 =  '       01 B PIC 9(4).'
        mline.11 =  '       01 N PIC 9(2) VALUE 1.'
        mline.12 =  '       PROCEDURE DIVISION.'
        mline.13 =  '       0001.'
        mline.14 =  '               DISPLAY "ENTER LIMIT:".'
        mline.15 =  '               ACCEPT '
        mline.16 =  '               DISPLAY "RANDOM SERIES:".'
        mline.17 =  '               PERFORM 0002 N TIMES.'
        mline.18 =  '               STOP RUN.'
        mline.19 =  '       0002.'
        mline.20 =  '               COMPUTE A = Y * I + Z.'
        mline.21 =  '               DIVIDE X INTO A GIVING B REMAINDER I.'
        mline.22 =  '               DISPLAY I.'
        mline.23 =  '               ADD 1 TO I.'


        QUEUE hline
        QUEUE htitle

        do i=0 to 23
            QUEUE mline.i

        end

        "Execio "Queued()" DISKW outdd (FINIS"
        "FREE FI(outdd)"
        "DELSTACK"
    exit
    end




    else
    if command = 7 then
    do
        say "**  Provide the dataset you want the starter cobol to appear  **"
        say "**  In the following format ZXXXXX.your-DA(member-of-DA)      **"
        say "**  For tutorial you may chose 'Z01510.OUTPUT(SAMPLCBL)'      **"
        say "**  So type  the full TSO command below ...                   **"
        say '"zowe tso send as <your-tso-key> --data "Z01510.OUTPUT(SAMPLCBL)"'
        pull response
        "ALLOC FI(outdd) DA('"response"') SHR REUSE"
        if rc = 0 THEN
        row = 0
        hline  =    '      *---------------------------------------------------'
        htitle  =   '      CREATE & PROCESS A PS/QSAM/SEQUENTIAL FILE IN COBOL'
        mline.0 =   '      *---------------------------------------------------'
        mline.1  =   '       IDENTIFICATION DIVISION.'
        mline.2  =   '       PROGRAM-ID. MACSEQ.'
        mline.3  =   '       ENVIRONMENT DIVISION.'
        mline.4  =   '       INPUT-OUTPUT SECTION.'
        mline.5  =   '       FILE-CONTROL.'
        mline.7  =   '       SELECT MAC ASSIGN TO QSAMFILE.'
        mline.9  =   '       DATA DIVISION.'
        mline.10 =   '       FILE SECTION.'
        mline.11 =   '       FD MAC BLOCK CONTAINS 0 RECORDS'
        mline.12 =   '                        RECORDING MODE F.'
        mline.13 =   '       01 MREC.'
        mline.14 =   '                  05 MNO PIC 9(5).'
        mline.15 =   '                  05 MNAME PIC X(10).'
        mline.16 =   '       WORKING-STORAGE SECTION.'
        mline.17 =   '       01 A PIC 99 VALUE ZERO.'
        mline.18 =   '       01 B PIC 9(5) VALUE ZERO.'
        mline.19 =   '       PROCEDURE DIVISION.'
        mline.20 =   '       0001.'
        mline.21 =' DISPLAY "1.SEARCH/2.INSERT/3.REWRITE/4.DEL/5.DELALL 6.DISP"'
        mline.22 =   '                ACCEPT A.'
        mline.23 =   '                IF A = 1 GO 1SEARCH'
        mline.24 =   '                ELSE IF A = 2 GO 2WRITE'
        mline.25 =   '                ELSE IF A = 3 GO 3REWRITE'
        mline.26 =   '                ELSE IF A = 4 GO 4DELETE'
        mline.27 =   '                ELSE IF A = 5 GO 5DELALL'
        mline.28 =   '                ELSE IF A = 6 GO 6DISPLAY'
        mline.30 =   '                ELSE DISPLAY "INVALID INPUT"'
        mline.31 =   '                GO 0001.'
        mline.32 =   '                STOP RUN.'
        mline.33 =   '       1SEARCH.'
        mline.34 =   '                OPEN INPUT MAC.'
        mline.35 =   '      *****DISPLAY "ENTER RECORD NO TO BE SEARCHED".'
        mline.36 =   '                ACCEPT B.'
        mline.37 =   '       0002.'
        mline.38 =   '          READ MAC AT END DISPLAY B "NOT FOUND", GO 000X.'
        mline.39 =   '              IF B = MNO DISPLAY "FOUND " MNO ":" ,'
        mline.40 =   '               DISPLAY " AT POS:" A " FOR NAME: " MNAME,'
        mline.41 =   '               GO 000X.'
        mline.42 =   '               ADD 1 TO A.'
        mline.43 =   '               GO TO 0002.'
        mline.44 =   '       2WRITE.'
        mline.45 =   '                 OPEN EXTEND MAC.'
        mline.46 =   '                 ACCEPT MNO.'
        mline.47 =   '                 ACCEPT MNAME.'
        mline.48 =   '                 WRITE MREC.'
        mline.49 =   '                 GO 000X.'
        mline.50 =   '       3REWRITE.'
        mline.51 =   '                 OPEN I-O MAC.'
        mline.52 =   '      *****DISPLAY "ENTER RECORD NO TO BE REWRITED".'
        mline.53 =   '                 ACCEPT B.'
        mline.54 =   '       0003.'
        mline.55 =   '         READ MAC AT END DISPLAY "MNO NOT FOUND" GO 000X.'
        mline.56 =   '                 IF MNO NOT = B GO 0003.'
        mline.57 =   '                 ACCEPT MNO.'
        mline.58 =   '                ACCEPT MNAME.'
        mline.59 =   '                REWRITE MREC.'
        mline.60 =   '                GO 000X.'
        mline.61 =   '                4DELETE.'
        mline.62 =   '                OPEN I-O MAC.'
        mline.63 =   '      *****DISPLAY "ENTER RECORD NO TO BE DELETED".'
        mline.64 =   '                ACCEPT B.'
        mline.65 =   '       0004.'
        mline.66 =   '         READ MAC AT END DISPLAY "MNO NOT FOUND" GO 000X.'
        mline.67 =   '                IF MNO NOT = B GO 0003.'
        mline.68 =   '                MOVE SPACES TO MREC.'
        mline.69 =   '                REWRITE MREC.'
        mline.70 =   '                GO 000X.'
        mline.71 =   '        5DELALL.'
        mline.72 =   '      *****DISPLAY "SEQ FILE!SO ALL RECORDS ARE DELETED".'
        mline.73 =   '       *****DISPLAY "ARE YOU SURE(1/0)".'
        mline.74 =   '                 ACCEPT A.'
        mline.75 =  'IF A = 1 OPEN OUTPUT MAC DISPLAY "RECORDS DELETED" GO 000X'
        mline.76 =   '                 ELSE GO 000X.'
        mline.77 =   '       6DISPLAY.'
        mline.78 =   '               OPEN INPUT MAC.'
        mline.79 =   '       0005.'
        mline.80 =   '               READ MAC AT END GO 000X.'
        mline.81 =   '               DISPLAY MNO, " ", MNAME.'
        mline.82 =   '               GO 0005.'
        mline.83 =   '       000X.'
        mline.84 =   '                CLOSE MAC.'
        mline.85 =   '      *****DISPLAY "CONTINUE?1/0".'
        mline.86 =   '                 ACCEPT A.'
        mline.87 =   '                 IF A = 0 STOP RUN ELSE GO 0001.'


        QUEUE hline
        QUEUE htitle

        do i=0 to 87
            QUEUE mline.i

        end

        "Execio "Queued()" DISKW outdd (FINIS"
        "FREE FI(outdd)"
        "DELSTACK"
    exit
    end

end
exit
