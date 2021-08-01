BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

/* My Test */
DROP TABLE `TestTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

