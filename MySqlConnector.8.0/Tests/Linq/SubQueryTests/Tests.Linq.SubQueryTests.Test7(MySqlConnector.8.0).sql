﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			Count(*)
		FROM
			`GrandChild` `g_1`
		WHERE
			`g_1`.`ChildID` = `c_1`.`ChildID`
	)
FROM
	`Child` `c_1`

