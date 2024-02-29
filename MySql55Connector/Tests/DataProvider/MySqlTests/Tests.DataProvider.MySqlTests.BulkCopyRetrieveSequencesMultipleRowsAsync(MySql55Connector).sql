BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

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
