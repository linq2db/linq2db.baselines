BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @FirstName

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` IS NULL

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @FirstName

