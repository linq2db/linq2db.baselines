﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT /*+ JOIN_PREFIX(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

