BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector MySql

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `sep`

