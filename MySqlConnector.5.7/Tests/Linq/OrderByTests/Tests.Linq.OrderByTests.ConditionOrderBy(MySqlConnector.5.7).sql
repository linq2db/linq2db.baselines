﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	CASE
		WHEN `t1`.`ParentID` > 0 AND `t1`.`ChildID` <> `t1`.`ParentID`
			THEN 1
		ELSE 0
	END DESC,
	`t1`.`ChildID`

