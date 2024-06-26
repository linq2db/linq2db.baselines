﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`,
	`c_1`.`ParentID` + 1
FROM
	`Child` `c_1`
UNION ALL
SELECT
	`c_2`.`ParentID`,
	`c_2`.`ParentID`,
	Coalesce(`c_2`.`Value1`, 0)
FROM
	`Parent` `c_2`

