﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	(
		SELECT
			`t1`.`ParentID`,
			`t1`.`ChildID`
		FROM
			`Child` `t1`
		LIMIT 2, 9223372036854775807
	) `t2`

