﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Max(`t1`.`ChildID`),
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch`
		WHERE
			`t1`.`ParentID` = `ch`.`ParentID` AND `ch`.`ChildID` > 20
	),
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch_1`
		WHERE
			`t1`.`ParentID` = `ch_1`.`ParentID` AND `ch_1`.`ChildID` > 20
	),
	(
		SELECT
			Count(*)
		FROM
			`Child` `ch_2`
		WHERE
			`t1`.`ParentID` = `ch_2`.`ParentID` AND `ch_2`.`ChildID` > 10
	)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

