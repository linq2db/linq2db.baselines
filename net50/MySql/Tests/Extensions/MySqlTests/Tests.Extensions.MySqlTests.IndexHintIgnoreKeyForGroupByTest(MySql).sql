﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE KEY FOR GROUP BY(IX_ChildIndex, IX_ChildIndex2)

