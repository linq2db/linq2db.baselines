-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Female'

SELECT
	`r`.`Id`
FROM
	`ConvertedGenderRow` `r`
WHERE
	`r`.`Gender` = @Value

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`Id`,
	`t1`.`Gender`
FROM
	`ConvertedGenderRow` `t1`

