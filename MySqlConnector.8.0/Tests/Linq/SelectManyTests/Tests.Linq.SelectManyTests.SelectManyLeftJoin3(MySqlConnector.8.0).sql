﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `t1` ON 1=1
WHERE
	`p`.`ParentID` = `t1`.`ParentID`

