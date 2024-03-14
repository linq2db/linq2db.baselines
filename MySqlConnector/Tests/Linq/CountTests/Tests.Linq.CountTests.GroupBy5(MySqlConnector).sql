﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	`g_2`.`Max_1`,
	`g_2`.`Count_1` + 1,
	`g_2`.`Count_1`,
	`g_2`.`Count_2`
FROM
	(
		SELECT
			Max(`g_1`.`ChildID`) as `Max_1`,
			Count(CASE
				WHEN `g_1`.`ChildID` > 20 THEN 1
				ELSE NULL
			END) as `Count_1`,
			Count(CASE
				WHEN `g_1`.`ChildID` > 10 THEN 1
				ELSE NULL
			END) as `Count_2`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`

