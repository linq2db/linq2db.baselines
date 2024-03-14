BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DynamicTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `DynamicTable`
(
	`ID`             INT AUTO_INCREMENT NOT NULL,
	`Not Identifier` INT                NOT NULL,
	`Some Value`     INT                NOT NULL,

	CONSTRAINT `PK_DynamicTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value Int32
SET     @Value = 5

INSERT INTO `DynamicTable`
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value Int32
SET     @Value = 5

INSERT INTO `DynamicTable`
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(
	@NotIdentifier,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`g_1`.`Not Identifier`,
	Count(*),
	Sum(`g_1`.`Some Value`)
FROM
	`DynamicTable` `g_1`
GROUP BY
	`g_1`.`Not Identifier`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DynamicTable`

