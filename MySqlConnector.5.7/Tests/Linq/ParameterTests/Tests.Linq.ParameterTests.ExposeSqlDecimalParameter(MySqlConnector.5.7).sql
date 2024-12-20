BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @p NewDecimal(6, 3) -- Decimal
SET     @p = 123.456

SELECT
	`t`.`DecimalDataType`,
	`t`.`BinaryDataType`,
	`t`.`VarBinaryDataType`,
	`t`.`VarcharDataType`
FROM
	`AllTypes` `t`
WHERE
	`t`.`DecimalDataType` = @p

