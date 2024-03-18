﻿BeforeExecute
-- MySql MySql.Official MySql

SELECT DISTINCT
	`t1`.`ParentID`,
	`t1`.`ChildID`,
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Child` `t1`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			`Child` `p`
		WHERE
			`p`.`ParentID` = 3 AND `t1`.`ParentID` = `p`.`ParentID` AND
			`t1`.`ChildID` = `p`.`ChildID`
	)

