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
INSERT BULK `SimpleBulkCopyTable`(Id

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

