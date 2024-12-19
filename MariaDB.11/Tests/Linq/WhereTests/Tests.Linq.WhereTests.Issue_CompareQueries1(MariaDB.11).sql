BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` IN (1, 2)
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(`p`.`PersonID`)
FROM
	`Person` `p`
WHERE
	1 = 0
LIMIT 2

