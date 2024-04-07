BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

/* My Test */
UPDATE
	`TestTable` `t1`
SET
	`t1`.`Fd` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestTable`

