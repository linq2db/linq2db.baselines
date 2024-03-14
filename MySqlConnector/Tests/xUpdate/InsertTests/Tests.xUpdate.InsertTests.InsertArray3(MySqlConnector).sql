BeforeExecute
-- MySqlConnector MySql

DELETE   `t`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` > 1000

BeforeExecute
-- MySqlConnector MySql
DECLARE @arr Blob(4) -- Binary
SET     @arr = 0x01020304

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BoolValue`,
	`BinaryValue`
)
VALUES
(
	1001,
	1,
	@arr
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1001
LIMIT 2

BeforeExecute
-- MySqlConnector MySql

DELETE   `t`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` > 1000

