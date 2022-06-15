BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`l`.`ParentID`
FROM
	`Child` `l`
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	1
FROM
	`Parent` `sep`

