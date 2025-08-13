﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t_1`.`ParentID`,
	`t_1`.`count_1`
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `c_1`
				WHERE
					`t`.`ParentID` = `c_1`.`ParentID`
			) as `count_1`,
			`t`.`ParentID`
		FROM
			`Parent` `t`
	) `t_1`
WHERE
	`t_1`.`count_1` > 0

