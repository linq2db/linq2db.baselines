﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p1`.`ParentID`,
	NULL
FROM
	`Parent` `p1`
UNION
SELECT
	NULL,
	`p2`.`Value1`
FROM
	`Parent` `p2`

