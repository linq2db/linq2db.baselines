﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `od`
		WHERE
			`t1`.`ParentID` = `od`.`ParentID`
	),
	(
		SELECT
			SUM(`od_1`.`ParentID`)
		FROM
			`Child` `od_1`
		WHERE
			`t1`.`ParentID` = `od_1`.`ParentID`
	)
FROM
	`Parent` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Parent` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x_1`.`ParentID`,
	`x_1`.`COUNT_1`,
	`x_1`.`SUM_1`
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `od`
				WHERE
					`x`.`ParentID` = `od`.`ParentID`
			) as `COUNT_1`,
			`x`.`ParentID`,
			(
				SELECT
					SUM(`od_1`.`ParentID`)
				FROM
					`Child` `od_1`
				WHERE
					`x`.`ParentID` = `od_1`.`ParentID`
			) as `SUM_1`
		FROM
			`Parent` `x`
	) `x_1`
WHERE
	`x_1`.`COUNT_1` > 0

