BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @gender String(1) -- AnsiStringFixedLength
SET     @gender = 'M'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	`p`.`Gender` = @gender

