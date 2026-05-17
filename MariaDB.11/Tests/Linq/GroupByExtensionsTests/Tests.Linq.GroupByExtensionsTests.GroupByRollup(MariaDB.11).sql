-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_2`.`Id1`,
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			`g_1`.`Id1`,
			`g_1`.`Id2`,
			`g_1`.`Value` as `Value_1`
		FROM
			`GroupSampleClass` `g_1`
	) `g_2`
GROUP BY
	`g_2`.`Id1`,
	`g_2`.`Id2`
WITH ROLLUP

