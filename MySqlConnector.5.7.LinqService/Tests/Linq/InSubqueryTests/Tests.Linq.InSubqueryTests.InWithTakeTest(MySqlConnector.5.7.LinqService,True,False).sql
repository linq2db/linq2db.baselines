﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
WHERE
	`c_1`.`ParentID` IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					`v`.`ParentID`
				FROM
					`Parent` `v`
				WHERE
					`v`.`ParentID` IS NOT NULL
				LIMIT 100
			) `t1`
		WHERE
			`c_1`.`ParentID` = `t1`.`ParentID`
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

