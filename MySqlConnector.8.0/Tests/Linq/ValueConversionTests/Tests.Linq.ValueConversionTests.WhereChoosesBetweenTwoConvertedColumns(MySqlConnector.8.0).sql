-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @EnumNullable VarChar(6) -- AnsiString
SET     @EnumNullable = 'Value1'

SELECT
	COUNT(*)
FROM
	`ValueConversion` `t`
WHERE
	CASE
		WHEN `t`.`EnumNullable` IS NOT NULL THEN `t`.`EnumNullable`
		ELSE `t`.`Enum`
	END = @EnumNullable

