BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`PersonID`,
	Concat(`p`.`FirstName`, '1')
FROM
	`Person` `p`

