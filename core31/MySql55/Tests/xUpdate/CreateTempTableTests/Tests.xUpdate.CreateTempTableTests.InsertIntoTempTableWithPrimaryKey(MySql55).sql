BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TEMPORARY TABLE `TableWithPrimaryKey2`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey2` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `TableWithPrimaryKey2`
(
	`Key`
)
VALUES
(1)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TableWithPrimaryKey2`

