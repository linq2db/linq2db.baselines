﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ParentID`
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

BeforeExecute
-- MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	`keyParam`.`ParentID`,
	`keyParam`.`ChildID`
FROM
	`Child` `keyParam`
WHERE
	`keyParam`.`ParentID` = @ParentID

