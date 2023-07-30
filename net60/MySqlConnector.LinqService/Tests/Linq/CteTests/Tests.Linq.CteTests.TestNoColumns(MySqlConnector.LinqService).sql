﻿BeforeExecute
-- MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Child` `t1`

BeforeExecute
-- MySqlConnector MySql

WITH `CTE1_` (`ParentID`, `ChildID`)
AS
(
	SELECT
		`t1`.`ParentID`,
		`t1`.`ChildID`
	FROM
		`Child` `t1`
)
SELECT
	Count(*)
FROM
	`CTE1_` `t2`

BeforeExecute
-- MySqlConnector MySql

WITH `CTE1_` (`ChildID`)
AS
(
	SELECT
		`c_1`.`ChildID`
	FROM
		`Child` `c_1`
)
SELECT
	Count(*)
FROM
	`CTE1_` `t1`

BeforeExecute
-- MySqlConnector MySql

WITH `CTE1_` (`ChildID`)
AS
(
	SELECT
		`c_1`.`ChildID` as `C_1`
	FROM
		`Child` `c_1`
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				`CTE1_` `t1`
		)
			THEN 1
		ELSE 0
	END as `c1`

