BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

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
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @p VarChar(6) -- String
SET     @p = 'Tester'

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
LIMIT 2

