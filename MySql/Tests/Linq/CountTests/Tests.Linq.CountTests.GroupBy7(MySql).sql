BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*),
	Max(`g_1`.`ChildID`)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

