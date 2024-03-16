﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`ParentID`,
	(
		SELECT
			Sum(`a_Children`.`ParentID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	) / 2
FROM
	`Parent` `p`
WHERE
	(
		SELECT
			Sum(`a_Children`.`ParentID`)
		FROM
			`Child` `a_Children`
		WHERE
			`p`.`ParentID` = `a_Children`.`ParentID`
	) / 2 > 1

