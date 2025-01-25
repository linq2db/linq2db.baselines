BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

/* My Test */
INSERT INTO `TestTable`
(
	`Id`,
	`Fd`
)
VALUES
(
	1,
	2
)
ON DUPLICATE KEY UPDATE
	`Fd` = 2

