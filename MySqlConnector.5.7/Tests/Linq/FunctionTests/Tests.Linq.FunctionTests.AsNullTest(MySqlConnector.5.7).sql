﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`,
	`Parent` `p2`
WHERE
	`p1`.`Value1` = `p2`.`Value1` AND `p1`.`Value1` IS NOT NULL AND `p2`.`Value1` IS NOT NULL OR
	`p1`.`Value1` IS NULL AND `p2`.`Value1` IS NULL

