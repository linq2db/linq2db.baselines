BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @t VarChar(1) -- String
SET     @t = 'A'

SELECT
	`y`.`FirstName`
FROM
	`Person` `y`
UNION ALL
SELECT
	`x`.`FirstName`
FROM
	`Person` `x`
WHERE
	`x`.`FirstName` = @t

