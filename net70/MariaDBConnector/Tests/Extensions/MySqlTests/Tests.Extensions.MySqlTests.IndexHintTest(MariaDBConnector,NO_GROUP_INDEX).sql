﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT /*+ NO_GROUP_INDEX(p parent_ix, parent2_ix) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`

