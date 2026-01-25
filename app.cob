*> setup identification division
identification division.

*> How it's called for the terminal
program-id. MYFIRSCOBOL.

data division.
working-storage section.

01 nbr1 pic 9(3) value 15.

01 nbr2 pic 9(3) value 10.

01 result-multiplication pic 9(3).
01 result-multiplication-overflow pic 9(2).

01 group-variable.
       05 sub-variable pic 9(5) value 444.
       05 sub-variable-2 pic A(2) value 'SD'.
       05 sub-variable-2 pic X(5) value 'e123'.


01 nbr_double pic S9(2)V9(2) value -98.21.
01 nbr_double_positive pic S9(2)V9(2) value 98.21.

*> main function
procedure division.

       display "Testing cobol for the first time!".

       display "First variable : " nbr1.
       display "Second Variable : " nbr2.

       multiply nbr1 by nbr2 giving result-multiplication.
       multiply nbr1 by nbr2 giving result-multiplication-overflow.

       display "Multiplication of the first 2 numbers : " result-multiplication.
       display "Multiplication of the first 2 numbers with an overflow : " result-multiplication-overflow.

       display nbr_double.
       display nbr_double_positive.

       display "***************************"
       display "Group variable : " group-variable
       display "Sub variable : " sub-variable

       stop run.