﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
WHERE
	(
		SELECT
			CASE
				WHEN `r`.`Value1` IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			`Parent` `r`
		LIMIT 1
	) = 1

