﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

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
		INNER JOIN (
			SELECT
				`d`.`ParentID` as `Key_1`,
				GROUP_CONCAT(CAST(`d`.`ChildID` AS CHAR(11)) SEPARATOR ', ') as `ToValue`
			FROM
				`Child` `d`
			GROUP BY
				`d`.`ParentID`
		) `d_1` ON `m_1`.`ParentID` = `d_1`.`Key_1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`c_1`.`ParentID`
FROM
	`Parent` `c_1`

