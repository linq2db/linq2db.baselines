﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	SUM(`g_1`.`ChildID`),
	MIN(`g_1`.`ChildID`),
	MAX(`g_1`.`ChildID`),
	AVG(`g_1`.`ChildID`),
	COUNT(*)
FROM
	`Child` `g_1`
GROUP BY
	`g_1`.`ParentID`

