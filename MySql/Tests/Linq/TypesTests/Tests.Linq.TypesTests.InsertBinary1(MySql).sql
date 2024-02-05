BeforeExecute
-- MySql MySql.Official MySql

DELETE   `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @data Blob -- Binary
SET     @data = NULL

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BinaryValue`,
	`BoolValue`
)
VALUES
(
	1001,
	@data,
	1
)

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` > 1000

