﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			`l`.`ParentID` + 1
		FROM
			`Child` `l`
		LIMIT 1
	)
FROM
	`Parent` `sep`

