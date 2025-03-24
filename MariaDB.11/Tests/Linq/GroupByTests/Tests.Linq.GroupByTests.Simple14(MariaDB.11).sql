﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Detail`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN (
			SELECT
				`d`.`ParentID` as `Detail`
			FROM
				`Child` `d`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON `m_1`.`ParentID` = `d_1`.`Detail`

BeforeExecute
DisposeTransaction
BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

