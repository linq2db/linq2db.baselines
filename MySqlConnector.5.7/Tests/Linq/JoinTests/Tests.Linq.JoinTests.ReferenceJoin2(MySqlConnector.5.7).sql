﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_Child`.`ParentID`,
	`g_1`.`GrandChildID`
FROM
	`GrandChild` `g_1`
		INNER JOIN `Child` `a_Child` ON `g_1`.`ParentID` = `a_Child`.`ParentID` AND `g_1`.`ChildID` = `a_Child`.`ChildID`

