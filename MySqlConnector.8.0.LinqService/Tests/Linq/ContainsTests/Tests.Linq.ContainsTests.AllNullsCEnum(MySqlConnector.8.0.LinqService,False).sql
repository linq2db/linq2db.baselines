BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

