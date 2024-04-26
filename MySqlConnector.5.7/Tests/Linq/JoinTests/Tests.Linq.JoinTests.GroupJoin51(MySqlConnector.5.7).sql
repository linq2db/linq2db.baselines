BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		WHERE
			`t1`.`ParentID` = 1
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		WHERE
			`t1`.`ParentID` = 1
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`
ORDER BY
	`d`.`ChildID` DESC

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` = 1

