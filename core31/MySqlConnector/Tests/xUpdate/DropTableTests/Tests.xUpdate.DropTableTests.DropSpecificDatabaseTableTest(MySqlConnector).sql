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

DROP TABLE `testdata2`.`DropTableTest`

