﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`A`,
	`t1`.`ParentID`
FROM
	(
		SELECT
			0 as `A`,
			`g_1`.`ParentID`
		FROM
			`Parent` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `t1`
ORDER BY
	`t1`.`A`

