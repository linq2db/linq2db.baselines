-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT DISTINCT
	`g_1`.`ParentID`
FROM
	`GrandChild` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`ChildID`

