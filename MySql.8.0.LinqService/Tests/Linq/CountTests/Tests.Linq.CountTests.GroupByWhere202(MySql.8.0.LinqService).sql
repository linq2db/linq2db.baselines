BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`g_2`.`ParentID`
FROM
	(
		SELECT
			COUNT(CASE
				WHEN `g_1`.`ChildID` > 20 THEN 1
				ELSE NULL
			END) as `COUNT_1`,
			COUNT(CASE
				WHEN `g_1`.`ChildID` = 20 THEN 1
				ELSE NULL
			END) as `COUNT_2`,
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
WHERE
	(`g_2`.`COUNT_1` > 2 OR `g_2`.`COUNT_2` > 2)

