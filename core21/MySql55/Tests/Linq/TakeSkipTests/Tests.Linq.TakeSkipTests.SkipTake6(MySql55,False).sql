﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
		CROSS JOIN (
			SELECT
				`p`.`ParentID`
			FROM
				`GrandChild` `p`
			LIMIT 3
		) `t1`
WHERE
	`c_1`.`ParentID` = `t1`.`ParentID`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Child` `c_1`
		CROSS JOIN (
			SELECT
				`p`.`ParentID`
			FROM
				`GrandChild` `p`
			LIMIT 12, 3
		) `t1`
WHERE
	`c_1`.`ParentID` = `t1`.`ParentID`

