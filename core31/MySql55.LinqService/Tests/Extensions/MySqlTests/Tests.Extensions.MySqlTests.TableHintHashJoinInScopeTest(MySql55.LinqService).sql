﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ HASH_JOIN(p) HASH_JOIN(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

