﻿BeforeExecute
--  MySql.5.7 MySql.5.7.MySql.Data MySql57

DELETE  
FROM
	`Parent`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Child` `a_Children`
		WHERE
			`Parent`.`ParentID` = `a_Children`.`ParentID`
	) AND
	`Parent`.`ParentID` > 100

