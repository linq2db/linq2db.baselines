BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

INSERT INTO `DropTableTest`
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
	`DropTableTest` `t1`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

