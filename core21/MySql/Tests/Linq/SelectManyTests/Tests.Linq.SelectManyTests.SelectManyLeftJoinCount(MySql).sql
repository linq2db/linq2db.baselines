﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Count(*)
FROM
	`Parent` `p`
		LEFT JOIN `Child` `o` ON `p`.`ParentID` = `o`.`ParentID`

