﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`Value1`,
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` = 2 OR `p`.`Value1` = 1

