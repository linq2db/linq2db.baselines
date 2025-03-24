﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			`ch`.`ParentID` + `p`.`ParentID` as `c1`
		FROM
			`Child` `ch`
				INNER JOIN `Parent` `p` ON `ch`.`ParentID` = `p`.`ParentID`
	) `t`
WHERE
	`t`.`c1` > 2

