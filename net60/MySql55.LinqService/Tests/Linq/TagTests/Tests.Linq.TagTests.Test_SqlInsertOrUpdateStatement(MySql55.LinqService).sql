BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

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

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestTable`

