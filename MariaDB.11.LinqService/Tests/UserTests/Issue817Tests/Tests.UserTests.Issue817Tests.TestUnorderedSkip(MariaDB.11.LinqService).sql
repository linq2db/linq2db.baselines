BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	COUNT(*)
FROM
	`Person` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @skip Int32
SET     @skip = 1

SELECT
	1
FROM
	`Person` `t1`
LIMIT @skip, 9223372036854775807

