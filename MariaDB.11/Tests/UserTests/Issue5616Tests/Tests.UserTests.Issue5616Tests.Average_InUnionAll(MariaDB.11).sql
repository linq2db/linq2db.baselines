-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(0 AS DOUBLE)
FROM
	`Table1` `t1`
UNION ALL
SELECT
	AVG(`g_1`.`Id`)
FROM
	`Table2` `g_1`
GROUP BY
	`g_1`.`Id`

