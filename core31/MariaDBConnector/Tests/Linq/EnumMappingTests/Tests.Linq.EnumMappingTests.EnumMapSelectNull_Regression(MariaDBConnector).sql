BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql

SELECT
	`r`.`BigIntValue`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

