﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`ch`.`ParentID`,
	`ch`.`ChildID`
FROM
	`Child` `ch`
ORDER BY
	`ch`.`ChildID` % 2 DESC,
	`ch`.`ChildID` DESC

