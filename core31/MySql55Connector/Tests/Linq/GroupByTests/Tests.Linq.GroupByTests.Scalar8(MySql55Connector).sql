﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Max(`id`.`ChildID`)
FROM
	`Child` `id`
GROUP BY
	`id`.`ParentID`

