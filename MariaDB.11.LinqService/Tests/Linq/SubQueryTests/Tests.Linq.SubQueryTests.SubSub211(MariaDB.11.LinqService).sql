﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
				INNER JOIN `GrandChild` `g_1` ON `a_Children`.`ParentID` = `g_1`.`ParentID` AND `a_Children`.`ChildID` = `g_1`.`ChildID`
		WHERE
			`p1`.`ParentID` = `a_Children`.`ParentID` AND `g_1`.`ParentID` + 1 < `p1`.`ParentID` + 2 AND
			`g_1`.`ParentID` + 1 < `p1`.`ParentID` + 2
	)
FROM
	`Parent` `p1`
WHERE
	`p1`.`ParentID` > -1 AND `p1`.`ParentID` > -2

