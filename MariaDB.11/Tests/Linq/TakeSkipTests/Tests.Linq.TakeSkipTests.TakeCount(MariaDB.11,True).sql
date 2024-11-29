BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Child` `t1`
		LIMIT @take
	) `t2`

