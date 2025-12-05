-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(CASE
		WHEN `g_1`.`ChildID` < 30 AND `g_1`.`ChildID` >= 20 THEN 1
		ELSE NULL
	END)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

