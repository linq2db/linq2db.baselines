-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`Id`,
	Coalesce((
		SELECT
			GROUP_CONCAT(Coalesce(`a_Children`.`Value`, '') ORDER BY `a_Children`.`Id` SEPARATOR '')
		FROM
			`ConcatChild` `a_Children`
		WHERE
			`p`.`Id` = `a_Children`.`ParentId`
	), '')
FROM
	`ConcatParent` `p`
ORDER BY
	`p`.`Id`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`Id`,
	`d`.`Id`,
	`d`.`ParentId`,
	`d`.`Value`
FROM
	`ConcatParent` `m_1`
		INNER JOIN `ConcatChild` `d` ON `m_1`.`Id` = `d`.`ParentId`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Name`
FROM
	`ConcatParent` `t1`

