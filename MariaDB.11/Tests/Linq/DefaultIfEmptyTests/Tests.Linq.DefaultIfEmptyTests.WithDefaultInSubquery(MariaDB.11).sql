﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		LEFT JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
DisposeTransaction
BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

