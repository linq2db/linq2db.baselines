﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ParentID`,
	`d`.`ParentID`,
	`d`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		LIMIT 1
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `t1`
LIMIT 1

BeforeExecute
DisposeTransaction
