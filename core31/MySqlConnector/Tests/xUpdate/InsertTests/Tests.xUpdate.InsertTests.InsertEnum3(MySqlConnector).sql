BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

