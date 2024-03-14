BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`g_2`.`ParentID`,
	Min(`g_2`.`ChildID`),
	Count(CASE
		WHEN `g_2`.`ChildID` > 25 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			`g_1`.`ParentID` + 1 as `ParentID`,
			`g_1`.`ChildID`
		FROM
			`Child` `g_1`
		WHERE
			`g_1`.`ParentID` > 0
	) `g_2`
GROUP BY
	`g_2`.`ParentID`

