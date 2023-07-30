BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `DropTableTest`
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
	`DropTableTest` `t1`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

