BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ParentID` > 1000

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
DECLARE @Value1 Int32
SET     @Value1 = 1001

INSERT INTO `Parent`
(
	`ParentID`,
	`Value1`
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @id Int32
SET     @id = 1001

INSERT INTO `Child`
(
	`ParentID`,
	`ChildID`
)
SELECT
	`p`.`ParentID`,
	`p`.`ParentID`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @id

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

