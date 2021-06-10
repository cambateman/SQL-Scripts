## Requirements
Add to your labs 1 & 2 .sql script:

1. A WHILE loop that uses variables, CAST, and a conditional to insert 100 test customers to the Customer table.
    * firstName = "Test1", "Test2", "Test3"..."Test100"
    * lastName = "Aname1", "Bname2", "Cname3"..."Zname26", "Aname27", "Bname28", "Cname29"..."Zname52", "Aname53", "Bname54", "Cname55"..."Zname78", "Aname79", "Bname80", "Cname81"..."Vname100"

2. Create the following additional test records:
    * A Venue called "Test Venue" in Vancouver BC with a capacity of 19,000
    * 20 sections in Test Venue called "SEC1" - "SEC20"
    * In SEC1-SEC15 add 50 Rows numbered 1 through 50
    * In SEC16-SEC18 add 5 Rows 
    * In the last 2 Sections add 1 Row
    * 25 Seats in each Row of Sections 1-15
    * 10 Seats in each Row of Sections 16-18
    * 50 Seats in each Row of Sections 19&20

3. Create the following additional test records:
    * An Event called "Test Event" at the Test Venue on June 5th, 2022 from 5pm - 8pm. It is a Basketball Game.
    * Add all the Test Venue seats to the Test Event
    * Use a CURSOR and a CASE statement to add 1 Sale for each test customer, the Payment Type will check the value of the last payment type ['MC', 'AMEX', 'VISA', 'CASH'] and 'MC' will insert 'AMEX', 'AMEX' will insert 'VISA', 'VISA' will insert 'CASH', and 'CASH' will insert 'MC'

4. Add EventSeatSale records for the sales of the first 75 test customers
    * If they are Test1 - Test24 give them 2 seats in SEC 1 in the Row matching their number and the first seat matching their number. ex: Test1 would get SEC1-Row 1-Seat 1 & 2, Test 24 would get SEC1-Row 24-Seat 24 & 25
    * Test25 - Test49 can each be given 1 Seat in SEC1 Row 25 (this should fill the row) 
    * Test50 - Test75 can each be given 1 seat in SEC19

5. Delete the Sales of any test customers that do not have associated EventSeatSale records.


***NOTE: 
Each bullet point can be written in smaller (easier to test) chunks. If you are testing INSERT,UPDATE, DELETE queries...be sure to keep your "Reset" script in good working order.***

***I should be able to execute your full script multiple times without error.***