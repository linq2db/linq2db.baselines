﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` FORCE KEY FOR ORDER BY(IX_ChildIndex, IX_ChildIndex2)

