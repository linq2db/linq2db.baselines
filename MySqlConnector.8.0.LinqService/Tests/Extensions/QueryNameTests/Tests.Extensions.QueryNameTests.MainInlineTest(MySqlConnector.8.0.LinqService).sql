﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ QB_NAME(Main) */
	`p`.`ParentID`,
	`p`.`Value1`,
	`t1`.`COUNT_1`
FROM
	(
		SELECT /*+ QB_NAME(Inline) */
			`g_1`.`ParentID`,
			COUNT(*) as `COUNT_1`
		FROM
			`Child` `g_1`
		GROUP BY
			`g_1`.`ParentID`
	) `t1`,
	`Parent` `p`
WHERE
	`p`.`ParentID` = `t1`.`ParentID`

