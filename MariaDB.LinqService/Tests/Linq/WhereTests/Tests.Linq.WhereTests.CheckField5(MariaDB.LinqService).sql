﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p`.`Value1` + 1,
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
WHERE
	`p`.`Value1` + 1 = 2 AND `p`.`ParentID` = 1

