﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT /*+ BKA(p) MAX_EXECUTION_TIME(1000) */
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE KEY FOR ORDER BY(IX_ChildIndex, IX_ChildIndex2)

