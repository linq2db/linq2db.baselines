﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t2`.`Key_1`,
	COUNT(*)
FROM
	(
		SELECT
			1 as `Key_1`
		FROM
			`Person` `t1`
		WHERE
			1 = 0
	) `t2`
GROUP BY
	`t2`.`Key_1`

