﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

INSERT INTO `testdataconnector`.`DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdataconnector`.`DropTableTest` `t1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE `testdataconnector`.`DropTableTest`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`testdataconnector`.`DropTableTest` `t1`

