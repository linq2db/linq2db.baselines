﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`data_1`.`ParentID`,
	`data_1`.`ChildID`,
	MAX(`data_1`.`ChildID`)
FROM
	`Child` `data_1`
GROUP BY
	`data_1`.`ParentID`,
	`data_1`.`ChildID`

