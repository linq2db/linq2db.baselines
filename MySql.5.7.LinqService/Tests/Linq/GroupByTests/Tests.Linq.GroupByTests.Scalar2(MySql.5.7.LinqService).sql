BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	MAX(`g_1`.`ChildID`),
	MAX(`g_1`.`ChildID` + `g_1`.`ParentID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

