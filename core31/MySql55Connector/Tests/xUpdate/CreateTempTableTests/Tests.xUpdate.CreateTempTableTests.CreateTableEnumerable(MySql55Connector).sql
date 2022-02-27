BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `TempTable`
(
	`ID`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

