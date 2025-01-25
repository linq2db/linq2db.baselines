BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`ParentID`,
	`q1`.`GrandChildID`
FROM
	`Parent` `t1`
		INNER JOIN `GrandChild` `q1` ON `t1`.`ParentID` = `q1`.`ParentID`

