﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT /*+ JOIN_ORDER(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

