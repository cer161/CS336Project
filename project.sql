DROP DATABASE IF EXISTS project; /*useful for testing after DB changes*/
CREATE DATABASE project;

USE project;

CREATE TABLE Managers
	(accMan CHAR(20),
    pass CHAR(20),
    employee INT,
    PRIMARY KEY (accMan)
    );

CREATE TABLE Customers
	(accCust CHAR(20),
    pass CHAR(20),
    created CHAR(10), /*mm-dd-yyyy*/
	firstName CHAR(20),
    lastName CHAR(20),
    address CHAR(20),
	city CHAR(20),
	state CHAR(2),
    zip CHAR(5),
	email CHAR(25),
	phone CHAR(15),
	credit CHAR(16),
    pref CHAR(30), /*maybe worth splitting up later, will see*/
    PRIMARY KEY (accCust)
    );

CREATE TABLE Manages
	(accCust CHAR(20), accMan CHAR(20),
    PRIMARY KEY (accCust, accMan),
    FOREIGN KEY (accCust) REFERENCES Customers(acc)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    FOREIGN KEY (accMan) REFERENCES Managers(acc)
    ON DELETE CASCADE
    ON UPDATE CASCADE
    );
    
CREATE TABLE Reservations
	(rNum INT,
    accCust CHAR(20),
    tFare INT,
    flyDate CHAR(8), /*mmddyyyy*/
    lengthStay INT, /*count in days*/
    bookingFee INT,
    advance INT,
    passenger INT, /*currently just the number of passengers, 
						maybe we should have it link to another 
                        table?*/
	representative CHAR(20),
    PRIMARY KEY (rid, accCust),
    FOREIGN KEY (accCust) REFERENCES Customers(acc)
    ON DELETE CASCADE
    );

CREATE TABLE Airports
	(pid CHAR(3),
    pName CHAR(20),
    city CHAR(20),
    country CHAR(20),
    PRIMARY KEY (pid)
    );
    
CREATE TABLE Airlines
	(aid CHAR(2),
    aName CHAR(20),
    PRIMARY KEY (aid)
    );
    
CREATE TABLE Flights
	(fNum INT,
    aid CHAR(2),
    seatNum INT,
    days CHAR(14), /*every day of the week is refered to with the 
					first two charaters: Monday is MO, Tuesday is
                    TU*/
	PRIMARY KEY (fNum, aid),
    FOREIGN KEY (aid)  REFERENCES Airlines(aid)
    ON DELETE CASCADE
    );

CREATE TABLE stopsAt
	(fNum INT, 
    aid CHAR(2), 
    apid CHAR(3), 
    dpid CHAR(3), 
    atime INT,
    dtime INT,
    fare INT,
    PRIMARY KEY (fNum, aid),
    FOREIGN KEY (fNum) REFERENCES Flights(fNum),
    FOREIGN KEY (aid) REFERENCES  Airlines(aid),
    FOREIGN KEY (apid) REFERENCES Airports(pid),
	FOREIGN KEY (dpid) REFERENCES Airports(pid)
    );

CREATE TABLE Reserves
	(rNum INT NOT NULL,
    fNum INT NOT NULL,
    aid CHAR(2) NOT NULL,
    pid CHAR(3) NOT NULL,
    PRIMARY KEY (rNum),
	FOREIGN KEY (rNum) REFERENCES Reservations(rNum),
	FOREIGN KEY (fNum) REFERENCES Flights(fNum),
    FOREIGN KEY (aid) REFERENCES  Airlines(aid),
    FOREIGN KEY (pid) REFERENCES Airports(pid)
    );
	
    
    

    
    

    