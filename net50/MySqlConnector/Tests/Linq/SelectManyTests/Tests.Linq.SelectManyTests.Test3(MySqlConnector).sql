﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `g_1` ON `p`.`ParentID` = `g_1`.`ParentID`
		CROSS JOIN `Person` `t`

