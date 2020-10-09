BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DynamicTable`
(
	`ID`             INT AUTO_INCREMENT NOT NULL,
	`Not Identifier` INT                NOT NULL,
	`Some Value`     INT                NOT NULL,

	CONSTRAINT `PK_DynamicTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `DynamicTable`
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(77,0)

BeforeExecute
-- MySqlConnector MySql

SELECT 
	`d`.`Not Identifier`
FROM
	`DynamicTable` `d`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `DynamicTable`

