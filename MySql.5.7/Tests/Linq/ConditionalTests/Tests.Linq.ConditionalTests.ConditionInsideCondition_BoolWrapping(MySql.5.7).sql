﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	CASE
		WHEN `p`.`ParentID` % 2 = 0 THEN `p`.`ParentID` % 3 = 0
		WHEN `p`.`ParentID` % 4 = 0 THEN `p`.`ParentID` > 0
		ELSE `p`.`ParentID` < 5
	END
FROM
	`Parent` `p`

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

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
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

