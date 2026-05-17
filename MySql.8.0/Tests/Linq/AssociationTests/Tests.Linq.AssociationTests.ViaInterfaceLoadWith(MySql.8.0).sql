-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`MainEntityId`
FROM
	`MainEntity` `m_1`
		INNER JOIN `SubEntity` `d` ON `m_1`.`Id` = `d`.`MainEntityId`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`Id`
FROM
	`MainEntity` `t1`

