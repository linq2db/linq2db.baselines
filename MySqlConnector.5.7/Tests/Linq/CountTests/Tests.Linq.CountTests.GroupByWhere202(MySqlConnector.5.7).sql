﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_1`.`ParentID`
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`
HAVING
	COUNT(CASE
		WHEN `g_1`.`ChildID` > 20 THEN 1
		ELSE NULL
	END) > 2 AND COUNT(CASE
		WHEN `g_1`.`ChildID` > 20 THEN 1
		ELSE NULL
	END) IS NOT NULL OR
	COUNT(CASE
		WHEN `g_1`.`ChildID` = 20 THEN 1
		ELSE NULL
	END) > 2 AND COUNT(CASE
		WHEN `g_1`.`ChildID` = 20 THEN 1
		ELSE NULL
	END) IS NOT NULL

