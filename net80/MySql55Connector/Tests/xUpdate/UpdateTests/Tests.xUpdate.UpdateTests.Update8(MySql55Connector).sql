BeforeExecute
-- MySql55Connector MySqlConnector MySql
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
-- MySql55Connector MySqlConnector MySql
DECLARE @Value1 Int32
SET     @Value1 = 1002
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = @Value1
WHERE
	`t1`.`ParentID` = @ParentID

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @take Int32
SET     @take = 2

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = @ParentID
LIMIT @take

