BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

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

DROP TABLE IF EXISTS `TempTable`

