﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT /*+ BNL(p) BNL(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

