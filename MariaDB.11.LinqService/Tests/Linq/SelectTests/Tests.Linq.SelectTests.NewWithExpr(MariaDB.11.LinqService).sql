BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	Concat(`p`.`FirstName`, '1')
FROM
	`Person` `p`

