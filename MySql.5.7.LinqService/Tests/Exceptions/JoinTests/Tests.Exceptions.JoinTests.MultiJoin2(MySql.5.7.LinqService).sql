BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p1` ON `c_1`.`ParentID` = `p1`.`ParentID`

