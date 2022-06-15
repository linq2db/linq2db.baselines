BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @arr Blob -- Binary
SET     @arr = NULL

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
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

