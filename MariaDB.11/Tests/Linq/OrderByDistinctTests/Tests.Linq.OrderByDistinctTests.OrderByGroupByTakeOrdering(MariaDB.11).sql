-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @take Int32
SET     @take = 3

SELECT
	`g_1`.`OrderData1` * 100 + `g_1`.`OrderData2`,
	COUNT(*)
FROM
	`OrderByDistinctData` `g_1`
GROUP BY
	`g_1`.`OrderData1`,
	`g_1`.`OrderData2`
ORDER BY
	`g_1`.`OrderData1` * 100 + `g_1`.`OrderData2` DESC
LIMIT @take

