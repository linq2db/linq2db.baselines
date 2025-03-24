﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`m_1`.`ParentID`,
	`d`.`ChildID`,
	`d`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `m_1`
		INNER JOIN `Child` `d` ON CAST(`m_1`.`ParentID` AS SIGNED) = `d`.`ParentID`

BeforeExecute
DisposeTransaction
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

