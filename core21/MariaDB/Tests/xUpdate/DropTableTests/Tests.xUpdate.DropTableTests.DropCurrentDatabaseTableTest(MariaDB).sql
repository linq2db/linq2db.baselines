BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `DropTableTest`
(
	`ID`
)
VALUES
(
	123
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

