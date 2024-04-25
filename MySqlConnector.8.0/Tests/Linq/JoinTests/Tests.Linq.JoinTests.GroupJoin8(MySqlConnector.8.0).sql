﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `t2`
		LEFT JOIN LATERAL (
			SELECT
				`c_1`.`ParentID`,
				`c_1`.`ChildID`
			FROM
				`Child` `c_1`
			WHERE
				`t2`.`ParentID` = `c_1`.`ParentID`
			ORDER BY
				`c_1`.`ChildID`
			LIMIT 1
		) `t1` ON 1=1

