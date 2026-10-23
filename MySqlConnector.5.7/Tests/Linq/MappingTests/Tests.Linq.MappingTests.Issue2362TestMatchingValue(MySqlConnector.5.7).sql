-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @value VarChar(1) -- AnsiString
SET     @value = '+'

SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`Issue2362Table` `r`
WHERE
	`r`.`Value` = @value
ORDER BY
	`r`.`Id`

