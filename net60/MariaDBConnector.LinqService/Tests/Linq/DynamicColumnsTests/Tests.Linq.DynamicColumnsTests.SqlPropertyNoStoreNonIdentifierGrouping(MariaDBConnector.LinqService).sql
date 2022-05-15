﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicTable`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DynamicTable`
(
	`ID`             INT AUTO_INCREMENT NOT NULL,
	`Not Identifier` INT                NOT NULL,
	`Some Value`     INT                NOT NULL,

	CONSTRAINT `PK_DynamicTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int32
SET     @Value_1 = 5

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
-- MariaDBConnector MySqlConnector MySql
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int32
SET     @Value_1 = 5

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
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`Not Identifier`,
	Count(*),
	Sum(`t1`.`Some Value`)
FROM
	`DynamicTable` `t1`
GROUP BY
	`t1`.`Not Identifier`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicTable`

