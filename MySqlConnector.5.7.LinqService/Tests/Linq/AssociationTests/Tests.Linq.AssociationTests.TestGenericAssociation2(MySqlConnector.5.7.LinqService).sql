﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
		INNER JOIN `GrandChild` `g_1` ON `t`.`ParentID` = `g_1`.`ParentID`
WHERE
	`g_1`.`ChildID` > 22
ORDER BY
	`g_1`.`ParentID`

