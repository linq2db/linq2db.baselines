BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`FK`
FROM
	(
		SELECT DISTINCT
			`a_ObjectB`.`Id`
		FROM
			`EntityA` `e`
				INNER JOIN `EntityB` `a_ObjectB` ON `e`.`FK` = `a_ObjectB`.`Id`
	) `m_1`
		INNER JOIN `EntityD` `d` ON `m_1`.`Id` = `d`.`FK`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`e`.`Id`,
	`a_ObjectB`.`Id`
FROM
	`EntityA` `e`
		INNER JOIN `EntityB` `a_ObjectB` ON `e`.`FK` = `a_ObjectB`.`Id`

