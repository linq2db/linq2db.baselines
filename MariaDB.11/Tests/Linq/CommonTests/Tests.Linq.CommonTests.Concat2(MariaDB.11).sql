﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	Concat(`p`.`FirstName`, ' ', 1) = 'John 1'

