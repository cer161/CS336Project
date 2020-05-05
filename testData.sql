/*test data*/

INSERT INTO Airlines (aid, aName)
VALUES
    ('AA','American Airlines'),
    ('AF','Air France'),
    ('CA','China Airlines'),
    ('JA','Japan Airlines'),
    ('LA','LATAM Airlines')
;

INSERT INTO Airports (pid, pName, city, country)
VALUES 
	('JFK','John F. Kennedy','Queens', 'United States'),
    ('DFW','Dallas Fort Worth', 'Dallas', 'United States'),
    ('LAI','Los Angeles Int.', 'Los Angeles', 'United States'),
    ('CDG', 'Charles De Gaulle', 'Paris', 'France'),
    ('LVF','Leonardo da Vinci','Rome','Italy'),
    ('WCO','Warsaw Chopin','Warsaw', 'Poland'),
    ('SPI','Shanghai Pudong','Shanghai', 'China'),
    ('TIA','Haneda Airport','Tokyo','Japan'),
    ('IAB','Airport of Brasilia','Brasilia','Brazil'),
    ('AMB','Arturo Benitez','Santiago','Chile')
;

INSERT INTO Flights (fNum, aid, seatNum, days)
VALUES 
	(1,'AA', 150, 'MOTUWE'),
	(2,'AA', 150, 'THFRSASU'),
	(3,'AA', 150, 'MOTUWE'),
	(4,'AA', 150, 'THFRSASU'),
	(1,'AF', 150, 'MOTUWE'),
	(2,'AF', 150, 'THFRSASU'),
    (1,'CA', 150, 'MOTUWE'),
	(2,'CA', 150, 'THFRSASU'),  
	(1,'JA', 150, 'MOTUWE'),
	(2,'JA', 150, 'THFRSASU'),  
	(1,'LA', 150, 'MOTUWE'),
	(2,'LA', 150, 'THFRSASU') 
;

INSERT INTO stopsAt (fNum, aid, apid, dpid, atime, dtime, fare)
VALUES 
	/*US continental flights*/
	(1, 'AA', 'DFW', 'JFK', 1200, 0800, 200),
    (1, 'AA', 'LAI', 'DFW', 1630, 1230, 200),
    (1, 'AA', 'JFK', 'LAI', 0100, 1700, 300),
	(2, 'AA', 'DFW', 'JFK', 1200, 0800, 200),
    (2, 'AA', 'LAI', 'DFW', 1630, 1230, 200),
    (2, 'AA', 'JFK', 'LAI', 0100, 1700, 300),
    /*US international flights*/
    (3, 'AA', 'CDG', 'JFK', 1600, 0800, 400),
    (3, 'AA', 'JFK', 'CDG', 0030, 1630, 400),
    (4, 'AA', 'CDG', 'JFK', 1600, 0800, 400),
    (4, 'AA', 'JFK', 'CDG', 0030, 1630, 400),
    /*Europe flights*/
    (1, 'AF', 'CDG', 'LVF', 2030, 1630, 200),
    (1, 'AF', 'WCO', 'CDG', 0100, 2100, 200),
    (1, 'AF', 'LVF', 'WCO', 0730, 0130, 250),
	(2, 'AF', 'CDG', 'LVF', 2030, 1630, 200),
    (2, 'AF', 'WCO', 'CDG', 0100, 2100, 200),
    (2, 'AF', 'LVF', 'WCO', 0730, 0130, 250),
    /*Asia flights*/
    (1, 'CA', 'SPI', 'WCO', 1400, 0800, 300),
    (1, 'CA', 'TIA', 'SPI', 1830, 1430, 200),
    (1, 'CA', 'WCO', 'TIA', 0200, 1900, 400),
	(2, 'CA', 'SPI', 'WCO', 1400, 0800, 300),
    (2, 'CA', 'TIA', 'SPI', 1830, 1430, 200),
    (2, 'CA', 'WCO', 'TIA', 0200, 1900, 400),
    (1, 'JA', 'LAI', 'TIA', 0400, 1900, 400),
    (1, 'JA', 'TIA', 'LAI', 1700, 0900, 400),
	(2, 'JA', 'LAI', 'TIA', 0400, 1900, 400),
    (2, 'JA', 'TIA', 'LAI', 1700, 0900, 400),
    /*South America flights*/
    (1, 'LA', 'IAB', 'DFW', 2100, 1300, 400),
    (1, 'LA', 'AMB', 'IAB', 0030, 2130, 200),
    (1, 'LA', 'DFW', 'AMB', 1200, 0400, 400),
	(2, 'LA', 'IAB', 'DFW', 2100, 1300, 400),
    (2, 'LA', 'AMB', 'IAB', 0030, 2130, 200),
    (2, 'LA', 'DFW', 'AMB', 1200, 0400, 400)
;


