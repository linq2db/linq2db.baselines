BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

