-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SET GLOBAL local_infile=ON

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT Max(`PersonID`) FROM `Person`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Person`
(
	`FirstName`,
	`PersonID`,
	`LastName`,
	`MiddleName`,
	`Gender`
)
VALUES
('Neurologist',5,'test',NULL,'M'),
('Sports Medicine',6,'test',NULL,'M'),
('Optometrist',7,'test',NULL,'M'),
('Pediatrics',8,'test',NULL,'M'),
('Psychiatry',9,'test',NULL,'M')

