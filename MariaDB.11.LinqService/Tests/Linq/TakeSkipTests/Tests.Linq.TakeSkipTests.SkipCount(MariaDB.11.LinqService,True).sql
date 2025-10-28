BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @skip Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			`Child` `t1`
		LIMIT @skip, 9223372036854775807
	) `t2`

