﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT /*+ MAX_EXECUTION_TIME(10) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Child` `c_1`
		INNER JOIN `Parent` `p` ON `c_1`.`ParentID` = `p`.`ParentID`

