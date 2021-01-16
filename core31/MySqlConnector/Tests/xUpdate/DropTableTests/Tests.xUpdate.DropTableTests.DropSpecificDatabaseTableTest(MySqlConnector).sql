BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `testdata2`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdata2`.`DropTableTest` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `testdata2`.`DropTableTest`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdata2`.`DropTableTest` `t1`

