﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			`p`.`Value1`
		FROM
			`Parent` `p`
		LIMIT 1
	) as `Value1`

