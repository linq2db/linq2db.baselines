﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	`p`.`FirstName`,
	CAST('id=1' AS CHAR(255))
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1
UNION ALL
SELECT
	`p_1`.`PersonID`,
	`p_1`.`FirstName`,
	CAST('id=2' AS CHAR(255))
FROM
	`Person` `p_1`
WHERE
	`p_1`.`PersonID` = 2

