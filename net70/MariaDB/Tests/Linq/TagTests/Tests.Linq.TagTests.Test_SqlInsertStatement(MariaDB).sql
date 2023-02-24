BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

/* My Test */
INSERT INTO `TestTable`
(
	`Id`
)
VALUES
(
	1
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

