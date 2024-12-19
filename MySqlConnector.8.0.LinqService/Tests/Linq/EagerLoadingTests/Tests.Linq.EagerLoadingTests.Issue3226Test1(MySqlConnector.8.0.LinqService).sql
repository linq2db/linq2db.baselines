BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Item`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Item`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ItemValue`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `ItemValue`
(
	`Id`     INT             NOT NULL,
	`ItemId` INT             NOT NULL,
	`Value`  DECIMAL(29, 10) NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`Id`,
	`x`.`Text`
FROM
	`Item` `x`
ORDER BY
	(
		SELECT
			SUM(`a_Values`.`Value`)
		FROM
			`ItemValue` `a_Values`
		WHERE
			`x`.`Id` = `a_Values`.`ItemId`
	)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `ItemValue`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Item`

