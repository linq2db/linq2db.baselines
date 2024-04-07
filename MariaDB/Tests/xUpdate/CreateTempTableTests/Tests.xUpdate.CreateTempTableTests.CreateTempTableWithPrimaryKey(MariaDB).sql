BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TEMPORARY TABLE `TableWithPrimaryKey`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithPrimaryKey`

