﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`Value1`
FROM
	`Parent` `c_1`
WHERE
	1 IN (
		SELECT
			`p`.`Value1`
		FROM
			`Parent` `p`
	)

