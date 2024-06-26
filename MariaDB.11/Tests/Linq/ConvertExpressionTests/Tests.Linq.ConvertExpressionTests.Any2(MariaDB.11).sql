﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Parent` `p`
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						`Child` `c_1`
					WHERE
						`p`.`ParentID` = `c_1`.`ParentID` AND `c_1`.`ParentID` > 1
				)
		)
			THEN 1
		ELSE 0
	END as `c1`

