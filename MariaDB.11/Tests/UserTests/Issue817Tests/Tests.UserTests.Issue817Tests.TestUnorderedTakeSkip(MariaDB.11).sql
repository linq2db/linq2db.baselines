BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	`Person` `t1`
LIMIT @skip, @take

