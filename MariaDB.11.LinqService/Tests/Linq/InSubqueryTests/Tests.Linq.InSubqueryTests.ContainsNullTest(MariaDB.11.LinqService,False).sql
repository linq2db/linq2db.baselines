﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN NULL IN (
			SELECT
				`c_1`.`Value1`
			FROM
				`Parent` `c_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

