﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Parent` `pp` ON `p`.`ParentID` = `pp`.`ParentID`
ORDER BY
	`p`.`ParentID` DESC

