BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
INSERT ASYNC BULK `SimpleBulkCopyTable`(Id

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

