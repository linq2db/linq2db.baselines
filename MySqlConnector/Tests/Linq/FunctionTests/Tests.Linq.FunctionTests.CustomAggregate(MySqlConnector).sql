﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	Sum(`g_1`.`Value1`),
	SUM(`g_1`.`Value1`)
FROM
	`Parent` `g_1`
GROUP BY
	`g_1`.`ParentID`

