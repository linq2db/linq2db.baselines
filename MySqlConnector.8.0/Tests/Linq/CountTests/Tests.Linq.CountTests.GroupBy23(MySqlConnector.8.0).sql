﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(CASE
		WHEN `g_1`.`ParentID` + 1 < 3 THEN 1
		ELSE NULL
	END)
FROM
	`Parent` `g_1`
WHERE
	`g_1`.`ParentID` + 2 > 1
GROUP BY
	`g_1`.`Value1`

