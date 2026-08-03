-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`row_1`.`Id`,
	CAST((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 864000000000)) / 864000000000 AS SIGNED),
	CAST((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 36000000000)) / 36000000000 % 24 AS SIGNED),
	CAST((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 600000000)) / 600000000 % 60 AS SIGNED),
	CAST((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 10000000)) / 10000000 % 60 AS SIGNED),
	CAST((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 10000)) / 10000 % 1000 AS SIGNED),
	CAST(`row_1`.`PreNotification` AS SIGNED),
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) / 864000000000,
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) / 36000000000,
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) / 600000000,
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000000,
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) / 10000,
	CAST((CAST(`row_1`.`PreNotification` AS SIGNED) - (CAST(`row_1`.`PreNotification` AS SIGNED) % 10)) / 10 % 1000 AS SIGNED),
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) * 100 % 1000 AS SIGNED),
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) / 10,
	CAST(CAST(`row_1`.`PreNotification` AS SIGNED) AS DOUBLE) * 100
FROM
	`Common_Topology_Locations` `row_1`
ORDER BY
	`row_1`.`Id`

