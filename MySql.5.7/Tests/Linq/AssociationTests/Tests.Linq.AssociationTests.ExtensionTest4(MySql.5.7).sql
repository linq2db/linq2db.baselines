-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Parent`.`ParentID`,
	`a_Parent`.`Value1`
FROM
	`Child` `t1`
		LEFT JOIN `Parent` `a_Parent` ON `t1`.`ParentID` = `a_Parent`.`ParentID`

