## Requirments
Create a single .sql script that does the following:
* Safely creates a database called `Lastname_Firstname_SSD_Ticketing` where the Lastname and Firstname are your own.
* Uses the newly created database to safely create a single table called `Venue` with the following columns: 
    * Id (GUID)
    * Name (VARCHAR)
    * City (VARCHAR)
    * State (VARCHAR) Use the full word for each state (example California)
    * Capacity (INT)
* Insert a record for each Venue that an NBA (National Basketball Association) team competes in. [Wikipedia - NBA Arenas](https://en.wikipedia.org/wiki/List_of_National_Basketball_Association_arenas)
   * Use the Lakers capacity for the Staples Center and add the Inglewood Basketball and Entertainment Center noted below the map ;)
---
* Display the result of a query for all Venues.
* Display the result of a query for all Venues in reverse alphabetical order.
* Display the result of a query for the Staples Center record (found by name).
* Delete the Staples Center record (found by Id).
   * Show the result by querying the total number of records in the Venue table.
* Insert a new record for the Staples Center.
   * Show the result by again querying the total number of records in the Venue table.
* Display the result of a query for the Name and City of all Venues that are in California.
* Display the result of a query for the Name and Capacity of all Venues that have a capacity of 19,200 or more.
* Display the result of a query for the Name, City, and State of all Venues that have teams in the Western Conference.
   * Base this on states that have teams in the [NBA Western Conference](https://en.wikipedia.org/wiki/Western_Conference_(NBA)). 
* Display the total capacity of all Venues.
* Display the total capacity of all Western Conference Venues.
* Change all states to the appropriate [US Postal Service abbreviation](https://en.wikipedia.org/wiki/List_of_U.S._state_and_territory_abbreviations).
   * Ex. California becomes CA.
   * Show the result by querying the state and number of venues in each state.

### Format of Results
I should be able to:
* Execute the script in it's entirety multiple times without it erroring out
* View the results that should be identical to the following (only the id's should differ):

![](https://i.imgur.com/KRNLdP8.png)

![](https://i.imgur.com/Y6CVcdD.png)
