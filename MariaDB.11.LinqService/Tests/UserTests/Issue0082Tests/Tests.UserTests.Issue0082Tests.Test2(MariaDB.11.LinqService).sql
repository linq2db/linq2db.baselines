﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`o`.`ParentID`,
	(
		SELECT
			COUNT(*)
		FROM
			`Child` `a_Children`
		WHERE
			`o`.`ParentID` = `a_Children`.`ParentID`
	),
	(
		SELECT
			SUM(`a_Children_1`.`ParentID`)
		FROM
			`Child` `a_Children_1`
		WHERE
			`o`.`ParentID` = `a_Children_1`.`ParentID`
	)
FROM
	`Parent` `o`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Count(*)
FROM
	`Parent` `o`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x_1`.`ParentID`,
	`x_1`.`CountResult`,
	`x_1`.`SUM_1`
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `a_Children`
				WHERE
					`x`.`ParentID` = `a_Children`.`ParentID`
			) as `CountResult`,
			`x`.`ParentID`,
			(
				SELECT
					SUM(`a_Children_1`.`ParentID`)
				FROM
					`Child` `a_Children_1`
				WHERE
					`x`.`ParentID` = `a_Children_1`.`ParentID`
			) as `SUM_1`
		FROM
			`Parent` `x`
	) `x_1`
WHERE
	`x_1`.`CountResult` > 0

