﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT /*+ INDEX(p parent_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

