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
DECLARE @Fd Int32
SET     @Fd = 1

/* My Test */
UPDATE
	`TestTable` `t1`
SET
	`t1`.`Fd` = @Fd

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TestTable`

