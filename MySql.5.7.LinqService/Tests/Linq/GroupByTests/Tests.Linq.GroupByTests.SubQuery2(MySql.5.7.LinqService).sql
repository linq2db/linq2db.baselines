﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

