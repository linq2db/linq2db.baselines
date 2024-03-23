BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p2`.`PersonID`,
	Concat(`p2`.`FirstName`, '')
FROM
	`Person` `p2`
WHERE
	`p2`.`PersonID` = 1

