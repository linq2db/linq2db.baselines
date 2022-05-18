﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `testdataconnector`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdataconnector`.`DropTableTest` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE `testdataconnector`.`DropTableTest`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdataconnector`.`DropTableTest` `t1`

