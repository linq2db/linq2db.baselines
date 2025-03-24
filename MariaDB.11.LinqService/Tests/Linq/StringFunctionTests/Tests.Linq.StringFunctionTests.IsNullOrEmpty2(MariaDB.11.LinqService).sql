BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Char_Length(`p`.`FirstName`) = 0
FROM
	`Person` `p`
WHERE
	`p`.`PersonID` = 1

