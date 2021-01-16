BeforeExecute
-- MySqlConnector MySql

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
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7)

BeforeExecute
-- MySqlConnector MySql (asynchronously)

DROP TABLE IF EXISTS `TempTable`

