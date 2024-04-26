﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`p`.`ParentID`,
			`p`.`Value1`
		FROM
			`Parent` `p`
		UNION
		SELECT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
	) `t2`
WHERE
	`t2`.`ParentID` > 1

