﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				1 = `c_1`.`ParentID`
		)
			THEN 1
		ELSE 0
	END as `c1`

