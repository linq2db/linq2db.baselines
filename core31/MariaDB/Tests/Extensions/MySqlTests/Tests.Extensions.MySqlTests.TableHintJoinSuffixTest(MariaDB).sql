﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT /*+ JOIN_SUFFIX(p) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

