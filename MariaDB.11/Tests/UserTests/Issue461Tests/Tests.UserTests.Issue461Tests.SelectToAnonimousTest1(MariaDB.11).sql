BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT @take

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `sep`

