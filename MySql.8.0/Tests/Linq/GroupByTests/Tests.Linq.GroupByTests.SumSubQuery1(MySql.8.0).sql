﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @n Int32
SET     @n = 1

SELECT
	SUM(`g_2`.`ParentID` - 3)
FROM
	(
		SELECT
			`g_1`.`ParentID` + 1 as `ParentID`,
			`g_1`.`ChildID`
		FROM
			`Child` `g_1`
		WHERE
			`g_1`.`ParentID` + 2 > @n
	) `g_2`
GROUP BY
	`g_2`.`ParentID`,
	`g_2`.`ChildID`

