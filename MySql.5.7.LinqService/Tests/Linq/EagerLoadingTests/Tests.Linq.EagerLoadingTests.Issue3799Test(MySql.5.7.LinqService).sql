BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`Children`,
	`d`.`Name`
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					`a_Children`.`Id`
				FROM
					`Test3799Item` `a_Children`
				WHERE
					`item_1`.`Id` = `a_Children`.`ParentId`
				LIMIT 1
			) as `Children`
		FROM
			`Test3799Item` `item_1`
	) `m_1`
		INNER JOIN `Test3799Item` `d` ON `m_1`.`Children` = `d`.`ParentId` OR `m_1`.`Children` IS NULL AND `d`.`ParentId` IS NULL

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`item_1`.`Name`,
	(
		SELECT
			`a_Children`.`Name`
		FROM
			`Test3799Item` `a_Children`
		WHERE
			`item_1`.`Id` = `a_Children`.`ParentId`
		LIMIT 1
	),
	(
		SELECT
			`a_Children_1`.`Id`
		FROM
			`Test3799Item` `a_Children_1`
		WHERE
			`item_1`.`Id` = `a_Children_1`.`ParentId`
		LIMIT 1
	)
FROM
	`Test3799Item` `item_1`

