BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

SELECT
	`r`.`ID`,
	`r`.`BigIntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

