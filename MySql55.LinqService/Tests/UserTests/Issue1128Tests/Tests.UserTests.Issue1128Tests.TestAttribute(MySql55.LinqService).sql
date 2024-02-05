BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `AttributeBase`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `AttributeBase`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AttributeBase` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `AttributeBase`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `AttributeBase`

