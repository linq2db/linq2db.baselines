BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = 'John'

