﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' ', Cast(1 as CHAR(11))) = 'John 1'

