﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`q1`.`GrandChildID`
FROM
	`Parent` `p`
		INNER JOIN `GrandChild` `q1` ON `p`.`ParentID` = `q1`.`ParentID`

