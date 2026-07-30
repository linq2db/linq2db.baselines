-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

