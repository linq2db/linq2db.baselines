﻿BeforeExecute
-- MySql

SELECT
	`t1`.`Date_1`,
	Count(*)
FROM
	(
		SELECT
			Cast(`selectParam`.`DateTimeValue` as Date) as `Date_1`
		FROM
			`LinqDataTypes` `selectParam`
				INNER JOIN `Parent` `p` ON `selectParam`.`ID` = `p`.`ParentID`
	) `t1`
GROUP BY
	`t1`.`Date_1`

