﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CAST(0 AS SIGNED),
	`t1`.`ParentID`,
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	(
		SELECT
			(
				SELECT
					`a_Children`.`ParentID`
				FROM
					`Child` `a_Children`
				WHERE
					`p`.`ParentID` = `a_Children`.`ParentID`
				LIMIT 1
			) as `ParentID`,
			(
				SELECT
					`a_Children_1`.`ChildID`
				FROM
					`Child` `a_Children_1`
				WHERE
					`p`.`ParentID` = `a_Children_1`.`ParentID`
				LIMIT 1
			) as `ChildID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` = 1
	) `t1`
UNION ALL
SELECT
	CAST(1 AS SIGNED),
	NULL,
	NULL,
	NULL
FROM
	`Parent` `p_1`
WHERE
	`p_1`.`ParentID` <> 1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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
	) `m_1`
		INNER JOIN `Child` `d` ON `m_1`.`ParentID` = `d`.`ParentID`

BeforeExecute
DisposeTransaction
BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

