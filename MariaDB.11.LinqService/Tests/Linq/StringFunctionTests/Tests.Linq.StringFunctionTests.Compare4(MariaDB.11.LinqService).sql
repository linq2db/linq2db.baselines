﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	Lower(Substring(`p`.`FirstName`, 2, 2)) = Lower(Substring('Joh', 2, 2)) AND
	`p`.`PersonID` = 1

