BeforeExecute
-- MySql

CREATE TEMPORARY TABLE `TableWithPrimaryKey`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MySql

INSERT INTO `TableWithPrimaryKey`
(
	`Key`
)
VALUES
(1)

BeforeExecute
-- MySql

DROP TABLE IF EXISTS `TableWithPrimaryKey`

