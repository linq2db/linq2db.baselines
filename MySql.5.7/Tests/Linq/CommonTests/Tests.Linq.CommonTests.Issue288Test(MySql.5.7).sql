-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IS NULL
LIMIT 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @p
LIMIT 1

