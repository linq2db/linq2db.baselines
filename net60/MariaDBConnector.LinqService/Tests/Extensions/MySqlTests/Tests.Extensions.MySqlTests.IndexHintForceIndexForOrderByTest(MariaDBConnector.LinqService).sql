﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` FORCE INDEX FOR ORDER BY(IX_ChildIndex, IX_ChildIndex2)

