﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	(
		SELECT
			Count(*)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` = `p`.`ParentID` AND
			Cast(`c_1`.`ChildID` as DECIMAL) <> 0
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

