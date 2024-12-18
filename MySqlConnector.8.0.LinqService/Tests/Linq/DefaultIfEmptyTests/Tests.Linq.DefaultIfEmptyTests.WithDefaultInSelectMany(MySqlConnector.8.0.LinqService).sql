﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`s`.`ParentID`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `s`
		LEFT JOIN `Child` `c_1` ON `s`.`ParentID` = `c_1`.`ParentID`
WHERE
	`c_1`.`ChildID` < 0 AND `c_1`.`ChildID` IS NOT NULL AND `c_1`.`ParentID` IS NOT NULL OR
	`c_1`.`ParentID` IS NULL

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

