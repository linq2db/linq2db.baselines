﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
ORDER BY
	`x`.`ChildID` % 2 DESC,
	`x`.`ChildID` DESC

