﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`c_1`.`ParentID` = `p`.`ParentID` - 1
	)
FROM
	`Parent` `p`

