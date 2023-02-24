﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

ALTER TABLE Person AUTO_INCREMENT = 5

BeforeExecute
BeginTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`Diagnosis`
FROM
	`Patient` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`PersonID`,
	`t1`.`Taxonomy`
FROM
	`Doctor` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`
ORDER BY
	`t1`.`PersonID`

BeforeExecute
DisposeTransaction
