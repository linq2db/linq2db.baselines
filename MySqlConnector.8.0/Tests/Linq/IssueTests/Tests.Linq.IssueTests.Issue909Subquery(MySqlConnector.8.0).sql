﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND (`p`.`Value1` NOT IN (1, 2, 3) OR `p`.`Value1` IS NULL)
	)

