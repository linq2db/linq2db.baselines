﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE KEY FOR ORDER BY(IX_ChildIndex, IX_ChildIndex2)

