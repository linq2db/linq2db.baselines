-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	(
		SELECT 0 AS `Id`, 'Data 0' AS `Data`
		UNION ALL
		SELECT 1, 'Data 1') `t1`
ORDER BY
	`t1`.`Id`

