BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CAST(`v`.`Integer` AS DOUBLE) / 33,
	`v`.`Decimal` / 33,
	`v`.`Double` / 33
FROM
	`Issue4469Table` `v`
LIMIT 2

