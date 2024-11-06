BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`Value1`
FROM
	(
		SELECT DISTINCT
			`ch`.`ParentID`
		FROM
			`Child` `ch`
	) `m_1`,
	`Parent` `d`
		LEFT JOIN `Parent` `a_Parent` ON `m_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`d`.`ParentID` = `a_Parent`.`ParentID`

