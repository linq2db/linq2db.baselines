﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`c_2`.`ParentID`,
	`c_2`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN (
			SELECT DISTINCT
				`c_1`.`ParentID`,
				`c_1`.`ChildID`
			FROM
				`Child` `c_1`
		) `c_2` ON `o`.`ParentID` = `c_2`.`ParentID`

