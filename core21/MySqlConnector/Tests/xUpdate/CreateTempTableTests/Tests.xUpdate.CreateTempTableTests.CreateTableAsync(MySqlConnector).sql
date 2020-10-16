BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

CREATE TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql (asynchronously)

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE `TempTable`

