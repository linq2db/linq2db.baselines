BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTest`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DropTableTest`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `DropTableTest`
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
	`DropTableTest` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `DropTableTest`

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`t1`.`ID`
FROM
	`DropTableTest` `t1`

