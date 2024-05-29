BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `DynamicTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `DynamicTable`
(
	`ID`             INT AUTO_INCREMENT NOT NULL,
	`Not Identifier` INT                NOT NULL,
	`Some Value`     INT                NOT NULL,

	CONSTRAINT `PK_DynamicTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value Int32
SET     @Value = 0

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`d`.`Not Identifier`
FROM
	`DynamicTable` `d`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `DynamicTable`

