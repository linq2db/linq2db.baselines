﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	`p_2`.`val`
FROM
	(
		SELECT
			`p`.`ParentID` as `id`,
			CAST(1 AS SIGNED) as `val`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`p_1`.`ParentID` as `id`,
			CAST(0 AS SIGNED) as `val`
		FROM
			`Parent` `p_1`
		UNION
		SELECT
			`ch`.`ParentID` as `id`,
			CAST(0 AS SIGNED) as `val`
		FROM
			`Child` `ch`
	) `p_2`

