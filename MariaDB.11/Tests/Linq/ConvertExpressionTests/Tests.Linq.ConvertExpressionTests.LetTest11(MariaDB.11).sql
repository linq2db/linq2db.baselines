﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	CASE
		WHEN `t1`.`cond` IS NULL THEN 0
		ELSE `t1`.`cond`
	END,
	(
		SELECT
			`c_2`.`ParentID`
		FROM
			`Child` `c_2`
		WHERE
			`c_2`.`ChildID` > -100
		ORDER BY
			`c_2`.`ParentID`
		LIMIT 1
	),
	(
		SELECT
			`c_3`.`ChildID`
		FROM
			`Child` `c_3`
		WHERE
			`c_3`.`ChildID` > -100
		ORDER BY
			`c_3`.`ParentID`
		LIMIT 1
	)
FROM
	(
		SELECT
			(
				SELECT
					`c_1`.`ParentID`
				FROM
					`Child` `c_1`
				WHERE
					`c_1`.`ParentID` > 0
				ORDER BY
					`c_1`.`ParentID`
				LIMIT 1
			) as `cond`,
			`p`.`ParentID`
		FROM
			`Parent` `p`
	) `t1`
ORDER BY
	`t1`.`ParentID`

