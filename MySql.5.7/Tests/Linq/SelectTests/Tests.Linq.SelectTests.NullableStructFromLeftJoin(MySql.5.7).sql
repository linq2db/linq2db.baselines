-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`p`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `c_1` ON `c_1`.`ParentID` = `p`.`ParentID`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

