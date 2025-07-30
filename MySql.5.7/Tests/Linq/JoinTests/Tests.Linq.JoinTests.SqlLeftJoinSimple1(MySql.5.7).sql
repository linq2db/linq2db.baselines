BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

