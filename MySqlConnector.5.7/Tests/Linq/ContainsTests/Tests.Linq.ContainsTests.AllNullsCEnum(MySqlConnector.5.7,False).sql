-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @In VarChar -- AnsiString
SET     @In = NULL
DECLARE @In_1 VarChar -- AnsiString
SET     @In_1 = NULL

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` IN (@In, @In_1)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @NotIn VarChar -- AnsiString
SET     @NotIn = NULL
DECLARE @NotIn_1 VarChar -- AnsiString
SET     @NotIn_1 = NULL

SELECT
	COUNT(*)
FROM
	`Src` `s`
WHERE
	`s`.`CEnum` NOT IN (@NotIn, @NotIn_1)

