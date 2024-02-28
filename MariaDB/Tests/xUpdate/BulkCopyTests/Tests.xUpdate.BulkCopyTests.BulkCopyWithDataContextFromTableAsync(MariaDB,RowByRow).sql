BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
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
-- MariaDB MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(10)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(20)

BeforeExecute
-- MariaDB MySqlConnector MySql (asynchronously)
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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

