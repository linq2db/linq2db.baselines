BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`g_1`.`Id`,
	SUM(`g_1`.`Id`)
FROM
	(SELECT CAST(NULL AS SIGNED) `Id` WHERE 1 = 0) `g_1`
GROUP BY
	`g_1`.`Id`

