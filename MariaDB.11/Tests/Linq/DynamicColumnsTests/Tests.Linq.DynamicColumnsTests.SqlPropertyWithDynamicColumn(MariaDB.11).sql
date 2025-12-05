-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`x`.`PersonID`,
	`x`.`FirstName`,
	`x`.`LastName`,
	`x`.`MiddleName`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = 'John'

