BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BaseTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `BaseTable`
(
	`Value` INT NOT NULL,
	`Id`    INT NOT NULL,

	CONSTRAINT `PK_BaseTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `BaseTable`
(
	`Value`,
	`Id`
)
VALUES
(100,1)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `BaseTable`

