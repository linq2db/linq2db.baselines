BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SET GLOBAL local_infile=ON

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

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

BeforeExecute
DisposeTransaction
