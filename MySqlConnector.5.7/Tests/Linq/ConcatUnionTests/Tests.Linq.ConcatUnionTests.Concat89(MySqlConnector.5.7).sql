﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ParentID`
FROM
	`Child` `c_1`
UNION ALL
SELECT
	`c_2`.`ParentID`,
	NULL
FROM
	`Parent` `c_2`

