﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`ParentID`,
	`t`.`ChildID`,
	`i`.`ParentID`,
	`i`.`Value1`
FROM
	`Child` `t`
		LEFT JOIN `Parent` `i` ON `t`.`ParentID` = `i`.`ParentID`

