identification division.

program-id. verbs.

data division.
       working-storage section.
       01 NUM1 PIC 9(9) VALUE 10.
       01 NUM2 PIC 9(9) VALUE 10.
       01 NUM3 PIC 9(9).

       01 NUM4 pic 9(9) value  25.

       01 check-value pic 9(3).
           88 pass values are 041 thru 100.
           88 fail values are 010 thru 040.


procedure division.
       
       move 25 to NUM1 NUM3.
       move 10 to NUM2.

       *> check equalities

       if NUM1 > NUM2 then
           display "NUM1 is higher than NUM2"
           if NUM3 = NUM4 then
               display "NUM3 and 4 are equal"
           else
               display "shit happens"
           end-if
       else
           display "It shouldnt be that way"
       end-if

       
       *> checks values if in certain range
       move 67 to check-value.

       if pass
           display "Passed with : " check-value " %."
       else if fail
           display "Failed with : " check-value " %."
       else
           display "We ain't good here"
       end-if

       initialize check-value.
       move 35 to check-value.

       if pass
           display "Passed with : " check-value " %."
       else if fail
           display "Failed with : " check-value " %."
       else
           display "We ain't good here"
       end-if

       initialize check-value.
       move 5 to check-value.

       if pass
           display "Passed with : " check-value " %."
       else if fail
           display "Failed with : " check-value " %."
       else
           display "We ain't good here"
       end-if



       stop run.
