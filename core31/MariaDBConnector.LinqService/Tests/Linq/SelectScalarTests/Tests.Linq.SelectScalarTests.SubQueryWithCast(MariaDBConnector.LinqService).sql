﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
WHERE
	(
		SELECT
			`r`.`Value1`
		FROM
			`Parent` `r`
		LIMIT 1
	) IS NOT NULL

