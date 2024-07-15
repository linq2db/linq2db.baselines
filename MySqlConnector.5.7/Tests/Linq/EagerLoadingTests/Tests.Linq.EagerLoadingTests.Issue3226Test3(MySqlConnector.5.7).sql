BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Item`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `Item`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `ItemValue`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `ItemValue`
(
	`Id`     INT     NOT NULL,
	`ItemId` INT     NOT NULL,
	`Value`  DECIMAL NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`Id`,
	`d`.`Value`
FROM
	`Item` `m_1`
		INNER JOIN `ItemValue` `d` ON `m_1`.`Id` = `d`.`ItemId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `ItemValue`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `Item`

