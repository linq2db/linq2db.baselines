﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ParentID`,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`t1`.`ParentID` = `c_1`.`ParentID`
		)
			THEN 1
		ELSE 0
	END
FROM
	`Parent` `t1`

