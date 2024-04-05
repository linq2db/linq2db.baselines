﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`g_2`.`ParentID`,
	SUM(`g_2`.`Max_1`)
FROM
	(
		SELECT
			`g_1`.`ParentID`,
			MAX(`g_1`.`Value1`) as `Max_1`
		FROM
			`Parent` `g_1`
		WHERE
			`g_1`.`Value1` IS NOT NULL
		GROUP BY
			`g_1`.`ParentID`
	) `g_2`
GROUP BY
	`g_2`.`ParentID`

