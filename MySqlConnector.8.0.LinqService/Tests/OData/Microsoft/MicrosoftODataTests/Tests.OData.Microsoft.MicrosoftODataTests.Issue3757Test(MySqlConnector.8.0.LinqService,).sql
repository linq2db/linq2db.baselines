BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3757Level1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue3757Level1`
(
	`ID`     INT           NOT NULL,
	`ValS`   VARCHAR(4000)     NULL,
	`ValB`   BOOLEAN           NULL,
	`ValInt` INT               NULL,

	CONSTRAINT `PK_Issue3757Level1` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3757Level2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Issue3757Level2`
(
	`ID`       INT           NOT NULL,
	`ParentId` INT           NOT NULL,
	`ValS`     VARCHAR(4000)     NULL,
	`ValB`     BOOLEAN           NULL,
	`ValInt`   INT               NULL,

	CONSTRAINT `PK_Issue3757Level2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ID`,
	`m_1`.`ValS`,
	`d`.`ID`,
	`d`.`ValB`,
	`d`.`ValInt`
FROM
	`Issue3757Level1` `m_1`
		INNER JOIN `Issue3757Level2` `d` ON `m_1`.`ID` = `d`.`ParentId`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`l1`.`ID`,
	`l1`.`ValB`,
	`l1`.`ValS`,
	`l1`.`ValInt`
FROM
	`Issue3757Level1` `l1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3757Level2`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Issue3757Level1`

