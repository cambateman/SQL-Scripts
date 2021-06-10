USE Bateman_Cam_SSD_Ticketing
GO
IF OBJECT_ID ('Venue', 'U') IS NOT NULL
DROP TABLE Venue
GO
CREATE TABLE Venue
(
ID UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
City VARCHAR(50) NOT NULL,
State VARCHAR(50) NOT NULL,
Capacity INT NOT NULL
)

INSERT INTO Venue 
VALUES 
    (NEWID(), 'American Airlines Arena', 'Miami', 'Florida', 19600),
	(NEWID(), 'American Airlines Center', 'Dallas', 'Texas', 19200),
	(NEWID(), 'Amway Center', 'Orlando', 'Florida', 18846),
	(NEWID(), 'AT&T Center', 'San Antonio', 'Texas', 18418),
	(NEWID(), 'Bankers Life Fieldhouse', 'Indianapolis', 'Indiana', 17923),
	(NEWID(), 'Barclays center', 'Brooklyn', 'New York', 17732 ),
	(NEWID(), 'Capital One Arena', 'Washington', 'DC', 20356),
	(NEWID(), 'Chase Center', 'San Francisco', 'California', 18064),
	(NEWID(), 'Chesapeake Energy Arena', 'Oklahoma City', 'Oklahoma', 18203),
	(NEWID(), 'FedEx Forum', 'Memphis', 'Tennessee', 17794),
	(NEWID(), 'Fiserv Forum', 'Milwaukee', 'Wisconsin', 17500),
	(NEWID(), 'Golden 1 Center', 'Sacramento', 'California',17583),
	(NEWID(), 'Little Caesars Arena', 'Detroit', 'Michigan', 20332),
	(NEWID(), 'Madison Square Garden', 'New York City', 'New York', 19812),
	(NEWID(), 'Moda Center', 'Portland', 'Oregon', 19441),
	(NEWID(), 'Pepsi center', 'Denver', 'Colorado', 19520),
	(NEWID(), 'Rocket Mortgage Fieldhouse', 'Cleveland', 'Ohio', 19432),
	(NEWID(), 'Scotiabank Arena', 'Toronto', 'Canada', 19800),
	(NEWID(), 'Smoothie King Center', 'New Orleans', 'Louisiana', 16867),
	(NEWID(), 'Spectrum Center', 'Charlotte', 'North Carolina', 19077),
	(NEWID(), 'Staples Center', 'Los Angeles', 'California', 18997),
	(NEWID(), 'Inglewood Basketball and Entertainment Center', 'Los Angeles', 'California', 19068),
	(NEWID(), 'State Farm Arena', 'Atlanta', 'Geogia', 18118),
	(NEWID(), 'Talking Stick Arena', 'Phoenix', 'Arizaona',18055),
	(NEWID(), 'Target Center', 'Minneapolis', 'Minnesota', 18978),
	(NEWID(), 'TD Garden', 'Boston', 'Massachusetts', 18624),
	(NEWID(), 'Toyota Center', 'Houston Texas', 'Texas', 18055),
	(NEWID(), 'United Center', 'Chicago', 'Illinois', 20917),
	(NEWID(), 'Vivent Smart Home Arena', 'Salt Lake City', 'Utah', 18306),
	(NEWID(), 'Wells Fargo Center', 'Philadelphia', 'Pennsylvania', 20478)

--1. Display the result of a query for all Venues.
	SELECT * FROM Venue

--2. Display the result of a query for all Venues in reverse alphabetical order.
	SELECT * FROM Venue
	ORDER BY Name DESC;

--3. Display the result of a query for the Staples Center record (found by name).
	SELECT * FROM Venue 
	WHERE Name='Staples Center';
	
--4. Delete the Staples Center record (found by Id). Show the result by querying the total number of records in the Venue table.
	--DELETE FROM Venue
	--WHERE Name='Staples Center' and City='Los Angeles'
	DELETE 
	FROM Venue
  	WHERE ID 
  	IN (SELECT ID FROM Venue WHERE Name = 'Staples Center')
	
	
--5. Insert a new record for the Staples Center. Show the result by again querying the total number of records in the Venue table.
	INSERT INTO Venue
	VALUES 
    	(NEWID(), 'Staples Center', 'Los Angeles', 'California', 18997)
	SELECT COUNT(ID) AS "Venue Count" 
	FROM Venue
--6. Display the result of a query for the Name and City of all Venues that are in California.
	SELECT Name, City FROM Venue 
	WHERE State='California'
	
--7. Display the result of a query for the Name and Capacity of all Venues that have a capacity of 19,200 or more.
	SELECT Name, Capacity FROM Venue 
	WHERE Capacity > 19200
	
--8. Display the result of a query for the Name, City, and State of all Venues that have teams in the Western Conference. Base this on states that have teams in the NBA Western Conference.
	SELECT Name, City, State 
	FROM Venue 
	WHERE State IN ('California', 'Texas', 'Colorado', 'Oklahoma', 'Utah', 'Oregon', 'Tennessee', 'Arizona', 'Louisiana', 'Minnesota')
	
--10. Display the total capacity of all Venues. Display the total capacity of all Western Conference Venues.
	SELECT SUM(Capacity) AS "Total Capacity"
	FROM Venue

	SELECT SUM(Capacity) AS "Total Capacity"
	FROM Venue
	WHERE State IN ('California', 'Texas', 'Colorado', 'Oklahoma', 'Utah', 'Oregon', 'Tennessee', 'Arizona', 'Louisiana', 'Minnesota')

--11. Change all states to the appropriate US Postal Service abbreviation. Ex. California becomes CA. Show the result by querying the state and number of venues in each state.
	UPDATE Venue 
	SET State = 'TN'
	WHERE State = 'Tennessee'

	UPDATE Venue 		
	SET State = 'TX'
	WHERE State = 'Texas'

	UPDATE Venue 
	SET State = 'OK'
	WHERE State = 'Oklahoma'

	UPDATE Venue 
	SET State = 'FL'
	WHERE State = 'Florida'

	UPDATE Venue 
	SET State = 'OR'
	WHERE State = 'Oregon'

	UPDATE Venue 
	SET State = 'NC'
	WHERE State = 'North Carolina'

	UPDATE Venue 
	SET State = 'NY'
	WHERE State = 'New York'

	UPDATE Venue 
	SET State = 'CA'
	WHERE State = 'California'

	UPDATE Venue 
	SET State = 'MA'
	WHERE State = 'Massachusetts'
		
	UPDATE Venue 
	SET State = 'WI'
	WHERE State = 'Wisconsin'

	UPDATE Venue 
	SET State = 'ON'
	WHERE State = 'Canada'

	UPDATE Venue 
	SET State = 'GA'
	WHERE State = 'Geogia'

	UPDATE Venue 
	SET State = 'OH'
	WHERE State = 'Ohio'

	UPDATE Venue 
	SET State = 'MN'
	WHERE State = 'Minnesota'

	UPDATE Venue 
	SET State = 'MI'
	WHERE State = 'Michigan'

	UPDATE Venue 
	SET State = 'IN'
	WHERE State = 'Indiana'

	UPDATE Venue 
	SET State = 'LA'
	WHERE State = 'Louisiana'

	UPDATE Venue 
	SET State = 'AZ'
	WHERE State = 'Arizaona'

	UPDATE Venue 
	SET State = 'PA'
	WHERE State = 'Pennsylvania'

	UPDATE Venue 
	SET State = 'DN'
	WHERE State = 'Colorado'

	UPDATE Venue 
	SET State = 'IL'
	WHERE State = 'Illinois'

	UPDATE Venue 
	SET State = 'UT'
	WHERE State = 'Utah' 

	SELECT State, 
	COUNT(State) AS "Venues in State" 
	FROM Venue
	GROUP BY State

--Reset Scripts 
DELETE * FROM Venue

DROP TABLE Venue