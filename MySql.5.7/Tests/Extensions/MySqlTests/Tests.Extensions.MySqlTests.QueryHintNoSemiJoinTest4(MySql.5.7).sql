﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ NO_SEMIJOIN(FIRSTMATCH, LOOSESCAN) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`,
	`Child` `c_1`

