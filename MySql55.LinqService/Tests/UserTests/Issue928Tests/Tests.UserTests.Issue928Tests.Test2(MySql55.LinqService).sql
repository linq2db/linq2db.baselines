﻿BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`,
	`t1`.`ParentID`,
	`t1`.`Sum_1`
FROM
	`Parent` `p1`
		INNER JOIN (
			SELECT
				`p`.`ParentID`,
				Sum(`p`.`ParentID`) as `Sum_1`
			FROM
				`Parent` `p`
			WHERE
				`p`.`ParentID` IN (
					SELECT
						`ch`.`ParentID`
					FROM
						`Child` `ch`
				)
			GROUP BY
				`p`.`ParentID`
		) `t1` ON `t1`.`ParentID` = `p1`.`ParentID`

