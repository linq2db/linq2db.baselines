﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`a_Parent`.`Value1`
FROM
	`Parent` `t1`
		INNER JOIN `Child` `a_Children` ON `t1`.`ParentID` = `a_Children`.`ParentID`
		LEFT JOIN `Parent` `a_Parent` ON `a_Children`.`ParentID` = `a_Parent`.`Value1`
WHERE
	`a_Parent`.`Value1` IS NULL
LIMIT 1

