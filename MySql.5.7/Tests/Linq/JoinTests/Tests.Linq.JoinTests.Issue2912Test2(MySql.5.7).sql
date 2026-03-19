-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`user_1`.`ParentID`
FROM
	`Parent` `t1`
		LEFT JOIN `GrandChild` `names_1` ON `t1`.`ParentID` = `names_1`.`ParentID`
		LEFT JOIN `Parent` `user_1` ON `t1`.`ParentID` = `user_1`.`ParentID`

