BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT @take

BeforeExecute
RollbackTransaction
BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`

