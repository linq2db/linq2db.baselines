BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`

