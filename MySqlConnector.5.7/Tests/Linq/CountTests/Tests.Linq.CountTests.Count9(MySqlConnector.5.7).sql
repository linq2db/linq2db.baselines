﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	COUNT(*)
FROM
	`Child` `p`
		INNER JOIN `Parent` `a_Parent` ON `p`.`ParentID` = `a_Parent`.`ParentID`
WHERE
	`a_Parent`.`ParentID` = 1

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`a_Parent`.`ParentID`
FROM
	`Child` `ch`
		LEFT JOIN `Parent` `a_Parent` ON `ch`.`ParentID` = `a_Parent`.`ParentID`

