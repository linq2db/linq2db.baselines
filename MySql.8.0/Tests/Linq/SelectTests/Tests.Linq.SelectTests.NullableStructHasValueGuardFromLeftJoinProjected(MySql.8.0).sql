-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Parent` `x`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `x`.`ParentID`

