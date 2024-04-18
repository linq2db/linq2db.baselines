﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`g_1`.`ParentID`,
	`g_1`.`ChildID`,
	`g_1`.`GrandChildID`
FROM
	`GrandChild` `g_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t`
				LEFT JOIN `Parent` `gr` ON `t`.`ParentID` = `gr`.`ParentID`
		WHERE
			`t`.`ChildID` = `g_1`.`ChildID`
	)

