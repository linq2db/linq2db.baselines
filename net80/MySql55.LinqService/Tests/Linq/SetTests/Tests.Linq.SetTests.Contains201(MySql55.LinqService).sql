﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	CASE
		WHEN `p`.`ParentID` - 1 IN (
			SELECT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		)
			THEN 1
		ELSE 0
	END
FROM
	`Parent` `p`

