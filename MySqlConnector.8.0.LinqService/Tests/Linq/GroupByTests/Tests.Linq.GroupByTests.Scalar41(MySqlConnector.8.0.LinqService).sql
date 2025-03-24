﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_2`.`MIN_1`
FROM
	(
		SELECT
			MIN(CASE
				WHEN `g_1`.`ParentID` > 2 THEN `g_1`.`ChildID`
				ELSE NULL
			END) as `cond`,
			MIN(CASE
				WHEN `g_1`.`ParentID` > 2 THEN `g_1`.`ChildID`
				ELSE NULL
			END) as `MIN_1`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
WHERE
	`g_2`.`cond` IS NOT NULL

