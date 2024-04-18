﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`GrandChildID`
FROM
	`GrandChild` `p`
		LEFT JOIN `Child` `a_Child` ON `p`.`ParentID` = `a_Child`.`ParentID` AND `p`.`ChildID` = `a_Child`.`ChildID`
		INNER JOIN `GrandChild` `c_1` ON `a_Child`.`ParentID` = `c_1`.`ParentID` AND `a_Child`.`ChildID` = `c_1`.`ChildID`
LIMIT @take

