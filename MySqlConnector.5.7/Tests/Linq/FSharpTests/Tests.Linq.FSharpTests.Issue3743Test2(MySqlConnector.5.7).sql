﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	`p`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`cInfo`.`ParentID`,
	`cInfo`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`
		LEFT JOIN `Parent` `cInfo` ON `c_1`.`ParentID` = `cInfo`.`ParentID`
WHERE
	`p`.`ParentID` = 1

