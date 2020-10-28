BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @p1

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`
)
VALUES
(
	101,
	12
)

BeforeExecute
-- MariaDB MySql.Official MySql

DELETE `t1`
FROM
	`LinqDataTypes` `t1`
WHERE
	`t1`.`ID` = 101 AND `t1`.`BigIntValue` = 12

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @p1 Int32
SET     @p1 = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @p1

