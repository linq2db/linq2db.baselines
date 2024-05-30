BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 3

SELECT
	MIN(`t2`.`ParentID`)
FROM
	(
		SELECT
			`t1`.`ParentID`
		FROM
			`Parent` `t1`
		ORDER BY
			`t1`.`ParentID`
		LIMIT @take
	) `t2`

