﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	AVG(`t1`.`ParentID`)
FROM
	`Parent` `t1`
WHERE
	`t1`.`ParentID` < 0

