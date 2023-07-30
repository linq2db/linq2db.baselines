BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1010
DECLARE @Value1 Int32
SET     @Value1 = 1010

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
BeginTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

UPDATE
	`Parent` `t1`
SET
	`t1`.`Value1` = 1012
WHERE
	`t1`.`ParentID` = 1010

BeforeExecute
DisposeTransactionAsync
BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	`t`.`ParentID`,
	`t`.`Value1`
FROM
	`Parent` `t`
WHERE
	`t`.`ParentID` = 1010
LIMIT @take

