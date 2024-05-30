BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicTable`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DynamicTable`
(
	`ID`             INT AUTO_INCREMENT NOT NULL,
	`Not Identifier` INT                NOT NULL,
	`Some Value`     INT                NOT NULL,

	CONSTRAINT `PK_DynamicTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`d`.`Not Identifier`
FROM
	`DynamicTable` `d`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicTable`

