﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		LEFT JOIN `Child` `ch` ON `p`.`ParentID` = `ch`.`ParentID` AND `ch`.`ParentID` > 0

