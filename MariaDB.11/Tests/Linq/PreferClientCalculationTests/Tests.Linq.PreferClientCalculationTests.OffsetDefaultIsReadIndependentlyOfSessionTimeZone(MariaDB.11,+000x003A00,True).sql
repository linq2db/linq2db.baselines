-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SET time_zone = '+00:00'

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Extract(year from Coalesce(`j`.`Moment`, '0001-01-01'))
FROM
	`MissedMomentEntity` `e`
		LEFT JOIN `MissedMomentEntity` `j` ON `j`.`Id` = `e`.`Id` + 1000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SET time_zone = DEFAULT

