BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE `TableWithPrimaryKey2`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey2` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `TableWithPrimaryKey2`
(
	`Key`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `TableWithPrimaryKey2`

