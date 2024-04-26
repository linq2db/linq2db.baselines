﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	`Child` `a_Children`,
	`Parent` `x`
		INNER JOIN `Child` `a_Children_1` ON `x`.`ParentID` = `a_Children_1`.`ParentID`
SET
	`a_Children`.`ChildID` = @ChildID
WHERE
	1 = 0 AND `a_Children_1`.`ParentID` = `a_Children`.`ChildID`

