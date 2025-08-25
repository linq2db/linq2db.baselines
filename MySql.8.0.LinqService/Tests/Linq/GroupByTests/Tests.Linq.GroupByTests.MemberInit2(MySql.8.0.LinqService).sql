BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`ChildID`

