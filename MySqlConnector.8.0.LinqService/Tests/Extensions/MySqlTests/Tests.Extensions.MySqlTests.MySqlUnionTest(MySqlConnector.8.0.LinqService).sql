﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

(
	SELECT /*+ NO_BNL(p, c_2.c_1) */
		`p`.`ParentID`,
		`p`.`Value1`
	FROM
		`Parent` `p`
	FOR UPDATE
)
UNION
(
	SELECT
		`a_Parent`.`ParentID`,
		`a_Parent`.`Value1`
	FROM
		`Child` `p_1`
			LEFT JOIN `Parent` `a_Parent` ON `p_1`.`ParentID` = `a_Parent`.`ParentID`
	FOR UPDATE
)
UNION
(
	SELECT
		`t1`.`ParentID`,
		`t1`.`Value1`
	FROM
		`Parent` `t1`
			CROSS JOIN (
				SELECT
					1 as `c1`
				FROM
					`Child` `c_1`
				FOR UPDATE
			) `c_2`
	FOR UPDATE
)

