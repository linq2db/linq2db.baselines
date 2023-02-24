BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

/* My Test */
DROP TABLE `TestTable`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

