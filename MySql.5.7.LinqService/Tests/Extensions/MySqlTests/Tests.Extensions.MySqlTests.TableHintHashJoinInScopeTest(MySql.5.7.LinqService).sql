﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ HASH_JOIN(p) HASH_JOIN(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

