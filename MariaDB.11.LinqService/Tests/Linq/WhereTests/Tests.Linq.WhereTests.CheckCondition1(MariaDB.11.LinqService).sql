﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` = 1 AND `p`.`Value1` = 1 AND `p`.`Value1` IS NOT NULL OR
	`p`.`ParentID` = 2 AND `p`.`Value1` IS NOT NULL

