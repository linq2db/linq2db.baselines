-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`a_Parent`.`ParentID`
		FROM
			`Parent` `p`
				INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
				LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`a_Parent`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`

