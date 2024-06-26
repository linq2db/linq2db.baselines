﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`b_1`.`Date_1`,
	COUNT(*)
FROM
	(
		SELECT
			Date(`b`.`DateTimeValue`) as `Date_1`
		FROM
			`LinqDataTypes` `b`
				INNER JOIN `Parent` `p` ON `b`.`ID` = `p`.`ParentID`
	) `b_1`
GROUP BY
	`b_1`.`Date_1`

