BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

CREATE TABLE IF NOT EXISTS `TempTable`
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
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

