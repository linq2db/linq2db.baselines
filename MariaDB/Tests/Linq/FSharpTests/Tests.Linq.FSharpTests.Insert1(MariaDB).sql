﻿BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `c_1`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

BeforeExecute
-- MariaDB MySqlConnector MySql
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
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` = 1001

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE   `c_1`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > 1000

