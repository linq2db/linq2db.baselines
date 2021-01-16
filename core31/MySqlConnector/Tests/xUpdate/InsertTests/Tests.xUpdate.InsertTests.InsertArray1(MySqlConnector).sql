BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MySqlConnector MySql

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
	NULL
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 2

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
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

