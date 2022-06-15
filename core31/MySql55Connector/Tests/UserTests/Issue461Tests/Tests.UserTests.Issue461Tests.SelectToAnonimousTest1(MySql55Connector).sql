BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `sep`

