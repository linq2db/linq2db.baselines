﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC,
	`t1`.`ParentID` + 1
LIMIT 3,9223372036854775807

