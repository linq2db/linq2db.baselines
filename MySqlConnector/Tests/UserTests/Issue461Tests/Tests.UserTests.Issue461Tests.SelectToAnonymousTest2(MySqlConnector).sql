﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `sep`

