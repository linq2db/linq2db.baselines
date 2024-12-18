BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`p`.`ParentID` = `a_Parent`.`ParentID` AND `a_Parent`.`ParentID` IS NOT NULL AND
	(`p`.`Value1` = `a_Parent`.`Value1` AND `p`.`Value1` IS NOT NULL AND `a_Parent`.`Value1` IS NOT NULL OR `p`.`Value1` IS NULL AND `a_Parent`.`Value1` IS NULL)
ORDER BY
	`p`.`ParentID`,
	`c_1`.`ChildID`

