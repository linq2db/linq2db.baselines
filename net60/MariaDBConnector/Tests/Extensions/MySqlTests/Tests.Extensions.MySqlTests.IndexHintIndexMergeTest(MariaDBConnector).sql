﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT /*+ INDEX_MERGE(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

