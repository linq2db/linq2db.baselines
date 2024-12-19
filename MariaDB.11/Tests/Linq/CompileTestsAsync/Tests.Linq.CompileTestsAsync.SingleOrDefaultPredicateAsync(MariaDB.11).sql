BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AsyncDataTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `AsyncDataTable`
(
	`Id`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @p Int32
SET     @p = 2

SELECT
	@p,
	`c_1`.`Id`
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` = @p
LIMIT 2

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `AsyncDataTable`

