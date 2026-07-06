-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ParentId`
FROM
	`EagerExceptionParent` `m_1`
		INNER JOIN `EagerExceptionChild` `d` ON `m_1`.`Id` = `d`.`ParentId`
;
SELECT
	`t1`.`Id`
FROM
	`EagerExceptionParent` `t1`

