﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			`l`.`ParentID` + 1
		FROM
			`Child` `l`
		LIMIT 1
	),
	(
		SELECT
			`l_1`.`ParentID` + 1
		FROM
			`Child` `l_1`
		LIMIT 1
	)
FROM
	`Parent` `sep`

