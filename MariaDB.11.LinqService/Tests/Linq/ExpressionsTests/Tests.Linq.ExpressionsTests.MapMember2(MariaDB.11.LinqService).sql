﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `c_1`
		WHERE
			`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ChildID` > 1
	)
FROM
	`Parent` `p`

