-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @Id

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

SELECT
	`r`.`FirstName`,
	`r`.`PersonID`,
	`r`.`LastName`,
	`r`.`MiddleName`,
	`r`.`Gender`
FROM
	`Person` `r`
WHERE
	`r`.`FirstName` = @Id

