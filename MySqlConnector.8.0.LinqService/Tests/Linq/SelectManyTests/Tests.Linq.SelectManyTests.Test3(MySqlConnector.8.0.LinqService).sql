﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`Parent` `t1`
		INNER JOIN `GrandChild` `g_1` ON `t1`.`ParentID` = `g_1`.`ParentID` AND `g_1`.`ParentID` IS NOT NULL
		CROSS JOIN `Person` `t`

