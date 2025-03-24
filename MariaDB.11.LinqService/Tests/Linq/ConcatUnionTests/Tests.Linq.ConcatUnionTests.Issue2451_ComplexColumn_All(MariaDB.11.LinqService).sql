﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
UNION ALL
SELECT
	Concat(`p_1`.`FirstName`, '/', `p_1`.`LastName`)
FROM
	`Person` `p_1`

BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Concat(`p`.`FirstName`, '/', `p`.`LastName`)
FROM
	`Person` `p`
UNION ALL
SELECT
	`p_1`.`FirstName`
FROM
	`Person` `p_1`

