﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT Max(`PersonID`) FROM `Person`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)

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
RollbackTransaction
