﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`ChildID`
FROM
	`Child` `p` IGNORE INDEX FOR JOIN(IX_ChildIndex, IX_ChildIndex2)

