﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
INSERT BULK `SimpleBulkCopyTable`(Id

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

