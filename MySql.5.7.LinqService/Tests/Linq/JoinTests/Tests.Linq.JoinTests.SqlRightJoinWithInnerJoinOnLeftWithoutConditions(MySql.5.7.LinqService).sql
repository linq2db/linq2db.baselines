﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @id1 Int32
SET     @id1 = 1

SELECT
	`t1`.`ParentID`,
	`right_1`.`ParentID`
FROM
	(
		SELECT
			`p`.`Value1`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
		WHERE
			`p`.`ParentID` <> @id1
	) `t1`
		RIGHT JOIN (`Parent` `right_1`
			INNER JOIN `Parent` `right2` ON `right_1`.`Value1` = `right2`.`Value1` + 2)
		ON `right_1`.`Value1` + 2 = `t1`.`Value1` AND `right_1`.`Value1` IS NOT NULL AND `t1`.`Value1` IS NOT NULL OR `right_1`.`Value1` IS NULL AND `t1`.`Value1` IS NULL
ORDER BY
	`t1`.`ParentID`

