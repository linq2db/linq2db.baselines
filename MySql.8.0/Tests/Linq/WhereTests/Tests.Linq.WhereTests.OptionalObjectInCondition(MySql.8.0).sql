BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @p

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	1 = 0

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @p

