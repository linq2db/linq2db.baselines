BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
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

