﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			`c_1`.`ParentID` + 1
		FROM
			`Child` `c_1`
		LIMIT 1
	)
FROM
	`Parent` `p`

