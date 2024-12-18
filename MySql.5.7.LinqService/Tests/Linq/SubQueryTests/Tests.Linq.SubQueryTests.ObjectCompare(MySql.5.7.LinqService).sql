BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID` + 1
FROM
	`Parent` `p`,
	`Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`c_1`.`ChildID` > -1 AND
	`p`.`ParentID` = `a_Parent`.`ParentID` AND
	`a_Parent`.`ParentID` IS NOT NULL AND
	(`p`.`Value1` = `a_Parent`.`Value1` AND `p`.`Value1` IS NOT NULL AND `a_Parent`.`Value1` IS NOT NULL OR `p`.`Value1` IS NULL AND `a_Parent`.`Value1` IS NULL)

