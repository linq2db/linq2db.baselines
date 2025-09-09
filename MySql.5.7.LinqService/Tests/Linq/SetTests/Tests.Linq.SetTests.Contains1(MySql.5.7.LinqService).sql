﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `param`
				LEFT JOIN `Parent` `a_Parent` ON `param`.`ParentID` = `a_Parent`.`ParentID`
		WHERE
			`a_Parent`.`ParentID` = `p`.`ParentID` AND (`a_Parent`.`Value1` = `p`.`Value1` OR `a_Parent`.`Value1` IS NULL AND `p`.`Value1` IS NULL)
	)
FROM
	`Parent` `p`

