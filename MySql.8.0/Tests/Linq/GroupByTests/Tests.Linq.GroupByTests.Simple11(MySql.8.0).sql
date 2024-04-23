﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`ParentID`,
	`m_1`.`ChildID`,
	`d`.`ChildID`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID` + 1 as `ParentID`,
			`t1`.`ChildID`
		FROM
			`GrandChild` `t1`
	) `m_1`
		INNER JOIN `GrandChild` `d` ON (`m_1`.`ParentID` = `d`.`ParentID` + 1 OR `m_1`.`ParentID` IS NULL AND `d`.`ParentID` + 1 IS NULL) AND (`m_1`.`ChildID` = `d`.`ChildID` OR `m_1`.`ChildID` IS NULL AND `d`.`ChildID` IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t2`.`c1`,
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID` + 1 as `c1`,
			`t1`.`ChildID`
		FROM
			`GrandChild` `t1`
	) `t2`
GROUP BY
	`t2`.`c1`,
	`t2`.`ChildID`

