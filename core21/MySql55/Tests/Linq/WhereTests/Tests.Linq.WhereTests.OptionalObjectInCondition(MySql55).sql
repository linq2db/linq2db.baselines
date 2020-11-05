BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql
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

