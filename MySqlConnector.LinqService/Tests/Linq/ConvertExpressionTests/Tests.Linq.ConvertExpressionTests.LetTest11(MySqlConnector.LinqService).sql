﻿BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` > 0
ORDER BY
	`c_1`.`ParentID`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > -100
ORDER BY
	`c_1`.`ParentID`

BeforeExecute
-- MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`
ORDER BY
	`p`.`ParentID`

