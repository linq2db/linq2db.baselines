BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Item`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Item`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Item` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ItemValue`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `ItemValue`
(
	`Id`     INT     NOT NULL,
	`ItemId` INT     NOT NULL,
	`Value`  DECIMAL NOT NULL
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Value`
FROM
	`Item` `m_1`
		INNER JOIN `ItemValue` `d` ON `m_1`.`Id` = `d`.`ItemId`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `ItemValue`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Item`

