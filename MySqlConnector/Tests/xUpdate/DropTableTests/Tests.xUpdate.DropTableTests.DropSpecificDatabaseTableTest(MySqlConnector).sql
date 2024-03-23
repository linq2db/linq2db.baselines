BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySqlConnector MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `testdataconnector`.`DropTableTest`
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
	`testdataconnector`.`DropTableTest` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `testdataconnector`.`DropTableTest`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdataconnector`.`DropTableTest` `t1`

