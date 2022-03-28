BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

/* My Test */
DELETE   `t1`
FROM
	`TestTable` `t1`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

