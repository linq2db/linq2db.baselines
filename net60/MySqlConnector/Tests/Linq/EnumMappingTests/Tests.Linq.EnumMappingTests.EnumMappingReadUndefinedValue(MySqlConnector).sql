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
	5
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`r`.`ID`,
	`r`.`BigIntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

