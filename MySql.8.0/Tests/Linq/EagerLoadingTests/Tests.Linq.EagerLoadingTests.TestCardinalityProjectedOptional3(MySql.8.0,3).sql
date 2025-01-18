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
			`a_ObjectBOptional`.`Id`
		FROM
			`EntityA` `e`
				LEFT JOIN `EntityB` `a_ObjectBOptional` ON `e`.`FK` = `a_ObjectBOptional`.`Id`
	) `m_1`
		INNER JOIN `EntityD` `d` ON `m_1`.`Id` = `d`.`FK` OR `m_1`.`Id` IS NULL AND `d`.`FK` IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`e`.`Id`,
	`a_ObjectBOptional`.`Id`,
	`a_ObjectBOptional`.`Id`,
	`a_ObjectCRequired`.`Id`,
	`a_ObjectCRequired`.`FK`
FROM
	`EntityA` `e`
		LEFT JOIN `EntityB` `a_ObjectBOptional` ON `e`.`FK` = `a_ObjectBOptional`.`Id`
		LEFT JOIN `EntityC` `a_ObjectCRequired` ON `a_ObjectBOptional`.`FK` = `a_ObjectCRequired`.`Id`

