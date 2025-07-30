BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

