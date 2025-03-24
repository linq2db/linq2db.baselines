﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_2`.`Key_1`
FROM
	(
		SELECT
			`g_1`.`ParentID` as `Key_1`,
			COUNT(CASE
				WHEN `g_1`.`ChildID` > 20 THEN 1
				ELSE NULL
			END) as `COUNT_1`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
WHERE
	`g_2`.`COUNT_1` > 2 OR `g_2`.`Key_1` > 2

