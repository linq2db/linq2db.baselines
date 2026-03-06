-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_1`.`TestId`,
	COUNT(*)
FROM
	`TestTable` `g_1`
GROUP BY
	`g_1`.`TestId`
ORDER BY
	`g_1`.`TestId`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`TestId`
FROM
	`TestTable` `t1`

