﻿BeforeExecute
--  MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @skip Int32
SET     @skip = 0
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	`x`.`DuplicateData`,
	`x`.`OrderData2`
FROM
	`OrderByDistinctData` `x`
ORDER BY
	`x`.`OrderData2` DESC
LIMIT @skip, @take

