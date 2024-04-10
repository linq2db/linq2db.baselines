﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ParentID`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT DISTINCT
				`a_Children`.`ParentID`
			FROM
				`Child` `a_Children`
		) `t1` ON `p`.`ParentID` = `t1`.`ParentID`

