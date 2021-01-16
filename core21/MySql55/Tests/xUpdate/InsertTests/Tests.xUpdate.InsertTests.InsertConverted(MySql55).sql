BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` >= 1000

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @tt Int64
SET     @tt = 600000000

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`
)
VALUES
(
	1001,
	@tt
)

BeforeExecute
-- MySql55 MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` >= 1000

