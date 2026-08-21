-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

