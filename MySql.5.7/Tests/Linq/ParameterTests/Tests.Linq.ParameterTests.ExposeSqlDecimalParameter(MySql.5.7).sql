-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @p Decimal(6, 3)
SET     @p = 123.456

SELECT
	`t`.`decimalDataType`,
	`t`.`binaryDataType`,
	`t`.`varbinaryDataType`,
	`t`.`varcharDataType`
FROM
	`AllTypes` `t`
WHERE
	`t`.`decimalDataType` = @p

