BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DynamicTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DynamicTable`
(
	`ID`             INT AUTO_INCREMENT NOT NULL,
	`Not Identifier` INT                NOT NULL,
	`Some Value`     INT                NOT NULL,

	CONSTRAINT `PK_DynamicTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int32
SET     @Value_1 = 0

INSERT INTO `DynamicTable`
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(
	@NotIdentifier,
	@Value_1
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`d`.`Not Identifier`
FROM
	`DynamicTable` `d`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `DynamicTable`

