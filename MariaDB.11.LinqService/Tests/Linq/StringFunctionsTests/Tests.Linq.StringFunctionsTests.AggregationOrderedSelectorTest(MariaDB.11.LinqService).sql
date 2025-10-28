BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	GROUP_CONCAT(`g_1`.`Value1` ORDER BY `g_1`.`Value3`, `g_1`.`Value1` DESC SEPARATOR ' -> ')
FROM
	`SampleClass` `g_1`
GROUP BY
	`g_1`.`Id`,
	`g_1`.`Value1`

