BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `sep`

