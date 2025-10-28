BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`,
	`x`.`OrderData1`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData1`
LIMIT @skip, @take

