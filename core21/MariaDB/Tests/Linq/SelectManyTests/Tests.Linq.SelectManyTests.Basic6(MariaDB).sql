﻿BeforeExecute
-- MariaDB MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`
		INNER JOIN `Child` `_` ON `_`.`ParentID` > 0 AND `cp`.`ParentID` = `_`.`ParentID`

