﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	(
		SELECT
			`p`.`Value1`
		FROM
			`Parent` `p`
		LIMIT 1
	) as `f1`

