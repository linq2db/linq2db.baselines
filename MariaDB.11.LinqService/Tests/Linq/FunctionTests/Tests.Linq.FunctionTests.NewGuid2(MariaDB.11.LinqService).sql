BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	Uuid()
FROM
	`LinqDataTypes` `p`
LIMIT @take

