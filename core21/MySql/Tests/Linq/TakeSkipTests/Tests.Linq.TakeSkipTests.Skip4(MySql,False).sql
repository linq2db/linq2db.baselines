﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
ORDER BY
	`t1`.`ChildID` DESC
LIMIT 3,9223372036854775807

