﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT /*+ JOIN_ORDER(p) JOIN_ORDER(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

