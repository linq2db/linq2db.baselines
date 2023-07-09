﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`c_1`.`Value1`
			FROM
				`Parent` `c_1`
			WHERE
				`c_1`.`Value1` IS NULL
		)
			THEN 1
		ELSE 0
	END as `c1`

