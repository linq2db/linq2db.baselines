﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

WITH RECURSIVE `CTE_1` (`ChildID`)
AS
(
	SELECT
		`c_1`.`ChildID`
	FROM
		`Child` `c_1`
),
`CTE_2` (`ChildID`)
AS
(
	SELECT DISTINCT
		`t1`.`ChildID`
	FROM
		`CTE_1` `t1`
),
`CTE_3` (`ChildID`)
AS
(
	SELECT DISTINCT
		`t2`.`ChildID`
	FROM
		`CTE_2` `t2`
),
`CTE_4` (`ChildID`)
AS
(
	SELECT DISTINCT
		`t3`.`ChildID`
	FROM
		`CTE_3` `t3`
)
SELECT
	`w`.`ParentID`,
	`w`.`ChildID`
FROM
	`Child` `w`
WHERE
	`w`.`ChildID` NOT IN (
		SELECT
			`t4`.`ChildID`
		FROM
			`CTE_4` `t4`
	)

