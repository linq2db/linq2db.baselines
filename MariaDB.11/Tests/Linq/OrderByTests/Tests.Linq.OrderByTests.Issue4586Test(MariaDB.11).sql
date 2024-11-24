BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`FirstName`,
	`x`.`PersonID`,
	`x`.`LastName`,
	`x`.`MiddleName`,
	`x`.`Gender`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` LIKE 'J%' ESCAPE '~'
ORDER BY
	`x`.`PersonID` DESC
LIMIT @skip, @take

