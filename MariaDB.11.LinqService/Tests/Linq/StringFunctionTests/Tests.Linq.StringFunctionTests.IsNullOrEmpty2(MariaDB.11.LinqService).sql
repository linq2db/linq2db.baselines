﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	CHAR_LENGTH(`p`.`FirstName`) = 0
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

