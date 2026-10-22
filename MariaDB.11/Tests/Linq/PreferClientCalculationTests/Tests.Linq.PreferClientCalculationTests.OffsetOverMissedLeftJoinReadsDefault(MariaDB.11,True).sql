-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`e`.`Id`,
	`j`.`Moment`,
	`e`.`Moment`
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Moment`
FROM
	`MissedMomentEntity` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

