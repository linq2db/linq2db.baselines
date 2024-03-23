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

INSERT INTO `DynamicTable`
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`g_1`.`Not Identifier`,
	COUNT(*),
	SUM(`g_1`.`Some Value`)
FROM
	`DynamicTable` `g_1`
GROUP BY
	`g_1`.`Not Identifier`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `DynamicTable`

