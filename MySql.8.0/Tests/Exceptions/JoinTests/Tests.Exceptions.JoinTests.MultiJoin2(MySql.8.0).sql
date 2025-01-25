BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p1` ON `c_1`.`ParentID` = `p1`.`ParentID`

