﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_2`.`MAX_1`,
	`g_2`.`COUNT_1` + 1,
	`g_2`.`COUNT_1`,
	`g_2`.`COUNT_2`
FROM
	(
		SELECT
			COUNT(CASE
				WHEN `g_1`.`ChildID` > 20 THEN 1
				ELSE NULL
			END) as `COUNT_1`,
			MAX(`g_1`.`ChildID`) as `MAX_1`,
			COUNT(CASE
				WHEN `g_1`.`ChildID` > 10 THEN 1
				ELSE NULL
			END) as `COUNT_2`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`

