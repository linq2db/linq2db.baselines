﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`m_1`.`ParentID`,
	`d_1`.`Key_1`,
	`d_1`.`ToValue`
FROM
	(
		SELECT DISTINCT
			`c_1`.`ParentID`
		FROM
			`Parent` `c_1`
	) `m_1`
		INNER JOIN LATERAL (
			SELECT
				`d`.`ParentID` as `Key_1`,
				GROUP_CONCAT(CAST(`d`.`ChildID` AS CHAR(255)) SEPARATOR ', ') as `ToValue`
			FROM
				`Child` `d`
			WHERE
				`m_1`.`ParentID` = `d`.`ParentID`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON 1=1

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`c_1`.`ParentID`
FROM
	`Parent` `c_1`

