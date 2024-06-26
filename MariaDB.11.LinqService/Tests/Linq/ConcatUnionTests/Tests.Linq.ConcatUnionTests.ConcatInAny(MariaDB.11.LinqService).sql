﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				`p`.`ParentID`
			FROM
				`Parent` `p`
			UNION ALL
			SELECT
				`p_1`.`ParentID`
			FROM
				`Parent` `p_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

