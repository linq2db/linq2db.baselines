-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`String` <=> @value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	NOT `s`.`NullableString` <=> @value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`String` <=> @value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value VarChar(3) -- String
SET     @value = 'abc'

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`NullableString` <=> @value

