﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` + 1 IN (
		SELECT
			`c_1`.`ParentID`
		FROM
			`Child` `c_1`
	)

