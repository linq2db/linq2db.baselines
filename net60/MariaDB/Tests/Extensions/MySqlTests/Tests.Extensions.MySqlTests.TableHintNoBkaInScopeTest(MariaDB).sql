﻿BeforeExecute
-- MariaDB MySql.Official MySql

SELECT /*+ NO_BKA(p) NO_BKA(c_1) */
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c_1` ON `p`.`ParentID` = `c_1`.`ParentID`

