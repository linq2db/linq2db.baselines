﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p_1`.`val`
FROM
	(
		SELECT
			`p`.`ParentID` as `id`,
			CAST(1 AS SIGNED) as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`ch`.`ParentID` as `id`,
			CAST(0 AS SIGNED) as `val`
		FROM
			`Child` `ch`
	) `p_1`

