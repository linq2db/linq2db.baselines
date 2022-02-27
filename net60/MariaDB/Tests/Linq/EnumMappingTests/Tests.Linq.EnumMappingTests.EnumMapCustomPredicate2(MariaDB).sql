BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

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

SELECT
	`entity`.`ID`,
	`entity`.`BigIntValue`,
	`entity`.`IntValue`
FROM
	`LinqDataTypes` `entity`
WHERE
	`entity`.`BigIntValue` = 12

BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

