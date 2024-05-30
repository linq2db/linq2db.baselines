﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID` AND `a_Children`.`ParentID` = `p`.`ParentID` AND
			CAST(`a_Children`.`ChildID` AS DECIMAL) <> 0
	)
FROM
	`Parent` `p`
WHERE
	`p`.`ParentID` <> 5

