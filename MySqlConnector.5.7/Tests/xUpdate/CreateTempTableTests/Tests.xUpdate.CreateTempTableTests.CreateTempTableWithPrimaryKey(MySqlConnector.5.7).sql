BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TEMPORARY TABLE `TableWithPrimaryKey`
(
	`Key` INT NOT NULL,

	CONSTRAINT `PK_TableWithPrimaryKey` PRIMARY KEY CLUSTERED (`Key`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TEMPORARY TABLE IF EXISTS `TableWithPrimaryKey`

