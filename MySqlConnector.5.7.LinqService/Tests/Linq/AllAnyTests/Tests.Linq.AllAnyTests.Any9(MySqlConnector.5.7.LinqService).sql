﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `g_1` ON `p`.`ParentID` = `g_1`.`ParentID`
		INNER JOIN `Child` `c_1` ON `g_1`.`ChildID` = `c_1`.`ChildID`
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			`GrandChild` `x`
		WHERE
			`c_1`.`ParentID` = `x`.`ParentID` AND `c_1`.`ChildID` = `x`.`ChildID` AND
			`x`.`ParentID` < 0
	)

