﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Max(`ch`.`ParentID`)
FROM
	`Child` `ch`
GROUP BY
	`ch`.`ParentID`

