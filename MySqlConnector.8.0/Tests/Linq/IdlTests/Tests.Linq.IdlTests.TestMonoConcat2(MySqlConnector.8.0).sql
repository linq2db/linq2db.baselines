BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

