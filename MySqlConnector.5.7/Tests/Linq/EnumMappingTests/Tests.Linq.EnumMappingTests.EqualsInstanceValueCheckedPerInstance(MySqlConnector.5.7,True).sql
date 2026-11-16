-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	`r`.`Id`
FROM
	`ConvertedGenderRow` `r`
WHERE
	`r`.`Gender` = @Value

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Gender`
FROM
	`ConvertedGenderRow` `t1`

