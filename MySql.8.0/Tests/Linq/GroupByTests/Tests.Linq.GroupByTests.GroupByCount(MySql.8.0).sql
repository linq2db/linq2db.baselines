﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Count(*)
FROM
	(
		SELECT
			`gr`.`ParentID` as `Key_1`
		FROM
			`Child` `gr`
		GROUP BY
			`gr`.`ParentID`
	) `t1`

