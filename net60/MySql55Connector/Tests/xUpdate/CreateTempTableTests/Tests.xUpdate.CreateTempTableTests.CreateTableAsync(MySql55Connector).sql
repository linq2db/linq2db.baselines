BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

