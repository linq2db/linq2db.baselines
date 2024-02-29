BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

