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

INSERT INTO `DynamicTable`
(
	`Not Identifier`,
	`Some Value`
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`g_1`.`Not Identifier`,
	COUNT(*),
	SUM(`g_1`.`Some Value`)
FROM
	`DynamicTable` `g_1`
GROUP BY
	`g_1`.`Not Identifier`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicTable`

