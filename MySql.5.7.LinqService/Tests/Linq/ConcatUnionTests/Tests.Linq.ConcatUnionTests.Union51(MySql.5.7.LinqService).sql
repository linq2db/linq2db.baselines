﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`
UNION
SELECT
	`p2`.`ParentID`,
	NULL
FROM
	`Parent` `p2`

