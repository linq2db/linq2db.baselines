﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	EXISTS(
		SELECT
			`p`.`ParentID`
		FROM
			`Parent` `p`
		UNION ALL
		SELECT
			`p_1`.`ParentID`
		FROM
			`Parent` `p_1`
	) as `c1`

