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
    (2,'AA', 150, 'MOTUWE'),
    (3,'AA', 150, 'MOTUWE'),
	(4,'AA', 150, 'THFRSASU'),
	(5,'AA', 150, 'THFRSASU'),
	(6,'AA', 150, 'THFRSASU'),
	(7,'AA', 150, 'MOTUWE'),
    (8,'AA', 150, 'MOTUWE'),
	(9,'AA', 150, 'THFRSASU'),
    (10,'AA', 150, 'THFRSASU'),
	(1,'AF', 150, 'MOTUWE'),
    (2,'AF', 150, 'MOTUWE'),
    (3,'AF', 150, 'MOTUWE'),
	(4,'AF', 150, 'THFRSASU'),
    (5,'AF', 150, 'THFRSASU'),
    (6,'AF', 150, 'THFRSASU'),
    (1,'CA', 150, 'MOTUWE'),
    (2,'CA', 150, 'MOTUWE'),
    (3,'CA', 150, 'MOTUWE'),
	(4,'CA', 150, 'THFRSASU'),  
    (5,'CA', 150, 'THFRSASU'),  
    (6,'CA', 150, 'THFRSASU'),
	(1,'JA', 150, 'MOTUWE'),
    (2,'JA', 150, 'MOTUWE'),
	(3,'JA', 150, 'THFRSASU'),  
    (4,'JA', 150, 'THFRSASU'),  
	(1,'LA', 150, 'MOTUWE'),
    (2,'LA', 150, 'MOTUWE'),
    (3,'LA', 150, 'MOTUWE'),
	(4,'LA', 150, 'THFRSASU'),
	(5,'LA', 150, 'THFRSASU'),
    (6,'LA', 150, 'THFRSASU') 
;

INSERT INTO stopsAt (fNum, aid, apid, dpid, atime, dtime, fare)
VALUES 
	/*US continental flights*/
	(1, 'AA', 'DFW', 'JFK', 1200, 0800, 200),
    (2, 'AA', 'LAI', 'DFW', 1630, 1230, 200),
    (3, 'AA', 'JFK', 'LAI', 0100, 1700, 300),
	(4, 'AA', 'DFW', 'JFK', 1200, 0800, 200),
    (5, 'AA', 'LAI', 'DFW', 1630, 1230, 200),
    (6, 'AA', 'JFK', 'LAI', 0100, 1700, 300),
    /*US international flights*/
    (7, 'AA', 'CDG', 'JFK', 1600, 0800, 400),
    (8, 'AA', 'JFK', 'CDG', 0030, 1630, 400),
    (9, 'AA', 'CDG', 'JFK', 1600, 0800, 400),
    (10, 'AA', 'JFK', 'CDG', 0030, 1630, 400),
    /*Europe flights*/
    (1, 'AF', 'CDG', 'LVF', 2030, 1630, 200),
    (2, 'AF', 'WCO', 'CDG', 0100, 2100, 200),
    (3, 'AF', 'LVF', 'WCO', 0730, 0130, 250),
	(4, 'AF', 'CDG', 'LVF', 2030, 1630, 200),
    (5, 'AF', 'WCO', 'CDG', 0100, 2100, 200),
    (6, 'AF', 'LVF', 'WCO', 0730, 0130, 250),
    /*Asia flights*/
    (1, 'CA', 'SPI', 'WCO', 1400, 0800, 300),
    (2, 'CA', 'TIA', 'SPI', 1830, 1430, 200),
    (3, 'CA', 'WCO', 'TIA', 0200, 1900, 400),
	(4, 'CA', 'SPI', 'WCO', 1400, 0800, 300),
    (5, 'CA', 'TIA', 'SPI', 1830, 1430, 200),
    (6, 'CA', 'WCO', 'TIA', 0200, 1900, 400),
    (1, 'JA', 'LAI', 'TIA', 0400, 1900, 400),
    (2, 'JA', 'TIA', 'LAI', 1700, 0900, 400),
	(3, 'JA', 'LAI', 'TIA', 0400, 1900, 400),
    (4, 'JA', 'TIA', 'LAI', 1700, 0900, 400),
    /*South America flights*/
    (1, 'LA', 'IAB', 'DFW', 2100, 1300, 400),
    (2, 'LA', 'AMB', 'IAB', 0030, 2130, 200),
    (3, 'LA', 'DFW', 'AMB', 1200, 0400, 400),
	(4, 'LA', 'IAB', 'DFW', 2100, 1300, 400),
    (5, 'LA', 'AMB', 'IAB', 0030, 2130, 200),
    (6, 'LA', 'DFW', 'AMB', 1200, 0400, 400)
;


