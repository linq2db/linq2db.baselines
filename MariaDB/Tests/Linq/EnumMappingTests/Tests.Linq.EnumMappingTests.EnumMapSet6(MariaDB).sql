BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `LinqDataTypes`
(
	`ID`,
	`IntValue`
)
VALUES
(
	101,
	3
)

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`LinqDataTypes` `r`
SET
	`r`.`IntValue` = 4
WHERE
	`r`.`ID` = 101 AND `r`.`IntValue` = 3

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` = 101 AND `r`.`IntValue` = 4

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 102

DELETE   `r`
FROM
	`LinqDataTypes` `r`
WHERE
	`r`.`ID` >= 101 AND `r`.`ID` < @Id

