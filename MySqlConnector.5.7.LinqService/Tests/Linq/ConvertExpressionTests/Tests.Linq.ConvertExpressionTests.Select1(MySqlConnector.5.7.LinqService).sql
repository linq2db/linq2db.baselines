﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			Sum(`c_1`.`ChildID`)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` > 1
	)
FROM
	`Parent` `p`

