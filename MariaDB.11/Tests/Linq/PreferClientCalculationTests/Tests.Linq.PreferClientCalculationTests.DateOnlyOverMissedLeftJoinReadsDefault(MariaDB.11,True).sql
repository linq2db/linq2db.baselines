-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	`j`.`Day`,
	`e`.`Day`
FROM
	`MissedDayEntity` `e`
		LEFT JOIN `MissedDayEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Day`
FROM
	`MissedDayEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Extract(year from Coalesce(`j`.`Day`, '0001-01-01'))
FROM
	`MissedDayEntity` `e`
		LEFT JOIN `MissedDayEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

