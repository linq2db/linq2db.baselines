﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` IN (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ChildID` IN (11, 21, 22, 31, 32, 33, 41, 42, 43, 44, 61, 62, 63, 64, 65, 66, 77)
	)

