﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `j` ON `p`.`ParentID` = `j`.`ParentID`
WHERE
	`p`.`ParentID` = 1

