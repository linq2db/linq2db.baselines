﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	SUM(`c2`.`ChildID`)
FROM
	`Child` `g_1`
		INNER JOIN `Child` `c2` ON `g_1`.`ChildID` = `c2`.`ChildID` + 1
GROUP BY
	`g_1`.`ParentID`

