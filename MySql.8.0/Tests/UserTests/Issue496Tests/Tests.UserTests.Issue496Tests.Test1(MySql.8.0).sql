﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`a_Children`.`ChildID`,
	`a_Children`.`ParentID`
FROM
	`Parent` `c_1`
		INNER JOIN `Child` `a_Children` ON `c_1`.`ParentID` = `a_Children`.`ParentID`
WHERE
	`c_1`.`ParentID` = 1

