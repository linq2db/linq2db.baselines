﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

