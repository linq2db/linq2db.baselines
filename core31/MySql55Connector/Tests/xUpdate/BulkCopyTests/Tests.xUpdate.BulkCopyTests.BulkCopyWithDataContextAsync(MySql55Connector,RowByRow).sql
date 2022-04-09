BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

