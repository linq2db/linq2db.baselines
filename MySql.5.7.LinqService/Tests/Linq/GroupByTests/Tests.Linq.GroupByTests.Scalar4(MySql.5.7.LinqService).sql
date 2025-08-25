BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	`g_2`.`MIN_2`
FROM
	(
		SELECT
			MIN(CASE
				WHEN `g_1`.`ParentID` > 2 THEN `g_1`.`ChildID`
				ELSE NULL
			END) as `MIN_1`,
			MIN(CASE
				WHEN `g_1`.`ParentID` > 2 THEN `g_1`.`ChildID`
				ELSE NULL
			END) as `MIN_2`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
WHERE
	`g_2`.`MIN_1` IS NOT NULL

