-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
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
	`p`.`ParentID`
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

