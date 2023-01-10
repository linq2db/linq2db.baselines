﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 5

SELECT
	Cast(CURRENT_TIMESTAMP as Date),
	Count(*)
FROM
	`Parent` `v`
		INNER JOIN `Child` `s` ON `v`.`ParentID` = `s`.`ParentID`
WHERE
	`v`.`Value1` > 0
GROUP BY
	Cast(CURRENT_TIMESTAMP as Date)
LIMIT @take

