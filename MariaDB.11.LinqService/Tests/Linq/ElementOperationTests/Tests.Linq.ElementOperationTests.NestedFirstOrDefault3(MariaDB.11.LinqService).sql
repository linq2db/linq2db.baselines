﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	(
		SELECT DISTINCT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `p`

