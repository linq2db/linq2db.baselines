BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	MAX(CASE
		WHEN `g_1`.`ParentID` < 3 THEN `g_1`.`ChildID`
		ELSE NULL
	END)
FROM
	`Child` `g_1`
WHERE
	`g_1`.`ParentID` < 3
GROUP BY
	`g_1`.`ParentID`

