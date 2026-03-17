-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SET GLOBAL local_infile=ON

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT Max(`PersonID`) FROM `Person`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

