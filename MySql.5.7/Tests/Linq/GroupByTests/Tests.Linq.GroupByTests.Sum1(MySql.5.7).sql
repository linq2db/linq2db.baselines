-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	SUM(`g_1`.`ChildID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

