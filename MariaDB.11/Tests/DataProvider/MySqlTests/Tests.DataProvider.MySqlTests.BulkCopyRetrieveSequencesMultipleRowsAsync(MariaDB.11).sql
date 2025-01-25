BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

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
