-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	`g_1`.`ParentID`
FROM
	`GrandChild` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`ChildID`

