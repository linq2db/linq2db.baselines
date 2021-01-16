BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MySql55 MySql.Official MySql
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
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

