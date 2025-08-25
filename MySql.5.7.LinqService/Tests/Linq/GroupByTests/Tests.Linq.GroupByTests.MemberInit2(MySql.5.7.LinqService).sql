BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`,
	`g_1`.`ChildID`

