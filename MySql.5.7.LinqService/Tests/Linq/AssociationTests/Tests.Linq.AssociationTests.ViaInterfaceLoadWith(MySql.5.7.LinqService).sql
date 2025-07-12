BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`MainEntityId`
FROM
	`MainEntity` `m_1`
		INNER JOIN `SubEntity` `d` ON `m_1`.`Id` = `d`.`MainEntityId`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`Id`
FROM
	`MainEntity` `t1`

