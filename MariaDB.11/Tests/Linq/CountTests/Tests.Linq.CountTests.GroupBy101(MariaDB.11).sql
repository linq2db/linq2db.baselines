﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

