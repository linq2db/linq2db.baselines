﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	1
FROM
	`Parent` `p`

