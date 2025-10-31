-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p VarChar(3) -- String
SET     @p = 'abc'

SELECT
	`t`.`PersonID`,
	`t`.`FirstName`,
	`t`.`LastName`,
	`t`.`MiddleName`,
	`t`.`Gender`
FROM
	`Person` `t`
WHERE
	`t`.`FirstName` = @p

