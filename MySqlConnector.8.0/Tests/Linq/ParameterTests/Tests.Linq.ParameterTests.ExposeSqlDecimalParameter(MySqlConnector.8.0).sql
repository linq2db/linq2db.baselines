-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @p NewDecimal(6, 3) -- Decimal
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

