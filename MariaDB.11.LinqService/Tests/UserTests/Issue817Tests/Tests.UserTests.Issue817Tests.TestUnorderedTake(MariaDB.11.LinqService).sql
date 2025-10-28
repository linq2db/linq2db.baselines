BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`Person` `t1`
LIMIT @take

