﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` USE KEY FOR GROUP BY(IX_ChildIndex, IX_ChildIndex2)

