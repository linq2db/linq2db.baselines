BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TEMPORARY TABLE `TableWithPrimaryKey`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableWithPrimaryKey`

