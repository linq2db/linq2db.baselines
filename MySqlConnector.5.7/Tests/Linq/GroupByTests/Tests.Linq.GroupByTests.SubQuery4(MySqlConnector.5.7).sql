﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_2`.`n`,
	SUM(`g_2`.`ParentID`)
FROM
	(
		SELECT
			`g_1`.`ChildID` + 1 as `n`,
			`g_1`.`ParentID`
		FROM
			`Child` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`n`

