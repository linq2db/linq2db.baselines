BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t2`.`ParentID`,
	`t2`.`ChildID`,
	`t2`.`GrandChildID`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `t1`
		CROSS JOIN `GrandChild` `t2`

