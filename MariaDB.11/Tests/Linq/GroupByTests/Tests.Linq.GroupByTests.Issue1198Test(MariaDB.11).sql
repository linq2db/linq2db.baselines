-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`MyGroupedCount`
FROM
	(
		SELECT
			COUNT(CASE
				WHEN `g_1`.`Status` = 3 THEN 1
				ELSE NULL
			END) as `MyGroupedCount`
		FROM
			`Issue1192Table` `g_1`
		WHERE
			`g_1`.`MyOtherId` = 12
	) `t1`
LIMIT 1

