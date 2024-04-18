﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @n Int32
SET     @n = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch`
		WHERE
			`ch`.`ParentID` < 2 AND
			`t1`.`ParentID` = `ch`.`ParentID` + 1 AND
			`t1`.`ChildID` = `ch`.`ChildID` AND
			`ch`.`ParentID` + 2 > @n
	)
FROM
	(
		SELECT
			`ch_1`.`ParentID` + 1 as `ParentID`,
			`ch_1`.`ChildID`
		FROM
			`Child` `ch_1`
		WHERE
			`ch_1`.`ParentID` + 2 > @n
	) `t1`
GROUP BY
	`t1`.`ParentID`,
	`t1`.`ChildID`

