﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	(
		SELECT
			`a_Children`.`ParentID`
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
		LIMIT 1
	)
FROM
	`Parent` `p`
WHERE
	(
		SELECT
			`a_Children_1`.`ParentID`
		FROM
			`Child` `a_Children_1`
		WHERE
			`p`.`ParentID` = `a_Children_1`.`ParentID`
		LIMIT 1
	) IS NOT NULL

