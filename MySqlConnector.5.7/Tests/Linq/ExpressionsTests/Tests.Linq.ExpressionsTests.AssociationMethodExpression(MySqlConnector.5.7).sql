﻿BeforeExecute
--  MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
				INNER JOIN `GrandChild` `a_GrandChildren` ON `a_Children`.`ParentID` = `a_GrandChildren`.`ParentID` AND `a_Children`.`ChildID` = `a_GrandChildren`.`ChildID`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `p`

