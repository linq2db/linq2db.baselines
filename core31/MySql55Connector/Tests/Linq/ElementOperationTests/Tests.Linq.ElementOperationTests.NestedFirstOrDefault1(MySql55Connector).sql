﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`

