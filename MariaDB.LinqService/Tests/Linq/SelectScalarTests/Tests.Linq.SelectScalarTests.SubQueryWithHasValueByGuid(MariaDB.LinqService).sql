﻿BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
WHERE
	(
		SELECT
			`r`.`GuidValue`
		FROM
			`LinqDataTypes` `r`
		LIMIT @take
	) IS NOT NULL

