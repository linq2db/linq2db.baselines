BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(`p2`.`PersonID` * 2) / CHAR_LENGTH('22'),
	`p2`.`FirstName`
FROM
	`Person` `p2`

