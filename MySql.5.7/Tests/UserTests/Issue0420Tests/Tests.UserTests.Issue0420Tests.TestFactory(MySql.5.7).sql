﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`a_Children`.`ParentID`,
	`a_Children`.`ChildID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `a_Children` ON `p`.`ParentID` = `a_Children`.`ParentID`

