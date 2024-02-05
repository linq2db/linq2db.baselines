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
-- MySql55Connector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
INSERT ASYNC BULK `SimpleBulkCopyTable`(Id

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(10)

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(20)

BeforeExecute
INSERT ASYNC BULK `SimpleBulkCopyTable`(Id

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

