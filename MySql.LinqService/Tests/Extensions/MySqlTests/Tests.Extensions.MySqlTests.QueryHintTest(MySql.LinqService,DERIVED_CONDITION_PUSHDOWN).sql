﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT /*+ NO_BKA(p) DERIVED_CONDITION_PUSHDOWN(p, c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		CROSS JOIN `Child` `c_1`

