       IDENTIFICATION DIVISION.
       PROGRAM-ID. RECORD-PROGRAM.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 STUDENT-RECORD.
           05 STUDENT-ID PIC 9(5) VALUE ZEROS. 
           05 STUDENT-NAME. 
               10 FIRST-NAME PIC X(10) VALUE ZEROS.
               10 LAST-NAME  PIC X(10) VALUE ZEROS.
           05 STUDENT-CLASS  PIC X(10) VALUE "MATH".
           05 STUDENT-GRADE  PIC X.
                   88 ABOVE-AVERAGE VALUE "A".
                   88 AVERAGE       VALUE "B".
                   88 BELOW-AVERAGE VALUE "C".
                   88 FAILING       VALUE "D".

       01 USER-INPUT PIC X(4).

       PROCEDURE DIVISION.
       MAIN.
           PERFORM BANNER.
           DISPLAY "--STUDENT ID--"
           DISPLAY "STUDENT ID: " WITH NO ADVANCING
           ACCEPT STUDENT-ID
           DISPLAY " "
           DISPLAY "--STUDENT NAME--"
           DISPLAY "FIRST NAME: "  WITH NO ADVANCING
           ACCEPT FIRST-NAME
           DISPLAY "LAST NAME: " WITH NO ADVANCING
           ACCEPT LAST-NAME
           GOBACK.

       BANNER.
           DISPLAY "                                          "
           DISPLAY " ***************************************  "
           DISPLAY "                                          "
           DISPLAY "   M3's STUDENT RECORD PROGRAM            "
           DISPLAY "                                          "
           DISPLAY "  Forget hand writing student records!    "
           DISPLAY "    Let the computer work for you!        "
           DISPLAY "                                          "
           DISPLAY " ***************************************  "
           DISPLAY "                                          ".


