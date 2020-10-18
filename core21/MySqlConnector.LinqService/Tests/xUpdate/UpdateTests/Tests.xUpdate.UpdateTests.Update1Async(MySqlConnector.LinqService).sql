BeforeExecute
-- MySqlConnector MySql (asynchronously)

DELETE `t1`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` > 1000

BeforeExecute
-- MySqlConnector MySql (asynchronously)
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
-- MySqlConnector MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	`Parent` `t1`
SET
	`t1`.`ParentID` = `t1`.`ParentID` + 1
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySqlConnector MySql (asynchronously)
DECLARE @p1 Int32
SET     @p1 = 1002

SELECT
	Count(*)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @p1

BeforeExecute
-- MySqlConnector MySql (asynchronously)

DELETE `t1`
FROM
	`Child` `t1`
WHERE
	`t1`.`ChildID` > 1000

