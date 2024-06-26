﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p`.`ParentID`,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`Child` `c_1`
			WHERE
				`p`.`ParentID` = `c_1`.`ParentID`
		)
			THEN 1
		ELSE 0
	END
FROM
	`Parent` `p`

