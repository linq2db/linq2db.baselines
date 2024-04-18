﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`,
	`p`.`GrandChildID`
FROM
	`GrandChild` `p`
		LEFT JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
WHERE
	(`a_Child`.`ParentID` = 1 AND `a_Child`.`ChildID` = 11 OR `a_Child`.`ParentID` = 2 AND `a_Child`.`ChildID` = 21)

