﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ChildID`
FROM
	`GrandChild` `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`ChildID`

