﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @ChildID Int32
SET     @ChildID = 10

UPDATE
	`Child` `c_2`
		INNER JOIN `Parent` `x` ON `x`.`ParentID` = `c_2`.`ParentID`
		INNER JOIN `Child` `c_1` ON `c_2`.`ParentID` = `c_2`.`ChildID`
SET
	`c_2`.`ChildID` = @ChildID
WHERE
	1 = 0

