BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IS NULL
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @ID VarChar(4) -- String
SET     @ID = 'John'

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @ID
LIMIT 1

