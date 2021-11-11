BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

/* My Test */
UPDATE
	`TestTable` `t1`
SET
	`t1`.`Id` = 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestTable`

