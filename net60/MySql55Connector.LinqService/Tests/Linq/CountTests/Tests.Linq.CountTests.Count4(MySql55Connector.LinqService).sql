﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `t1`
	)
FROM
	`Parent` `p`

