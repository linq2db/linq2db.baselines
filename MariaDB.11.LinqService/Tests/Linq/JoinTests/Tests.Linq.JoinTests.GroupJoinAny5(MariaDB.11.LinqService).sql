﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `c_1`
		WHERE
			`t1`.`ParentID` = `c_1`.`ParentID`
	)
FROM
	`Parent` `t1`

