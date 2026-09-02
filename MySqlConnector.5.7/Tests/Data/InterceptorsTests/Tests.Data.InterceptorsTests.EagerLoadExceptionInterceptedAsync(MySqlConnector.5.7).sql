-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ParentId`
FROM
	`EagerExceptionParent` `m_1`
		INNER JOIN `EagerExceptionChild` `d` ON `m_1`.`Id` = `d`.`ParentId`

