BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySqlConnector MySql (asynchronously)

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `TempTable`

