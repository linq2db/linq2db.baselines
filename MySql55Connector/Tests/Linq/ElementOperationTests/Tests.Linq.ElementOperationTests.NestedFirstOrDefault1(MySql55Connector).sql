BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`

