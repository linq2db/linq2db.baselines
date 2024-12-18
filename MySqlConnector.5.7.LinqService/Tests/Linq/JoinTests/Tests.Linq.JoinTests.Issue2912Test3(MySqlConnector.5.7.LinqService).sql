﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN (
			SELECT
				`a_Children`.`ParentID`
			FROM
				`Child` `a_Children`
			WHERE
				`employee`.`ParentID` = `a_Children`.`ParentID`
			LIMIT 1
		) IS NOT NULL
			THEN (
			SELECT
				`a_Children_1`.`ChildID`
			FROM
				`Child` `a_Children_1`
			WHERE
				`employee`.`ParentID` = `a_Children_1`.`ParentID`
			LIMIT 1
		)
		ELSE 0
	END
FROM
	`Parent` `employee`
		LEFT JOIN `GrandChild` `names_1` ON `employee`.`ParentID` = `names_1`.`ParentID` AND `names_1`.`ParentID` IS NOT NULL

