﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				`Child` `c_1`
			WHERE
				`p`.`ParentID` = `c_1`.`ParentID`
		)
			THEN 1
		ELSE 0
	END
FROM
	`Parent` `p`

