﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

