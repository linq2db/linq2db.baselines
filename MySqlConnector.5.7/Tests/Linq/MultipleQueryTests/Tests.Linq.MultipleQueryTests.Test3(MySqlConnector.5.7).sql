﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

BeforeExecute
DisposeTransaction
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	1
FROM
	`Parent` `p`

