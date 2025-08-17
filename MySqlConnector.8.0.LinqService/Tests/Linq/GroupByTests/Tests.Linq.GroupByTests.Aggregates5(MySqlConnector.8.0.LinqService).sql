BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(CASE
		WHEN `g_1`.`ChildID` > 30 THEN 1
		ELSE NULL
	END),
	COUNT(CASE
		WHEN `g_1`.`ChildID` > 30 THEN 1
		ELSE NULL
	END),
	COUNT(*)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

