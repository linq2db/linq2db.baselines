﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	@ParentID,
	@ChildID
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 1001

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DELETE   `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

