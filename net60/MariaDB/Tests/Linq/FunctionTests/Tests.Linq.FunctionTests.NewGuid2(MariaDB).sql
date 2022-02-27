BeforeExecute
-- MariaDB MySql.Official MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	Uuid()
FROM
	`LinqDataTypes` `p`
LIMIT @take

