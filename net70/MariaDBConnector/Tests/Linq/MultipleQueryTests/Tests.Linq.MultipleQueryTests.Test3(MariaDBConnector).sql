BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`

