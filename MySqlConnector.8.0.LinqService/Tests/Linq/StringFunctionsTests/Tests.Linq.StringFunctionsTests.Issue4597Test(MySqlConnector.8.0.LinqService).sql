﻿BeforeExecute
--  MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	(
		SELECT
			GROUP_CONCAT(CAST(`a_Children`.`ChildID` AS CHAR(11)) SEPARATOR ', ')
		FROM
			`Child` `a_Children`
		WHERE
			`s`.`ParentID` = `a_Children`.`ParentID`
	)
FROM
	`Parent` `s`

