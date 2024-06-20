BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `MessageEventDTO`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `MessageEventDTO`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTO` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `MessageEventDTOTb2`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_MessageEventDTOTb2` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `MessageEventDTOTb2`
(
	`Id`
)
SELECT
	`x`.`Id`
FROM
	`MessageEventDTO` `x`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `MessageEventDTOTb2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `MessageEventDTO`

