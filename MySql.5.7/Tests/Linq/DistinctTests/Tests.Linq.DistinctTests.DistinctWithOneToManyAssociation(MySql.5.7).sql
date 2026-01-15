-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildCount`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`,
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `a_Children`
				WHERE
					`p`.`ParentID` = `a_Children`.`ParentID`
			) as `ChildCount`
		FROM
			`Parent` `p`
	) `t1`
ORDER BY
	`t1`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

