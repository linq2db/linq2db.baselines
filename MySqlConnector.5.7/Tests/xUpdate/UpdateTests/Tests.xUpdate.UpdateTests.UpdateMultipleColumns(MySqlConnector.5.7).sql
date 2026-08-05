-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1001
DECLARE @MoneyValue NewDecimal(4, 0) -- Decimal
SET     @MoneyValue = 1000
DECLARE @SmallIntValue Int16
SET     @SmallIntValue = 100

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`MoneyValue`,
	`SmallIntValue`
)
VALUES
(
	@ID,
	@MoneyValue,
	@SmallIntValue
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1001

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`MoneyValue` = 2000,
	`t`.`SmallIntValue` = 200
WHERE
	`t`.`ID` = @ID

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 1001

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = @ID
LIMIT 2

