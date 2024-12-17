﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`,
	`g_1`.`GrandChildID`
FROM
	`GrandChild` `g_1`
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			`Child` `t`
				LEFT JOIN `Parent` `i` ON `t`.`ParentID` = `i`.`ParentID`
		WHERE
			`t`.`ChildID` = `g_1`.`ChildID`
	)

