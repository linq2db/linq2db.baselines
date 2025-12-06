-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`GrandChild` `a_GrandChildren`
		WHERE
			`p`.`ParentID` = `a_GrandChildren`.`ParentID`
	),
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

