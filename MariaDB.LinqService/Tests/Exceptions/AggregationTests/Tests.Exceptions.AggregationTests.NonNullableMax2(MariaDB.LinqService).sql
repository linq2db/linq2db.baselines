﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	(
		SELECT
			Max(`_`.`ParentID`)
		FROM
			`Child` `_`
		WHERE
			`p`.`ParentID` = `_`.`ParentID` AND `_`.`ParentID` < 0
	)
FROM
	`Parent` `p`

