﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `c_1`
		WHERE
			`p1`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` + 1 < `p1`.`ParentID` + 2 AND
			`c_1`.`ParentID` + 1 < `p1`.`ParentID` + 2
	)
FROM
	`Parent` `p1`
WHERE
	`p1`.`ParentID` > -1 AND `p1`.`ParentID` > -2

