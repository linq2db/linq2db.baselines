﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			`t1`.`PersonID`
		FROM
			`Person` `t1`
		UNION
		SELECT
			`t2`.`ParentID` as `PersonID`
		FROM
			`Parent` `t2`
	) `t3`

