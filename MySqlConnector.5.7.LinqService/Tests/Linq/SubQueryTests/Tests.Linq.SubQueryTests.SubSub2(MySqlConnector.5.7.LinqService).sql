﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			`a_Children`.`ParentID` + 1
		FROM
			`Child` `a_Children`
		WHERE
			`p1`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` + 1 < `p1`.`ParentID` + 2
		LIMIT 1
	)
FROM
	`Parent` `p1`
WHERE
	`p1`.`ParentID` > -1 AND `p1`.`ParentID` > -2

