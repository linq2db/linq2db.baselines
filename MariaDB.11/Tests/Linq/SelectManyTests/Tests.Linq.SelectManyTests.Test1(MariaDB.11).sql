﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p1`.`PersonID`,
	`p2`.`FirstName`
FROM
	`Person` `p1`,
	`Person` `p2`
WHERE
	`p1`.`PersonID` = `p2`.`PersonID` AND `p1`.`PersonID` = 1

