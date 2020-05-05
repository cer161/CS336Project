/*test data*/

INSERT INTO Airlines (aid, aName)
VALUES
    ('AA','American Airlines'),
    ('BA','British Airways'),
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
	(1,'BA', 150, 'MOTUWE'),
	(2,'BA', 150, 'THFRSASU'),
	(3,'BA', 150, 'MOTUWE'),
	(4,'BA', 150, 'THFRSASU'),    
	(1,'AF', 150, 'MOTUWE'),
	(2,'AF', 150, 'THFRSASU'),
	(3,'AF', 150, 'MOTUWE'),
	(4,'AF', 150, 'THFRSASU'), 
    (1,'CA', 150, 'MOTUWE'),
	(2,'CA', 150, 'THFRSASU'),
	(3,'CA', 150, 'MOTUWE'),
	(4,'CA', 150, 'THFRSASU'),    
	(1,'JA', 150, 'MOTUWE'),
	(2,'JA', 150, 'THFRSASU'),  
	(1,'LA', 150, 'MOTUWE'),
	(2,'LA', 150, 'THFRSASU') 
;


