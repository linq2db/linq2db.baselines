BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

SELECT
	`entity`.`ID`,
	`entity`.`BigIntValue`
FROM
	`LinqDataTypes` `entity`
WHERE
	`entity`.`BigIntValue` = 12

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

