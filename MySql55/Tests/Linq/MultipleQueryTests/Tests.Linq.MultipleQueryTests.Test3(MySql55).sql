﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	1
FROM
	`Parent` `p`

