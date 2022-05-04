BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` > 0
ORDER BY
	`c_1`.`ParentID`
LIMIT 1

BeforeExecute
-- MySqlConnector MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ChildID` > -100
LIMIT 1

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySqlConnector MySql

SELECT
	1
FROM
	`Parent` `p`

