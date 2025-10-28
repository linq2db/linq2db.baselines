BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`e`.`PersonID`,
	`e`.`FirstName`,
	`e`.`LastName`,
	Concat(`e`.`FirstName`, ':', `e`.`LastName`)
FROM
	`Person` `e`
WHERE
	`e`.`PersonID` = 1
LIMIT 2

