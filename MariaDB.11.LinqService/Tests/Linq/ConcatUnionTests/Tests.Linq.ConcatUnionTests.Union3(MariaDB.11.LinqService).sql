﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`p`.`ParentID`,
	CAST(1 AS SIGNED)
FROM
	`Parent` `p`
UNION
SELECT
	`ch`.`ParentID`,
	CAST(0 AS SIGNED)
FROM
	`Child` `ch`

