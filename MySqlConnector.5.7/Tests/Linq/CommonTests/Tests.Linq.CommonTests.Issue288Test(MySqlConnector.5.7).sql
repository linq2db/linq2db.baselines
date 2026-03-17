-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IS NULL
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT
	`p`.`FirstName`
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` = @p
LIMIT 1

