﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT DISTINCT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `p`

