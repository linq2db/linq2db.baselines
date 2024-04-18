﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @n Int32
SET     @n = 0

SELECT
	`t1`.`ParentID`
FROM
	(
		SELECT
			`ch`.`ParentID` + 1 as `ParentID`
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` > @n
	) `t1`
GROUP BY
	`t1`.`ParentID`

