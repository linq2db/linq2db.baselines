BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`n`.`ParentID`
		FROM
			`Parent` `n`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`n`.`ParentID`
		FROM
			`Parent` `n`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`n`.`ParentID`
		FROM
			`Parent` `n`
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`n`.`ParentID`
FROM
	`Parent` `n`

