﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ NO_HASH_JOIN(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

