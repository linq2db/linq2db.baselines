﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
ORDER BY
	`x`.`ChildID` DESC,
	`x`.`ChildID` % 2

