﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID` + 1 as `ParentID`,
			`t1`.`ChildID`
		FROM
			`GrandChild` `t1`
	) `t2`
GROUP BY
	`t2`.`ParentID`,
	`t2`.`ChildID`

