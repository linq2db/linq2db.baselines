BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
LIMIT @skip, @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT
	`x`.`DuplicateData`
FROM
	`OrderByDistinctData` `x`
GROUP BY
	`x`.`DuplicateData`
ORDER BY
	MAX(`x`.`OrderData1` % 3)
LIMIT @skip, @take

