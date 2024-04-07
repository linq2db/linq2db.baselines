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
-- MariaDB MySqlConnector MySql

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
INSERT BULK `SimpleBulkCopyTable`(Id

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

