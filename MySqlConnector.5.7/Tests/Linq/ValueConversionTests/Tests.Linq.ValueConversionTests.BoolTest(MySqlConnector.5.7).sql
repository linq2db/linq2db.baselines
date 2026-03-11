-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @true_value VarChar -- AnsiString
SET     @true_value = 'Y'

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`,
	`t`.`BoolValue`
FROM
	`ValueConversion` `t`
WHERE
	`t`.`BoolValue` = @true_value

