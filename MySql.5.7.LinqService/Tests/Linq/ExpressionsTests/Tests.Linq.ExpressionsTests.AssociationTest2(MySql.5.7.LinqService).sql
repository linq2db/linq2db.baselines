﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`gc`.`ParentID`,
	`gc`.`ChildID`,
	`gc`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `gc` ON `p`.`ParentID` = `gc`.`ParentID`
WHERE
	`gc`.`ChildID` = 22

