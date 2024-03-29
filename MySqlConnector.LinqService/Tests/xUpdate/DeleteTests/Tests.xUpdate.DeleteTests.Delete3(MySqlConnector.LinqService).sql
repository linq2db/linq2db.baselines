﻿BeforeExecute
-- MySqlConnector MySql

DELETE   `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` IN (1001, 1002)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
	1001
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
VALUES
(
	1,
	1002
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = 1

BeforeExecute
-- MySqlConnector MySql

DELETE   `c_1`
FROM
	`Child` `c_1`
		LEFT JOIN `Parent` `a_Parent` ON `c_1`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`ParentID` = 1 AND `c_1`.`ChildID` IN (1001, 1002)

BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` = 1

