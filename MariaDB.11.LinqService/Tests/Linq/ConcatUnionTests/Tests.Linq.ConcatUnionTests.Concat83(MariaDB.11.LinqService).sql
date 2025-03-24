﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ParentID`,
	Coalesce(`c_1`.`Value1`, 0)
FROM
	`Parent` `c_1`
UNION ALL
SELECT
	`c_2`.`ParentID`,
	`c_2`.`ChildID`,
	`c_2`.`ParentID` + 1
FROM
	`Child` `c_2`

