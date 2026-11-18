-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`g_2`.`Key_1`,
	COUNT(*)
FROM
	(
		SELECT
			NULL as `Key_1`
		FROM
			`NullableFlagTable` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Key_1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`A`,
	`t1`.`B`,
	`t1`.`C`,
	`t1`.`Flag`
FROM
	`NullableFlagTable` `t1`

