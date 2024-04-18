﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`GrandChildID`
FROM
	`Child` `cp`
		LEFT JOIN `Parent` `a_Parent` ON `cp`.`ParentID` = `a_Parent`.`ParentID`
		INNER JOIN `GrandChild` `c_1` ON `a_Parent`.`ParentID` = `c_1`.`ParentID`

