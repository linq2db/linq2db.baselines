﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT /*+ NO_INDEX_MERGE(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

