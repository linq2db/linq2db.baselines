BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

