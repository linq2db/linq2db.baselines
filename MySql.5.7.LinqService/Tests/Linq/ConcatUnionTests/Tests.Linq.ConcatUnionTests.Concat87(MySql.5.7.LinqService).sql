﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`ParentID`,
	NULL
FROM
	`Child` `c_1`
UNION ALL
SELECT
	NULL,
	`c_2`.`Value1`
FROM
	`Parent` `c_2`

