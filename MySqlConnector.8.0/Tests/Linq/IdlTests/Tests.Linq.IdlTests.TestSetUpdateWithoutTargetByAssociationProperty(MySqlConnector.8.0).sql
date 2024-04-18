﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Parent`
(
	`ParentID`
)
VALUES
(
	20000
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

INSERT INTO `Child`
(
	`ChildID`,
	`ParentID`
)
VALUES
(
	10000,
	20000
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Value1 Int32
SET     @Value1 = 5

UPDATE
	`Parent` `t1`
		INNER JOIN `Child` `a_Parent` ON `a_Parent`.`ParentID` = `t1`.`ParentID`
SET
	`t1`.`Value1` = @Value1
WHERE
	`a_Parent`.`ChildID` = 10000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` = 10000

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 20000

