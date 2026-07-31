-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector
-- Batch 1
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

-- Batch 2
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`
