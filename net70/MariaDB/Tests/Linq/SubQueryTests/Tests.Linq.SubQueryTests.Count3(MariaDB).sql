﻿BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`p_1`.`ParentID`,
	`p_1`.`Sum_1_1`
FROM
	(
		SELECT
			(
				SELECT
					Sum(`t`.`ParentID`)
				FROM
					`Child` `t`
				WHERE
					`p`.`ParentID` = `t`.`ParentID`
			) / 2 as `Sum_1`,
			`p`.`ParentID`,
			(
				SELECT
					Sum(`t`.`ParentID`)
				FROM
					`Child` `t`
				WHERE
					`p`.`ParentID` = `t`.`ParentID`
			) as `Sum_1_1`
		FROM
			`Parent` `p`
	) `p_1`
WHERE
	`p_1`.`Sum_1` > 1

