﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	`t2`.`ParentID`,
	`t2`.`Value1`
FROM
	(
		SELECT DISTINCT
			`t1`.`ParentID`,
			`t1`.`Value1`
		FROM
			`Parent` `t1`
	) `t2`
ORDER BY
	`t2`.`ParentID`
LIMIT @skip, @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

