BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN ('John')

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @st VarChar(4) -- String
SET     @st = 'John'

SELECT
	`x`.`PersonID`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` IN (@st)

