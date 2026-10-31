-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Code VarChar(3) -- AnsiString
SET     @Code = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) LIKE @Code

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @bound VarChar(3) -- AnsiString
SET     @bound = 'x:A'

SELECT
	COUNT(*)
FROM
	`PrefixedCodeTable` `t`
WHERE
	CAST(`t`.`Code` AS CHAR(40)) = @bound

