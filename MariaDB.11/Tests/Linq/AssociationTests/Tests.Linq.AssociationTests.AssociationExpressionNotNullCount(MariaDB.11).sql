﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`NotNullParent` `p`
		INNER JOIN `NotNullChild` `a_ChildInner` ON `p`.`ID` = `a_ChildInner`.`ParentID`

