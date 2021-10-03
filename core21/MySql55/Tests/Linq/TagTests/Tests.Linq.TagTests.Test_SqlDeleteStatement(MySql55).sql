BeforeExecute
-- MySql55 MySql

CREATE TABLE `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql

/* My Test */
DELETE `t1`
FROM
	`TestTable` `t1`

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TestTable`

