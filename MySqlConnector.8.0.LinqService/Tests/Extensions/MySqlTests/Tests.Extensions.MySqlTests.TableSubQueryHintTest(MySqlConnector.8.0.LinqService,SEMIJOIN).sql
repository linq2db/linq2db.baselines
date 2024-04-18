﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT /*+ SEMIJOIN(@qq FIRSTMATCH, LOOSESCAN) */
	`p_1`.`ParentID`,
	`p_1`.`Value1`
FROM
	(
		SELECT /*+ QB_NAME(qq) */
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`,
			`Child` `c_1`
	) `p_1`

