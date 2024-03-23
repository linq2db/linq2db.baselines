BeforeExecute
-- MySql MySql.Official MySql

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 1000

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

SELECT
	`t`.`ID`,
	`t`.`BigIntValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1001
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 1000

