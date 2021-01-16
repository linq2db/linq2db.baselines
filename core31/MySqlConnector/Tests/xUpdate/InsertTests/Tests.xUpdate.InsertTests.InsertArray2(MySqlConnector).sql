BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

