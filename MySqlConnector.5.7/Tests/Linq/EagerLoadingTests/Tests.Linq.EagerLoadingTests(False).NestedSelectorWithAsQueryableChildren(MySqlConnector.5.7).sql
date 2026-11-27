-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`m_1`.`Id`,
	`d`.`Name`
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					`a_Children`.`Id`
				FROM
					`RecursiveChildrenItem` `a_Children`
				WHERE
					`item_1`.`Id` = `a_Children`.`ParentId`
				LIMIT 1
			) as `Id`
		FROM
			`RecursiveChildrenItem` `item_1`
	) `m_1`
		INNER JOIN `RecursiveChildrenItem` `d` ON `m_1`.`Id` = `d`.`ParentId`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`item_1`.`Name`,
	(
		SELECT
			`a_Children`.`Name`
		FROM
			`RecursiveChildrenItem` `a_Children`
		WHERE
			`item_1`.`Id` = `a_Children`.`ParentId`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_1`.`Id`
		FROM
			`RecursiveChildrenItem` `a_Children_1`
		WHERE
			`item_1`.`Id` = `a_Children_1`.`ParentId`
		LIMIT 1
	)
FROM
	`RecursiveChildrenItem` `item_1`

