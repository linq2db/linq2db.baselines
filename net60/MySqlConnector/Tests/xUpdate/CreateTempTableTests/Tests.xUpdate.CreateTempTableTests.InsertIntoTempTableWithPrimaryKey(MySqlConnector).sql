BeforeExecute
-- MySqlConnector MySql

CREATE TEMPORARY TABLE `TableWithPrimaryKey`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `TableWithPrimaryKey`
(
	`Key`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TableWithPrimaryKey`

