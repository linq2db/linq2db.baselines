﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @false_value VarChar -- AnsiString
SET     @false_value = 'N'

SELECT
	`t`.`Id`,
	`t`.`Value1`,
	`t`.`Value2`,
	`t`.`BoolValue`
FROM
	`ValueConversion` `t`
WHERE
	`t`.`BoolValue` = @false_value

