-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`,
	`i`.`ParentID`,
	`i`.`Value1`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `i` ON `t`.`ParentID` = `i`.`ParentID`

