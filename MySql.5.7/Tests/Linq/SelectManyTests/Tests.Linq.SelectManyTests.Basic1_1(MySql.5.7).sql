BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`,
	`t2`.`GrandChildID`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `t1`
		CROSS JOIN `GrandChild` `t2`

