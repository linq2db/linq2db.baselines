BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(10)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(20)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 30

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

