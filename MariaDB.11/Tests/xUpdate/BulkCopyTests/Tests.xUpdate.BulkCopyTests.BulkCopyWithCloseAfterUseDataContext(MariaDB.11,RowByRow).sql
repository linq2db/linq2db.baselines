BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

