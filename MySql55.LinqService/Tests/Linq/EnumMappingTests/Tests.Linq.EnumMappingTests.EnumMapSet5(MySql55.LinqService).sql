﻿BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`BigIntValue`
)
VALUES
(
	101,
	11
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @TestField Int64
SET     @TestField = 12

UPDATE
	`LinqDataTypes` `r`
SET
	`r`.`BigIntValue` = @TestField
WHERE
	`r`.`ID` = 101 AND `r`.`BigIntValue` = 11

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`r`.`BigIntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101 AND `r`.`BigIntValue` = 12
LIMIT @take

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

