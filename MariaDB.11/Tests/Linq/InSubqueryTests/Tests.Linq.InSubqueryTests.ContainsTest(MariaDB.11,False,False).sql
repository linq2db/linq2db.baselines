﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				`c_1`.`ParentID`
			FROM
				`Child` `c_1`
		)
			THEN 1
		ELSE 0
	END as `c1`

