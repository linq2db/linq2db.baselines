﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`r`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `r` ON `p`.`ParentID` = `r`.`ParentID`

