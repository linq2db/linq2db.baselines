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

